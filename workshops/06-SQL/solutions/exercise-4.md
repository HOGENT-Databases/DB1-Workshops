# 06 - Workshop SQL

## Oplossingen 4 - Manipuleren
1. Voeg als kleuren appelblauwzeegroen en zwart toe.
    ```sql
    INSERT INTO kleuren(kleur) VALUES('appelblauwzeegroen') 
    INSERT INTO kleuren(kleur) VALUES ('zwart') 
    ```

2. Voeg als soorten 'vet' en 'naald' toe 
    ```sql
    INSERT INTO soorten(soort) VALUES('vet') 
    INSERT INTO soorten(soort) VALUES('naald') 
    -- OF:
    INSERT INTO soorten(soort) VALUES('vet'),('naald') 
    ```

3. Voeg een spar toe aan de tabel planten. (artcode : 362, hoogte 3000, prijs : 12.5, soortID : 2, andere gegevens onbekend) 
    ```sql
    INSERT INTO planten(artcode, naam,hoogte,prijs, soortID) VALUES(362,'spar',3000,12.5,2)  (in values mag je geen selects gebruiken) 
    ```

4. Voeg een sierui toe aan de tabel planten (artcode : 162, hoogte : 75, bl_e :8; bl_b : 6,prijs :3 , soort : bol, kleur : blauw) 
    ```sql
    INSERT INTO planten(artcode, naam,hoogte,prijs, bl_b, bl_e, soortID, kleurID)  VALUES(162,'sierui',75,3,6,8, 1,2) 
    ```

5. Verhoog de prijs van alle planten met 5 procent 
    ```sql 
    UPDATE planten SET prijs = prijs * 1.05  
    ```

6. Verwijder kleur blauw. Werkt dit? 
    ```sql
    DELETE kleuren WHERE naam='blauw' 
    ```

7. Voeg als soort bloem toe.  
    ```sql
    INSERT INTO soorten(soort) VALUES('bloem') 
    ```

8. Pas de tabel planten aan. Vervang soort bol door soort bloem 
UPDATE planten  
```sql
SET soortID=(select max(soortid) from soorten where soort='bloem')  
    WHERE soortID=(select soortid from soorten WHERE soort=bol') 
```

9. Verwijder alle planten 
```sql TRUNCATE TABLE lukt niet met foreign key gedefinieerd op kolom kleurID
delete from planten
``` 

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
