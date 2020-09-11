# 06 - Workshop SQL : Dranken

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-dranken.jpg" alt="Diagram Dranken.db">
</p>

> Meer informatie over de databank kan je [hier](structure.md) vinden.

## Oplossingen 1 - Raadplegen
1. Geef alle gegevens van de klanten. 
    > 17 records
    ```sql
    SELECT  * 
    FROM    Klant;
    ```
2. Welke artikelen zitten in het assortiment? Toon , jaar, inhoud en aantal voorraad.
    > 60 records
    ```sql
    SELECT  ArtikelNr, Jaar, Inhoud, Voorraad
    FROM    Artikel;
    ```
3. Welke soorten worden aangeboden? Toon naam, kleur en alcoholpercentage van de soorten met een alcoholpercentage kleiner dan 15. 
    > 46 records
    ```sql
    SELECT	Naam, Kleur, Alcoholperc
    FROM	Soort
    WHERE	Alcoholperc < 15;
    ```
4. Welke facturen zijn verstuurd op 25 of 26 oktober 2017? Toon de factuurnummers. 
    > 2 records,`173124` en `173125`
    ```sql
    SELECT	factuurnr
    FROM	factuur
    WHERE	factuurdatum='2017-10-25' OR factuurdatum='2017-10-26';
    ```
5. Welke artikelen hebben een adviesverkoopprijs onder de 25 euro en een voorraad van meer dan 30 stuks? Toon het soortnummer en het jaartal.   
    > 4 records, soortnummers `2137, 1205,3101 en 3102`
    ```sql
    SELECT	soortnr, jaar
    FROM	artikel
    WHERE	adviesverkoopprijs < 25 AND  voorraad > 30;
    ```
6. Welke rode dranken met een alcoholpercentage van 10 of meer kunnen worden geleverd? Toon productgroepnummer en naam. 
    > 10 records, alle met productgroepnummer `50`
    ```sql
    SELECT	productgroepnr, naam
    FROM	soort
    WHERE	alcoholperc>=10 AND kleur='Rood';
    ```
7. Bij welke artikelen is geen adviesverkoopprijs opgenomen? Geef alle gegevens. 
    > 5 records
    ```sql
    SELECT	*
    FROM	artikel
    WHERE	adviesverkoopprijs IS NULL;
    ```
8. Op welke data werd er gefactureerd? Toon enkel de unieke factuurdata.
    > 22 records
    ```sql
    SELECT	DISTINCT factuurdatum
    FROM	factuur;
    ```
9. Geef de namen van de klanten woonachtig in een plaats beginnend met ‘A’.
    > 3 records
    ```sql
    SELECT naam 
    FROM  klant
    WHERE plaats LIKE 'A%';
    ```
10. Toon naam, adres en postcode van klanten uit de provincie ‘OVL’ of ‘WVL’ en waarvan de postcode een ‘3’ bevat. 
    > 4 records
    ```sql
    SELECT naam, adres, postcode
    FROM klant
    WHERE (provincie = 'OVL' OR provincie = 'WVL') AND postcode LIKE '%3%';
    ```
11. Geef de productnamen van de productgroepen met nummer gelegen tussen 30 en 50 (grenzen inbegrepen). 
    > 8 records
    ```sql
    SELECT productnaam
    FROM productgroep
    WHERE productgroepnr BETWEEN 30 AND 50;
    ```
12. Geef de namen van de soorten met een soortnummer beginnend met ‘11’ en een productgroepnummer tussen 30 en 34 (grenzen inbegrepen).
    > 3 records
    ```sql
    SELECT naam
    FROM sort
    WHERE (soortnr >= 1100 AND soortnr < 1200) AND productgroepnr BETWEEN 30 AND 34;
    ```
13. Geef het artikelnummer van alle artikelen zonder voorraad.
    > 1 record
    ```sql
    SELECT artikelnr
    FROM artikel
    WHERE voorraad = 0; -- Let op met NULL 
    ```
    > Opmerking: Hierbij zou je ook `WHERE voorraad = 0 OR voorraad IS NULL` kunnen in acht nemen maar dan zou de vraag luiden "Geef het artikelnummer van alle artikelen zonder voorraad **of waarvan deze niet gekend is.**"
14. Geef het artikelnummer van de artikelen waarvan de adviesverkoopprijs niet ingevuld is. 
    > 5 records
    ```sql
    SELECT artikelnr
    FROM artikel
    WHERE adviesverkoopprijs IS NULL;
15. Geef een lijst met alle gegevens van de klanten, gesorteerd op plaats. Indien er meerdere klanten per plaats zijn, alfabetisch gesorteerd op naam. 
    > 17 records, `Wijnen Le Compte uit Aalst` is de eerste
    ```sql
    SELECT	*
    FROM	klant
    ORDER BY plaats, naam;
    ```
16. Geef een lijst met alle productnamen, aflopend gesorteerd op productnaam.
    > 11 records, (`Wijn` is de eerste).
    ```sql
    SELECT	productnaam
    FROM	productgroep
    ORDER BY productnaam DESC;
    ```
17. Geef een overzicht van alle artikelgegevens volgens dalende flesinhoud met een gekende adviesverkoopprijs. Bij gelijke flesinhoud sorteren op oplopend jaartal en bij gelijk jaartal sorteren op aflopend adviesverkoopprijs. 
    > 55 records, artikelnummer `10858` is de eerste.
    ```sql
    SELECT	*
    FROM	artikel
    WHERE adviesverkoopprijs IS NOT NULL
    ORDER BY inhoud DESC , jaar, adviesverkoopprijs DESC;
    ```
18. Geef een overzicht van alle artikelen waarvan de adviesverkoopprijs en/of het jaartal niet is ingevuld. Toon het artikelnummer en een opmerking als volgt:
    - 'adviesverkooprijs niet opgegeven' : indien enkel de adviesverkoopprijs niet is ingevuld.
    - 'jaartal niet opgegeven' : indien enkel het jaar niet is ingevuld
    - 'noch adviesverkoopprijs noch jaar ingevuld' : indien beide niet ingevuld
    > 22 records: 17 met jaar niet opgegeven, 5 met adviesverkoopprijs niet opgegeven
    ```sql
    SELECT 
    artikelnr, 
    CASE
        WHEN adviesverkoopprijs IS NULL AND NOT jaar IS NULL THEN 'adviesverkoopprijs niet opgegeven'
        WHEN NOT adviesverkoopprijs IS NULL AND jaar IS NULL THEN 'jaar niet opgegeven'
        ELSE 'noch adviesverkoopprijs noch jaar ingevuld'
    END AS 'opmerking'
    FROM artikel
    WHERE adviesverkoopprijs IS NULL OR jaar IS NULL;
    ```
## Oefeningen
Klik [hier](../../exercises.md) om terug te gaan naar de oefeningen.
