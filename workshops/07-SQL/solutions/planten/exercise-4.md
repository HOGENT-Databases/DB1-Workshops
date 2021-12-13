# 06 - Workshop SQL : Planten

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

3. Voeg een spar toe aan de tabel planten. (artcode : 163, hoogte 3000, prijs : 12.5, soortID : 2, andere gegevens onbekend) 
    ```sql
    INSERT INTO planten(artcode, naam,hoogte,prijs, soortID) VALUES(163,'spar',3000,12.5,2)  (in values mag je geen selects gebruiken) 
    ```

4. Voeg een sierui toe aan de tabel planten (artcode : 165, hoogte : 75, bl_e :8; bl_b : 6,prijs :3 , soort : bol, kleur : blauw) 
    ```sql
    INSERT INTO planten(artcode, naam,hoogte,prijs, bl_b, bl_e, soortID, kleurID)  VALUES(165,'sierui',75,3,6,8, 1,2) 
    ```

5. Verhoog de prijs van alle planten met 5 procent 
    ```sql 
    UPDATE planten SET prijs = prijs * 1.05  
    ```

6. Verwijder kleur blauw. Werkt dit? 
    ```sql
    DELETE kleuren WHERE kleur = 'blauw' 
    ```

7. Voeg als soort bloem toe.  
    ```sql
    INSERT INTO soorten(soort) VALUES('bloem') 
    ```

8. Pas de tabel planten aan. Vervang de soort van alle planten die de Soort `bol` hebben naar de soort `bloem`.
- Opzoeken van de SoortID van `bol`, hierdoor weet je de SoortID van de soort `bol`:
    ```sql
    SELECT soortID FROM soorten WHERE soort='bol'
    ```

- Opzoeken van de SoortID van `bloem`, hierdoor weet je de SoortID van de soort`bloem`:
    ```sql
    SELECT soortID FROM soorten WHERE soort='bloem'
    ```

- Effectieve aanpassing, laten we stellen dat de soortID van `bloem` = 1 en `bol` = 3
    ```sql
    UPDATE planten 
    SET soortID = 1 
    WHERE soortID = 3
    ```

    > Alternatief:
    >
    > Het is mogelijk via subqueries, maar dit is leerstof voor Databanken II: 
    ```sql
    UPDATE planten 
    SET soortID=(select soortid from soorten where soort='bloem')  
        WHERE soortID=(select soortid from soorten WHERE soort='bol') 
    ```

9. Verwijder alle planten 
    ```sql TRUNCATE TABLE lukt niet met foreign key gedefinieerd op kolom kleurID
    delete from planten
    ``` 

## Oefeningen
Klik [hier](../../exercises.md) om terug te gaan naar de oefeningen.
