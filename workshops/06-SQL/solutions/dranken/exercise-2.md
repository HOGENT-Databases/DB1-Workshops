# 06 - Workshop SQL : Dranken

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-dranken.jpg" alt="Diagram Dranken.db">
</p>

> Meer informatie over de databank kan je [hier](structure.md) vinden.

## Oplossingen 2 - Aggregeren

1. Hoeveel klanten zijn er? Geef de kolom de hoofding 'Aantal klanten'. 
    > 17 records
    ```sql
    SELECT COUNT(*) AS 'Aantal klanten'
    FROM klant;
    ```
2. Hoeveel facturen werden verstuurd op 29 juni 2017? Geef de kolom een duidelijke hoofding.
    > 3 records
    ```sql
    SELECT COUNT(*) AS Aantal 
    FROM factuur 
    WHERE factuurdatum='2017-06-29 00:00:00';
    ```
3. Hoeveel flessen zijn er op dit moment in voorraad? Geef de kolom een duidelijke hoofding.
    > 1258 records
    ```sql
    SELECT SUM(voorraad) AS 'Aantal flessen'
    FROM artikel;
    ```
4. Geef per plaats het aantal klanten. Druk plaatsnaam en aantal af op volgorde van oplopend aantal. Bij gelijk aantal sorteren op plaatsnaam. 
    > 12 records, Aalst heeft één klant, Gent vier records
    ```sql
    SELECT plaats, COUNT(*) AS Aantal 
    FROM klant 
    GROUP BY plaats 
    ORDER BY COUNT(*), plaats;
    ```
5. Geef de unie’s met 4 of meer leden (klanten records Toon het aantal leden per unie. 
    > 3 records records
    ```sql
    SELECT unie, COUNT(klantnr)
    FROM klant 
    GROUP BY unie
    HAVING COUNT(klantnr) >= 4;
    ```
6. Hoeveel klanten behoren tot geen enkele unie? 
    > 3 records
    ```sql
    SELECT COUNT(*)
    FROM klant
    WHERE unie is NULL;
    ```

## Oefeningen
Klik [hier](../../exercises.md) om terug te gaan naar de oefeningen.
