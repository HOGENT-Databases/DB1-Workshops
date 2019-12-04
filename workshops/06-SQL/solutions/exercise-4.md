# 06 - Workshop SQL

## Oplossingen 4 - Manipuleren en Definiëren
1. Creëer de tabellen planten en soorten en kleuren. Leg een constraint op de hoogte nl moet positief zijn. Definieer constraint op de bloeimaanden. Moeten gelegen zijn tussen 1 en 12. Definieer ook de sleutel – vreemde sleutel relaties. 
    ```sql
    CREATE TABLE Kleuren ( 
    kleurID int  NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    kleur varchar (50) NOT NULL   
    )  

    CREATE TABLE Soorten ( 
    soortID int  NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    soort varchar (50) NOT NULL  
    )  

    CREATE TABLE Planten ( 
    artCode varchar (3) NOT NULL PRIMARY KEY, 
    naam varchar (16) NOT NULL , 
    soortID int NOT NULL , 
    kleurID int NULL , 
            hoogte int NULL CHECK (hoogte > 0), 
    bl_b int NULL CHECK(bl_b BETWEEN 1 AND 12), 
    bl_e int NULL CHECK(bl_e BETWEEN 1 AND 12), 
    prijs decimal(6, 2) NOT NULL, 
        CONSTRAINT soortID_fk FOREIGN KEY(soortID) REFERENCES Soorten(SoortID), 
        CONSTRAINT kleurID_fk FOREIGN KEY(kleurID) REFERENCES Kleuren(KleurID)) 
    ```

2. Voeg als kleuren rood en blauw toe. 
    ```sql
    INSERT INTO kleuren(kleur) VALUES(‘rood’) 
    INSERT INTO kleuren(kleur) VALUES (‘blauw’) 
    ```

3. Voeg als soorten bol en boom toe 
    ```sql
    INSERT INTO soorten(soort) VALUES(‘bol’) 
    INSERT INTO soorten(soort) VALUES(‘boom’) 
    ```

4. Voeg een spar toe aan de tabel planten. (artcode : 362, hoogte 3000, prijs : 12.5, soortID : 2, andere gegevens onbekend) 
    ```sql
    INSERT INTO planten(artcode, naam,hoogte,prijs, soortID) VALUES(362,’spar’,3000,12.5,2)  (in values mag je geen selects gebruiken) 
    ```

5. Voeg een sierui toe aan de tabel planten (artcode : 162, hoogte : 75, bl_e :8; bl_b : 6,prijs :3 , soort : bol, kleur : blauw) 
    ```sql
    INSERT INTO planten(artcode, naam,hoogte,prijs, bl_b, bl_e, soortID, kleurID)  VALUES(162,’sierui’,75,3,6,8, 1,2) 
    ```

6. Verhoog de prijs van alle planten met 5 procent 
    ```sql 
    UPDATE planten SET prijs = prijs * 1.05  
    ```

7. Verwijder kleur blauw. Werkt dit? 
    ```sql
    DELETE kleuren WHERE naam=’blauw’ 
    ```

8. Voeg als soort bloem toe.  
    ```sql
    INSERT INTO soorten(soort) VALUES(‘bloem’) 
    ```

9. Pas de tabel planten aan. Vervang soort bol door soort bloem 
UPDATE planten  
```sql
SET soortID=(select max(soortid) from soorten where soort='bloem')  
    WHERE soortID=(select soortid from soorten WHERE soort=bol’) 
```

10. Verwijder alle planten 
```sql TRUNCATE TABLE lukt niet met foreign key gedefinieerd op kolom kleurID
delete from planten
``` 

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
