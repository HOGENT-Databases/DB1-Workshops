# 05 - Workshop Normalisatie

## Oefening 3 - Leveranciers

### 0NV
- R0 (<ins>lnr</ins>, naam, adres, (onderdeelnr, beschrijving, (klantID, klnaam, kladres, hoeveelheid)*)*)
    - `naam` en `klnaam` zijn samengesteld uit `voornaam` en `familienaam`
    - `adres` en `kladres` zijn samengesteld uit `straat`, `huisnr`, `postcode`, `woonplaats`

### Functionele Afhankelijkheden:​

- lnr → naam, adres
- lnr, onderdeelnr → beschrijving
- lnr, onderdeelnr, klantID → klnaam, kladres, hoeveelheid
- klantID → klnaam, kladres

### Opdracht
Normaliseer tot een relationeelmodel
- 1 NV
    - Wegwerken samengestelde attributen
    - Wegwerken herhaling
- 2 NV
    - Wegwerken partiele afhankelijkheden
- 3 NV
    - Wegwerken transitieve afhankelijkheden
- Relationeel model
    - Benoemen van verzamelingen en integriteitsregels bepalen

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-3.md)