# 06 - Workshop SQL

## Oplossingen 1 - Raadplegen
1. Toon een alfabetische adreslijst van alle leveranciers (naam, leverancierscode, adres en
woonplaats). Sorteer op woonplaats in dalende volgorde. Bij gelijke woonplaats komen de
namen van de leveranciers in alfabetische volgorde.
    ```sql
    SELECT naam, levcode, adres, woonplaats    
    FROM leveranciers 
    ORDER BY woonplaats DESC, naam 
    ```
2. Toon de unieke leverancierscodes van de leveranciers waarbij bestellingen zijn geplaatst. 
    ```sql
    SELECT DISTINCT levCode 
    FROM bestellingen 
    ```
3. Geef een alfabetische lijst van alle planten (naam) waarvan de naam eindigt op bloem. 
    ```sql
    SELECT naam 
    FROM planten WHERE naam LIKE '%bloem' 
    ORDER BY naam 
    ```
4. Geef een overzicht (alle gegevens) van alle leveranciers die wonen te Antwerpen, Heusden of Leuven 
    ```sql 
    SELECT * 
    FROM leveranciers  
    WHERE woonplaats IN ('Antwerpen', 'Heusden', 'Leuven') 
    ```
5. Toon de naam, artikelcode en prijs van de planten waarvan de bloei begint in april. 
    ```sql
    SELECT naam, artcode,prijs 
    FROM planten 
    WHERE bl_b=4 
    ```
6. Geef een overzicht van alle planten waarvan de bloeiperiode begin en/of bloeiperiode einde niet
is ingevuld. Toon de naam van de planten en een aanduiding 
    -  Beginperiode niet opgegeven: indien enkel bl_b niet is ingevuld
    - Eindperiode niet opgegeven: indien enkel bl_e niet is ingevuld
    - Periodes niet opgegeven: indien beide niet ingevuld

    ```sql 
    SELECT naam, 
    CASE 
        WHEN bl_b is null AND NOT bl_e is null 
            THEN 'beginperiode niet opgegeven' 
        WHEN NOT bl_b is null AND bl_e is null 
            THEN 'eindperiode niet opgegeven' 
        ELSE 'periodes niet opgegeven'  
    END AS 'bloeiperiode' 
    FROM planten  
    WHERE bl_e is null OR bl_b is null 
    ```
7. Geef de namen van de planten waarin het woordje boom voorkomt of waarvan de naam bestaat uit 5 posities 
    ```sql
    SELECT naam  
    FROM planten 
    WHERE naam LIKE '%boom%' 
       OR naam LIKE '_____' 
    -- OF OR LENGTH(naam)=5 
    ```
8. Toon naam en woonplaats van de leveranciers die niet in Heusden wonen. 
    ```sql
    SELECT naam, woonplaats 
    FROM leveranciers 
    WHERE NOT woonplaats='Lisse' 
    ```
9. Toon naam van de planten waarvan de bloeiperiode begint tussen juni en oktober 
    ```sql
    SELECT naam, bl_b, bl_e 
    FROM planten 
    WHERE bl_b  BETWEEN 6 AND 10 
    ```
10. Geef artikelcode en naam van de planten waarvan de naam begint met een L en eindigt met een E. 
    ```sql
    SELECT artCode, naam 
    FROM planten 
    WHERE naam LIKE 'L%E' 
    ```
11. Geef de namen van de planten waarvan de naam een spatie bevat. 
    ```sql
    SELECT artCode, naam 
    FROM planten 
    WHERE naam LIKE '% %' 
    ```
12. Toon de verschillende woonplaatsen (alfabetisch) van de leveranciers 
    ```sql
    SELECT DISTINCT woonplaats 
    FROM leveranciers 
    ORDER BY  woonplaats 
    ```
 
13. Toon de bestelnummers van de bestellingen voor een bedrag van meer dan 250 euro die binnen de 14 dagen werden geleverd 
    ```sql 
    SELECT bestelnr 
    FROM bestellingen 
    WHERE bedrag > 250 
        AND DATEDIFF(leverdatum, besteldatum) < 14 
    ```
14. Geef een alfabetisch overzicht van de plantnamen die uit maximaal 5 letters bestaan. 
    ```sql
    SELECT naam 
    FROM planten 
    WHERE naam NOT LIKE '______%' 
    ORDER BY naam 
    -- of LENGTH(naam)<6 
    ```

15. Toon de naam en de hoogte van de planten die tussen de 10 en de 50 cm of de 100 en 150 cm hoog zijn. Naast de hoogte moet de tekst cm worden weergegeven. 
    ```sql 
    SELECT naam, CONCAT(hoogte, ' cm') AS 'hoogtes' 
    FROM planten  
    WHERE hoogte BETWEEN 10 AND 50 OR hoogte BETWEEN 100 AND 150 
    ```

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
