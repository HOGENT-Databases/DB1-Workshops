# 06 - Workshop SQL

## EERD
<img src="../exercises/images/exercise-5.svg" alt="Diagram Oefening 5">

## Relationeel Model
- **Hoofdtabellen**
    - **Spel**(<ins>Naam</ins>)
        - IR: De `naam` van een `spel` is maximum 20 karakters lang.
    - **Doelkaart**(<ins>Id</ins>, Naam)
        - IR: Heeft als `primaire sleutel` een karakter column van 5 lang.
        - IR: De `naam` is maximum 30 karakters lang, is niet verplicht.
    - **Gangkaart** (<ins>Id</ins>, Type, Schat)
        - IR: Heeft als primaire sleutel een karakter column van 5 lang.
        - IR: Het `type` is maximum 8 karakters lang, is niet verplicht.
        - IR: De `schat` is maximum 20 karakters lang, is niet verplicht.
    - **Speler**(<ins>Id</ins>, Naam, GeboorteJaar, Kleur, HuidigVak, IsAanDeBeurt, Spelnaam)
        - IR: Heeft als primaire sleutel een automatisch gegenereerde integer.
        - IR: De `naam` is maximum 100 karakters lang, is verplicht.
        - IR: Het `geboortejaar` is een integer. 
        - IR: De kleur is een karakterwaarde van maximum 10 karakters. Maar enkel `rood` of `zwart` mag ingevoerd worden.
        - IR: Het `huidigvak` is een karakterwaarde van 20 lang en is niet verplicht.
        - IR: `IsAanDeBeurt` is een ja/neen veld.
        - IR: `Spelnaam` verwijst naar de verzameling `Spel` en is **optioneel**
- **Tussentabellen**
    - **Speler_Doelkaart**(<ins>SpelerId, KaartId</ins>, Volgorde)
        - IR: De `volgorde` is een integer. 
        - IR: `SpelerId` verwijst naar de verzameling `Speler` en is **verplicht**
        - IR: `KaartId` verwijst naar de verzameling `Doelkaart` en is **verplicht**
    - **Spel_Gangkaart**(<ins>Spelnaam, KaartId</ins>, Richting, Positie)
        - IR: De `richting` en `positie` zijn karakterwaarden van maximum 20 lang en zijn niet verplicht.. 
        - IR: `Spelnaam` verwijst naar de verzameling `Spel` en is **verplicht**
        - IR: `KaartId` verwijst naar de verzameling `GangKaart` en is **verplicht**

## Oefening 5 - Definiëren
1. Maak een databank met naam `WorkshopDDL`, refresh nadien je schema in MySQL Workbench zodat de databank zichtbaar is. Voer nadien het statement `USE WorkshopDDL` uit om de databank als de standaard databank actief te zetten.
    - Kan ook bereikt worden door de databank te dubbelklikken in MySQL Workbench.
2. Maak de tabel `Spel` aan.
3. Maak de tabel `Doelkaart` aan.
4. Maak de tabel `Gangkaart` aan.
5. Maak de tabel `Speler` aan.
6. Maak de tabel `Spel_Gangkaart` aan.
7. Maak de tabel `Speler_Doelkaart​` aan.
8. Voeg een extra kolom Email aan de Speler entiteit toe, met lengte 50.
9. Pas de kolom Email aan van de Speler naar lengte 100.
10. Verwijder de kolom Email van Speler.
> De volgorde van het aanmaken is van belang, zeker in het kader van `FOREIGN KEY CONSTRAINTS`. 
​
### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-5.md)