# 06 - Workshop SQL

## Oplossingen 2 - Aggregeren

1. Hoeveel planten telt het assortiment? Geef de kolom de naam ‘aantal planten’. 
    ```sql
    SELECT COUNT(*) AS 'aantal planten' 
    FROM planten 
    ```

2. Hoeveel planten die bloeien (waarvoor kleur ingevuld) telt het assortiment?
    ```sql
    SELECT COUNT(kleurID) AS Aantal 
    FROM planten 
    WHERE bl_b IS NOT NULL AND bl_e IS NOT NULL
    ```

3. Hoeveel verschillende bloeikleuren komen er in het assortiment voor? 
    ```sql
    SELECT COUNT(DISTINCT kleurID) as Aantal 
    FROM planten 
    ```

4. Bij hoeveel leveranciers werd er reeds een bestelling geplaatst? 
    ```sql
    SELECT COUNT(DISTINCT levCode) as 'aantal leveranciers' 
    FROM bestellingen 
    ```

5. Hoeveel verschillende artikelen zijn er reeds besteld geweest. 
    ```sql
    SELECT COUNT(DISTINCT artcodeLev) as Aantal 
    FROM bestellijnen 
    ```

6. Geef een overzicht van het aantal leveranciers per woonplaats.  
    ```sql 
    SELECT woonplaats, COUNT(*) as Aantal 
    FROM leveranciers 
    GROUP BY woonplaats 
    ```

7. Toon voor de tabel planten de gemiddelde hoogte en de som van alle hoogtes gedeeld door het aantal planten. Zijn deze gelijk? Waarom? 
    - Nee,  `NULL` waarden! 
    ```sql
    SELECT SUM(hoogte)/COUNT(*), AVG(hoogte) 
    FROM planten 
    ``` 

8. Welke leveranciers bieden minstens 20 planten aan waarvan de levertermijn kleiner is dan 17 dagen. Toon code van de leverancier en het aantal verschillende planten. De leverancier die het meeste aantal planten aanbiedt staat bovenaan. 
    ```sql
    SELECT levcode, COUNT(artcodelev) AS 'Aantal artikelen' 
    FROM offertes 
    WHERE levertermijn < 17 
    GROUP BY levcode 
    HAVING COUNT(artcodelev) > 20 
    ORDER BY  COUNT(artcodelev) DESC 
    ```

9. Geef per bestelling het aantal bestellijnen, gesorteerd op aantal lijnen. 
    ```sql
    SELECT bestelnr, COUNT(*) AS 'Aantal bestellijnen' 
    FROM bestellijnen 
    GROUP BY bestelnr 
    ORDER BY  COUNT(*) 
    ```

10. Wat is de laagste offerteprijs voor de plant met artikelcode 123. 
    ```sql
    SELECT MIN(offerteprijs) as 'laagste offerteprijs' 
    FROM offertes 
    WHERE artcode='123' 
    ```

11. Hoeveel artikels met artcodelev B111 werden reeds besteld? 
    ```sql
    SELECT SUM(aantal) AS 'Totaal aantal' 
    FROM bestellijnen 
    WHERE artCodeLev='B111' 
    ```

12. Geef per artikel (artcode) de minimale en maximale offerteprijs. 
    ```sql
    SELECT artcode, MIN(offerteprijs) AS 'min prijs', MAX(offerteprijs) AS 'max prijs' 
    FROM offertes 
    GROUP BY artcode 
    ```

13. Geef per levertermijn de gemiddelde offerteprijs 
    ```sql
    SELECT levertermijn, AVG(offerteprijs) AS 'gemiddelde prijs' 
    FROM offertes 
    GROUP BY levertermijn 
    ```

14. Welke is alfabetisch gezien de eerste naam van de planten uit het assortiment. 
    ```sql
    SELECT MIN(naam) 
    FROM planten 
    ```

15. Toon de lijst van de woonplaatsen waar 2 of meer leveranciers wonen. Sorteer alfabetisch. 
    ```sql
    SELECT woonplaats, COUNT(*) AS Aantal 
    FROM Leveranciers 
    GROUP BY woonplaats 
    HAVING COUNT(*) >= 2 
    ORDER BY woonplaats 
    ```

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-2.md)
