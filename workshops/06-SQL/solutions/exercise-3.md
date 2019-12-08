# 06 - Workshop SQL

## Oplossingen 3 - Combineren
1. Geef een overzicht (naam, soortnaam en hoogte) van alle waterplanten, gesorteerd op hoogte 
    ```sql
    SELECT naam, soort, hoogte 
    FROM planten JOIN soorten ON planten.soortID = soorten.soortID  
    WHERE soort='water' 
    ORDER BY hoogte  
    ```

2. Geef een overzicht van de planten gesorteerd op soort en vervolgens op naam die noch boom, noch heester zijn en waarvan de hoogte tussen de 100 en de 200 cm, de kleur rood of blauw is en de bloeiperiode begint voor augustus. 
    ```sql
    SELECT * 
    FROM planten  
        JOIN kleuren ON kleuren.kleurid = planten.kleurid 
        JOIN soorten ON planten.soortid = soorten.soortid 
    WHERE (NOT soort IN ('boom', 'heester')) 
    AND (hoogte BETWEEN 100 AND 200) AND (kleur IN ('rood', 'blauw')) AND (bl_b < 8) 
    ORDER BY  soort, naam 
    ```

3. Welke is de laagste prijs per plantensoort van de planten die de volledige periode van mei tot en met juni bloeien. De bloei mag beginnnen voor mei en eindigen na juni.
    ```sql
    SELECT soort, MIN(prijs) 
    FROM planten JOIN soorten ON soorten.soortid = planten.soortid 
    WHERE (bl_b<=5 AND bl_e>=6)  
    GROUP BY soort 
    ```

4. Toon de verschillende plantsoorten waarvoor rode planten beschikbaar zijn.
    ```sql
    SELECT soort 
    FROM soorten 
        JOIN planten ON soorten.soortID = planten.soortID 
        JOIN kleuren ON kleuren.kleurID = planten.kleurID 
    WHERE kleur='rood' 
    GROUP BY soort 
    ```
 
5. Geef een overzicht per soort en per kleur van het aantal verschillende planten
    ```sql
    SELECT soort, kleur, COUNT(*) 
    FROM planten 
        JOIN kleuren ON kleuren.kleurid = planten.kleurid 
        JOIN soorten ON planten.soortid = soorten.soortid 
    GROUP BY soort,kleur 
    ```
     - Opm: indien in resultaat ook aantal 0 bij soort/kleur combinaties waarbij er geen planten zijn… 

    ```sql
    SELECT soort, kleur, count(artCode) as 'aantal planten' 
    FROM soorten s cross join kleuren k  
        LEFT JOIN planten p on p.kleurId = k.kleurId and p.soortID = s.soortID 
    GROUP BY soort, kleur 
    ```

6. Toon per leverancier (naam) het aantal artikelen die hij binnen de 18 dagen kan leveren.  
    ```sql
    SELECT naam, COUNT(*) AS 'Aantal artikelen' 
    FROM leveranciers L 
        JOIN offertes O ON O.levcode=L.levcode 
    WHERE levertermijn <= 18 
    GROUP BY naam 
    ```

7. Geef per leverdatum in het formaat dd/mm/yyyy en per bestelbon de naam van de leverancier, het totaal aantal artikelen besteld, en de som van het aantal maal de prijs per besteld artikel. 
    ```sql
    SELECT convert(leverdatum,char(10)), B.bestelnr, naam, SUM(aantal) AS 'totaal aantal', SUM(aantal*prijs) AS 'bedrag' 
    FROM bestellingen B  
        JOIN leveranciers L ON B.levCode = L.levcode 
        JOIN bestellijnen BL ON B.bestelnr = BL.bestelnr 
    GROUP BY leverdatum, B.bestelnr, naam 
    ```
    - Eigenlijke oplossing via DATE_FORMAT: 
    ```sql 
    SELECT DATE_FORMAT(leverdatum, '%d/%m/%Y'), B.bestelnr, naam, SUM(aantal) AS 'totaal aantal', SUM(aantal*prijs) AS 'bedrag' 
    FROM bestellingen B  
        JOIN leveranciers L ON B.levCode = L.levcode 
        JOIN bestellijnen BL ON B.bestelnr = BL.bestelnr 
    GROUP BY leverdatum, B.bestelnr, naam 
    ```

8. Selecteer de verschillende woonplaatsen van de leveranciers die een offerte gemaakt hebben voor 'vaste' planten 
    ```sql
    SELECT DISTINCT woonplaats 
    FROM planten P  
        JOIN offertes O ON P.artCode = O.artCode 
        JOIN leveranciers L ON L.levCode = O.levCode 
        JOIN soorten S ON P.soortID = S.soortID 
    WHERE soort = 'vast' 
    ```

9. Geef per artikelcode de naam van de plant, laagste offerteprijs, de hoogste offerteprijs. Sorteer op plantnaam. 
    ```sql
    SELECT P.artCode, naam, MIN(offerteprijs) AS 'min prijs', MAX(offerteprijs) AS 'max prijs' 
    FROM planten P 
        JOIN offertes O ON P.artCode = O.artCode 
    GROUP BY P.artCode, naam 
    ORDER BY  naam 
    ```

10. Geef een overzicht van alle bestellingen : bestelnr, leverdatum in het formaat dd/mm/yyyy, bedrag. Voeg een laatste kolom 'opmerking' toe. Indien de besteldatum > 5 maart 2003 dan moet in de laatste kolom de opmerking 'te laat' komen, anders komt in de laatste kolom geen opmerking  
    - met Union: 
    ```sql
    SELECT bestelnr, DATE_FORMAT(leverdatum, '%d/%m/%Y'), bedrag, DATE_FORMAT(besteldatum, '%d/%m/%Y'), 'te laat' AS opmerking 
    FROM bestellingen 
    WHERE besteldatum > '2003-03-05' 

    UNION 

    SELECT bestelnr, DATE_FORMAT(leverdatum, '%d/%m/%Y'), bedrag, DATE_FORMAT(besteldatum, '%d/%m/%Y'), '  ' AS opmerking 
    FROM bestellingen 
    WHERE besteldatum <= '2003-03-05' 
    ORDER BY bestelnr 
    ```
    - met case: 
    ```sql
    SELECT bestelnr, DATE_FORMAT(leverdatum, '%d/%m/%Y'), DATE_FORMAT(besteldatum, '%d/%m/%Y'), bedrag,  
    case when besteldatum > '2003-03-05' then 'te laat'  
    Else '  ' 
    End AS opmerking 
    From bestellingen 
    ```

11. Geef per leverancier het aantal verschillende soorten planten waarvoor hij een offerte heeft gemaakt. Sorteer op dalende volgorde van aantal. 
    ```sql
    SELECT L.naam, COUNT(DISTINCT soortid) as aantal 
    FROM leveranciers L  
        JOIN offertes O ON L.levCode = O.levCode 
        JOIN  planten P ON O.artCode = P.artcode 
    GROUP BY L.naam 
    ORDER BY aantal DESC 
    ```
    - Indien aantal 0 ook in resultaat moet komen: 
    ```sql
    SELECT l.naam, count(distinct s.soortId) as 'aantal verschillende soorten planten' 
    FROM leveranciers l left join offertes o on l.levCode = o.levCode  
    LEFT JOIN planten p on o.artCode = p.artCode 
    LEFT JOIN soorten s on s.soortId = p.soortId 
    GROUP BY l.naam 
    ORDER BY count(distinct s.soortId) DESC 
    ```

12. Geef per leverancier de verschillende soorten planten waarvoor hij een offerte heeft ingediend 
    ```sql
    SELECT DISTINCT L.naam, soort 
    FROM leveranciers L  
        JOIN offertes O ON L.levCode = O.levcOde 
        JOIN planten P ON O.artCode = P.artcode 
        JOIN soorten S ON S.soortID = P.soortID 
    ```

13. Toon een lijst van alle vaste planten, gevolgd door de namen van de vaste planten die later op het jaar beginnen te bloeien. Toon de vaste planten die eerst beginnen bloeien bovenaan. 
    ```sql
    SELECT p1.naam, p1.bl_b, p2.naam, P2.bl_b 
    FROM planten p1 JOIN planten P2 ON P1.bl_b < p2.bl_b 
        JOIN soorten S1 ON p1.soortid =S1.soortid 
        JOIN soorten S2 ON p2.soortid = S2.soortid 
    WHERE S1.soort='vast' AND S2.soort='vast' 
    ORDER BY p1.bl_b 
    ```
14. Hoeveel verschillen de gehanteerde bestelprijzen met de huidige offerteprijzen bij dezelfde leverancier. Toon telkens bestelnummer, artikelcode en het positieve of negatieve verschil. 
    ```sql
    SELECT b.bestelnr, o.artcodeLev, (prijs - offerteprijs) AS verschil 
    FROM bestellingen b 
        JOIN offertes o ON b.levcode = o.levcode 
        JOIN bestellijnen bl ON bl.bestelnr = b.bestelnr 
    ```
15. Toon een lijst met bestelnummers, leverancierscode en besteldatum en zorg ervoor dat de de lijst ook de leveranciers bevat waarvoor nog geen bestelling geplaatst werd. 
    ```sql
    SELECT bestelnr, b.levcode, naam,besteldatum 
    FROM leveranciers L 
        LEFT JOIN bestellingen B  ON L.levcode = B.levcode 
    ```

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
