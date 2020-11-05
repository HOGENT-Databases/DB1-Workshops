# 06 - Workshop SQL : Dranken

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-dranken.jpg" alt="Diagram Dranken.db">
</p>

> Meer informatie over de databank kan je [hier](structure.md) vinden.

## Oplossingen 3 - Combineren

1. Tot welke unie behoort Wijnhuis Tinto? Geef de naam van de unie en het oprichtingsjaar.
    > Gentse Wijnunie, 1963
    ```sql
    SELECT u.naam, oprichtingsjaar
    FROM unie u 
        JOIN klant k ON u.toelatingsnr = k.unie
    WHERE k.naam = ‘Wijnhuis Tinto’;
    ```
    > Merk op dat `JOIN` en `INNER JOIN` hetzelfde is.
2. Aan wie is op 29 juni 2017 een factuur verstuurd? Geef naam, adres, postcode en plaats. 
    > 3 records
    ```sql
    SELECT a.naam, a.adres, a.postcode, a.plaats 
    FROM klant a 
        JOIN factuur f ON a.klantnr=f.klantnr
    WHERE f.factuurdatum='2017-06-29 00:00:00';
    ```
3. Welke whisky’s hebben een alcoholpercentage hoger dan 40? Geef productnaam, soortnummer en naam. 
    > 4 records
    ```sql
    SELECT	p.productnaam, s.soortnr, s.naam
    FROM	soort s 
        JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE p.productnaam='Whisky' AND s.alcoholperc>40;
    ```
4. Aan wie werden één of meer flessen Saint Véran gefactureerd? Toon het factuurnummer, het klantnummer, de naam van de klant en het aantal
    > 2 records
    ```sql
    SELECT	f.factuurnr, f.klantnr, k. naam, fr.aantal
    FROM	factuur f 
        JOIN klant k ON f.klantnr=k.klantnr
        JOIN factuurregel fr ON f.factuurnr=fr.factuurnr 
            JOIN artikel a ON fr.artikelnr=a.artikelnr
            JOIN soort s ON a.soortnr=s.soortnr
    WHERE s.naam= 'Saint Véran';
    ```
5. Welke wijnen uit het jaar 2008 hebben we in het assortiment? Toon naam, inhoud en adviesverkoopprijs. 
    > 4 records
    ```sql
    SELECT	s.naam, a.inhoud, a.adviesverkoopprijs
    FROM	artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
            JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE p.productnaam='Wijn' AND a.jaar=2008;
    ```
6. Toon alle artikelen uit de productgroepen Grappa, Cava, Gin en Sherry. 
    > 13 records
    ```sql
    SELECT	a.*
    FROM	artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
            JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE p.productnaam IN ('Grappa', 'Cava', 'Gin', 'Sherry');
    ```
7. Welke artikelen werden verkocht onder de adviesverkoopprijs? Geef artikelnummer,soortnummer en productnaam.
    > 35 records
    ```sql
    SELECT a.artikelnr, s.soortnr, p.productnaam
    FROM artikel a  
        JOIN factuurregel f ON a.artikelnr=f.artikelnr
        JOIN soort s ON a.soortnr = s.soortnr
            JOIN productgroep p ON s.productgroepnr = p. productgroepnr
    WHERE a.adviesverkoopprijs > verkoopprijs/aantal;
    ```
8. Geef het artikelnummer en het soortnummer van deze artikelen die voorkomen op een factuurregel maar geen voorraad hebben, of waarvan de voorraad niet geweten is.
    > 1 record: artikelnr 10854
    ```sql
    SELECT	a.artikelnr, s.naam
    FROM	artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
        JOIN factuurregel f ON a.artikelnr=f.artikelnr
    WHERE voorraad IS NULL OR voorraad = 0;
    ```
9. Geef een overzicht van namen van de klanten voor wie op 29 of 30 juni 2017 een factuur werd opgemaakt. Toon factuurnummer, factuurdatum en naam op volgorde van naam. 
    > 5 records,factuurnummer 173108 is de eerste
    ```sql
    SELECT	f.factuurnr, f.factuurdatum, a.naam
    FROM	factuur f 
        JOIN klant a ON f.klantnr=a.klantnr
    WHERE	 f.factuurdatum BETWEEN '2017-06-29' AND '2017-06-30'
    ORDER BY naam;
    ```
10. Welke rode wijnen kunnen geleverd worden? Toon de naam, de flesinhoud en de adviesverkoopprijs. De duurste fles moet als eerste getoond worden. 
    > 17 records, Rioja Crianza Sierra is de eerste
    ```sql
    SELECT	s.naam, a.inhoud, a.adviesverkoopprijs
    FROM	artikel a 
        JOIN soort s ON a.soortnr=s.soortnr 
            JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE kleur='Rood' AND productnaam='Wijn'
    ORDER BY adviesverkoopprijs DESC;
    ```
    > Aangezien enkel wijnen een kleur `Rood` hebben kan het ook als volgt:
    ```sql
    SELECT	s.naam, a.inhoud, a.adviesverkoopprijs
    FROM	artikel a 
        JOIN soort s ON a.soortnr=s.soortnr 
    WHERE kleur='Rood' 
    ORDER BY adviesverkoopprijs DESC;
    ```
11. Geef een alfabetisch overzicht van de namen van alle klanten en de naam van de voorzitter van de unie waarbij ze aangesloten. Ook klanten die nog niet bij een unie zijn aangesloten moeten in het overzicht voorkomen. 
    > 17 records
    ```sql
    SELECT	k.naam, u.voorzitter
    FROM	klant k 
        LEFT JOIN unie u ON k.unie=u.toelatingsnr 
    ORDER BY k.naam;
    ```
12. Geef de top 3 goedkoopste wijnen (artikelnummer, jaar en adviesverkoopprijs)
    > Tip: Zoek zelf eens de `LIMIT` clause voor MySQL op.
    > artikelnummers: 10844, 10859 en 10848
    ```sql
    SELECT a.artikelnr, a.jaar, a.adviesverkoopprijs 
    FROM artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
        JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE p.productnaam='Wijn' AND a.adviesverkoopprijs IS NOT NULL
    ORDER BY a.adviesverkoopprijs 
    LIMIT 3;
    ```
13. Toon de 3 artikelen van het type 'Cava' met de grootste voorraad (artikelnummer en voorraad Dalend gesorteerd).
    > 3 records met voorraad tussen 177 en 20 stuks
    ```sql
    SELECT a.artikelnr, a.opvoorraad 
    FROM artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
        JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE productnaam = 'Cava'
    ORDER BY voorraad DESC
    LIMIT 3;
    ```
14. Wat is de gemiddelde adviesverkoopprijs van de wijnen uit het jaar 2012? Geef een duidelijke hoofding. 
    > €35,20
    ```sql
    SELECT AVG(adviesverkoopprijs) AS Gemiddelde 
    FROM artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
            JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE p.productnaam='Wijn' AND a.jaar=2012;
    ```
15. Wat is de prijs van de duurste witte wijn?
    > €90,50
    ```sql
    SELECT MAX(a.adviesverkoopprijs) AS 'Duurste'
    FROM artikel a 
        JOIN soort s ON a.soortnr=s.soortnr 
        JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE p.productnaam='Wijn' AND s.kleur='Wit';
    ```
16. Toon het kleinste aantal flessen Whisky op voorraad. Geef hiervan de soortnaam. 
    > Avoca, 1
    ```sql
    SELECT s.naam, a.voorraad 
    FROM artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
            JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE p.productnaam='Whisky'
    ORDER BY 2
    LIMIT 1;
    ```
17. Van welke soorten (naam) komen er geen artikelen voor? 
    > 19 record
    ```sql
    SELECT s.naam
    FROM soort s LEFT JOIN artikel a ON s.soortnr= a.soortnr -- left join ndz.
    GROUP BY s.soortnr
    HAVING COUNT(a.artikelnr)=0; 
    ```
    > Alternatief 
    ```sql
    SELECT s.naam
    FROM soort s 
        LEFT JOIN artikel a ON s.soortnr= a.soortnr
    WHERE a.artikelnr IS NULL; --niet met count(*)!
    ```
18. Toon het grootste aantal liter Grappa in voorraad.
    > 11,25 liter
    ```sql
    SELECT MAX(a.voorraad*a.inhoud) AS Grootste
    FROM artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
            JOIN productgroep p ON s.productgroepnr=p.productgroepnr
    WHERE productnaam='Grappa';
    ```
19. Voor welk bedrag is op 17 oktober 2017 aan klanten die niet uit Gent komen gefactureerd? 
    > €347,50
    ```sql
    SELECT SUM(fr.aantal*fr.verkoopprijs) AS Totaal
    FROM factuur f 
        JOIN factuurregel fr ON f.factuurnr=fr.factuurnr
        JOIN klant a ON f.klantnr=a.klantnr
    WHERE f.factuurdatum='2017-10-17 00:00:00' AND a.plaats<>'Gent';
    ```
20. Geef per productgroep de productnaam, het aantal artikelen en de gemiddelde, de hoogste en de laagste adviesverkoopprijs. Sorteer alfabetisch op productnaam.
    > 9 records, voor Cava met respectievelijk 4, €12,37, €5,49, €25,00
    ```sql
    SELECT p.productnaam
    ,COUNT(*) AS Aantal
    ,AVG(adviesverkoopprijs) AS Gemiddelde
    ,MAX(adviesverkoopprijs) AS Duurste
    ,MIN(adviesverkoopprijs) AS Goedkoopste 
    FROM productgroep p 
        JOIN soort s ON  p.productgroepnr=s.productgroepnr
        JOIN artikel a ON s.soortnr=a.soortnr
    GROUP BY p.productgroepnr, p.productnaam
    ORDER BY p.productnaam;
    ```
21. Geef per factuur de naam van de klant, het factuurnummer en het totale factuurbedrag. De duurste factuur moet als eerste staan. 
    > 23 records, Wijnen Lybaert staat als eerste met factuurnr 173124 en een factuurbedrag van €5100,00
    ```sql
    SELECT a.naam
    ,f.factuurnr
    ,SUM(fr.verkoopprijs) AS Totaalbedrag
    FROM factuur f 
        JOIN factuurregel fr ON f.factuurnr=fr.factuurnr 
        JOIN klant a ON f.klantnr=a.klantnr 
    GROUP BY f.factuurnr, a.naam
    ORDER BY 3 DESC;
    ```
22. Geef per soort rode wijn het totaal aantal flessen en het totaal aantal liter op voorraad. Toon eveneens de soortnaam. Sorteer op volgorde van soortnaam. 
    > 13 records, voor Léoville Barton is het aantal flessen 25 en het aantal liter 18,75
    ```sql
    SELECT 
     SUM(a.voorraad) AS Totaalfles
    ,SUM(a.voorraad*a.inhoud) AS Totaalliter
    ,s.naam 
    FROM soort s 
        JOIN artikel a ON s.soortnr=a.soortnr
        JOIN productgroep p ON s.productgroepnr=p.productgroepnr 
    WHERE p.productnaam='Wijn' AND s.kleur='Rood' 
    GROUP BY s.soortnr, s.naam 
    ORDER BY s.naam;
    ```
23. Welke unie(‘s) hebben geen leden (klanten)? 
    > 1 record Antwaarp Wijn
    ```sql
    SELECT u.naam
    FROM unie u 
        LEFT JOIN klant k ON u.toelatingsnr= k.unie
    GROUP BY toelatingsnr
    HAVING COUNT(k.unie)=0;
    ```
24. Van welke producten hebben we meer dan 100 liter in voorraad? Druk alfabetisch af.
    > 3 records: Cava, Champagne en Wijn
    ```sql
    SELECT p.productnaam 
    FROM soort s 
        JOIN artikel a ON s.soortnr=a.soortnr 
        JOIN productgroep p ON s.productgroepnr=p.productgroepnr 
    GROUP BY p.productgroepnr, p.productnaam 
    HAVING SUM(a.voorraad*a.inhoud)>100 
    ORDER BY p.productnaam;
    ```
25. Van welke soort hebben we in oktober 2017 meer dan 10 flessen verkocht? Laat de soortnaam en het aantal flessen afdrukken op volgorde van dalend aantal flessen.
    > 1 record: Riesling Auslese met 201 flessen
    ```sql
    SELECT s.naam, SUM(fr.aantal) AS 'Aantal flessen' 
    FROM soort s 
        JOIN artikel a ON s.soortnr=a.soortnr
            JOIN factuurregel fr ON a.artikelnr=fr.artikelnr
                JOIN factuur f ON fr.factuurnr=f.factuurnr;
    WHERE f.factuurdatum BETWEEN '2017-10-01' AND '2017-10-30'
    GROUP BY s.naam 
    HAVING SUM(fr.aantal)>10 
    ORDER BY SUM(fr.aantal) DESC;
    ```
26. Welke vijf artikelen zijn in aantal flessen het best verkocht in 2017? Toon artikelnummer, soortnaam en aantal flessen. 
    > 5 records
    ```sql
    SELECT  fr.artikelnr, s.naam, SUM(fr.aantal) AS Totaal 
    FROM artikel a 
        JOIN soort s ON a.soortnr=s.soortnr
        JOIN factuurregel fr ON a.artikelnr=fr.artikelnr
            JOIN factuur f ON  fr.factuurnr=f.factuurnr
    WHERE f.factuurdatum BETWEEN '2017-01-01 00:00:00' AND '2017-12-31 00:00:00'
    GROUP BY fr.artikelnr, s.naam 
    ORDER BY SUM(fr.aantal) DESC
    LIMIT 5;
    ```

## Oefeningen
Klik [hier](../../exercises.md) om terug te gaan naar de oefeningen.
