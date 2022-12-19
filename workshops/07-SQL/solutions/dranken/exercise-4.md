# 06 - Workshop SQL : Dranken

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-dranken.jpg" alt="Diagram Dranken.db">
</p>

> Meer informatie over de databank kan je [hier](structure.md) vinden.

## Oplossingen 4 - Manipuleren

1. Maak een nieuwe tabel Producent aan.

    | Kolom       | Type        | Nullable     | Omschrijving | 
    | ----------- | ----------- | ------------ | ---------------- | 
    | producentnr | int         | not null     | primaire sleutel |
    | naam        | varchar(25) | not null     | naam klant |
    | plaats      | varchar(25) | null allowed | woonplaats |
    | land        | varchar(16) | null allowed | land |
    ```sql
    CREATE TABLE Producent 
    (
        producentnr INTEGER NOT NULL, 
        naam VARCHAR(25) NOT NULL, 
        plaats VARCHAR(25), 
        land VARCHAR(16), 
        PRIMARY KEY (producentnr)
    );
    ```
2. Voeg in deze tabel volgende records toe:

    | producentnr | naam | plaats | land |
    | ----------- | ---- | ------ | ---- |
    | 103 | Fiore | Ruffiole | Italië |
    | 135 | Coutet | Barsac | Frankrijk |
    | 735 | Le Cecche | Barolo | Italië |
    | 111 | CaMarcanda | Castagneto | Italië |
    ```sql
    INSERT INTO Producent (producentnr, naam, plaats, land) VALUES (103, 'Fiore', 'Ruffiole', 'Italië');
    INSERT INTO Producent (producentnr, naam, plaats, land) VALUES (135, 'Coutet', 'Barsac', 'Frankrijk');
    INSERT INTO Producent (producentnr, naam, plaats, land) VALUES (735, 'Le Cecche', 'Barolo', 'Italië');
    INSERT INTO Producent (producentnr, naam, plaats, land) VALUES (111, 'CaMarcanda', 'Castagneto', 'Italië');
    ```
    > Uitbreiding: probeer dit ook eens in 1 statement uit te voeren.

3. Wijzig de tabel `Soort`. Voeg een nieuwe kolom `producent` toe. Dit is een vreemde sleutel en verwijst naar de tabel `Producent`. Kan hier de constraint `not null` afgedwongen worden?
    ```sql
    ALTER TABLE Soort
    ADD producent integer,
    ADD FOREIGN KEY (producent) REFERENCES Producent(producentnr);
    ```
    > Constraint `not null` kan niet aangezien er reeds records in de tabel aanwezig zijn.

4. Voeg volgende nieuwe records toe aan de tabel Soort:

    | soortnr | productgroepnr | naam            | kleur | alcoholperc | producent | 
    | ------- | -------------- | --------------- | ----- | ----------- | --------- |
    | 1229    | 50             | Il Carbonaione  | rood  | 12 | 103 |
    | 1386    | 50             | La Chartreuse   | wit   | 12 | 135 |
    | 2146    | 50             | Le Cecche       | rood  | 13 | 735 |
    | 2150    | 50             | Promis          | rood  | 13 | 111 |
    ```sql
    INSERT INTO Soort (soortnr, productgroepnr, naam, kleur, alcoholperc, producent) 
    VALUES (1229, 50, 'Il Carbonaione', 'rood', 12, 103);
    INSERT INTO Soort (soortnr, productgroepnr, naam, kleur, alcoholperc, producent) 
    VALUES (1386, 50, 'La Chartreuse', 'wit', 12, 135);
    INSERT INTO Soort (soortnr, productgroepnr, naam, kleur, alcoholperc, producent) 
    VALUES (2146, 50, 'Le Cecche', 'rood', 13, 735);
    INSERT INTO Soort (soortnr, productgroepnr, naam, kleur, alcoholperc, producent) 
    VALUES (2150, 50, 'Promis', 'rood', 13, 111);
    ```

5. Wijzig volgende records in de tabel Soort:
    -  soortnr 3010: zet `kleur` op `bruin`
    -  soortnr 3030: zet `alcoholperc` op `12`
    ```sql
    UPDATE Soort SET kleur = 'bruin' WHERE soortnr = 3010;
    UPDATE Soort SET alcoholperc = 12 WHERE soortnr = 3030;
    ```

6. Verwijder `soortnr` `4009` in de tabel `Soort`. Kan dit zomaar? Wat is hiervan het gevolg?
    ```sql
    DELETE FROM Soort
    WHERE soortnr = 4009;
    ```
    > Het gevolg is dat de artikels met nummers `10817` en `10840` verwijzen naar een onbestaande soort.


## Oefeningen
Klik [hier](../../exercises.md) om terug te gaan naar de oefeningen.
