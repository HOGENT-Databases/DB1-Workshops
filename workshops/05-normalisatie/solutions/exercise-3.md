# Oefening 3 - Leveranciers

## Oplossing
- Leverancier(<ins>lnr</ins>, naam,voornaam, straat, nr, postcode, woonpl)
- Onderdeel(<ins>lnr, onderdeelnr</ins>, beschrijving)
    - IR: `lnr` verwijst naar de verzameling `Leverancier` en is **verplicht**
- Bestelling (<ins>lnr, onderdeelnr, klantID</ins>, hoeveelheid)
    - IR: `lnr, onderdeelnr` verwijst naar de verzameling `Onderdeel`  en is **verplicht**
    - IR: `KlantID` verwijst naar de verzameling `Klant` en is **verplicht**
- Klant (<ins>klantID</ins>, klnaam, klvoornaam, straat, hnr, postcode, woonpl)

## Stappenplan
### 1NV
- R<sub>11</sub>(<ins>lnr</ins>, familienaam, voornaam, straat, huisnr, postcode, woonpl)
- R<sub>12</sub>(<ins>lnr, onderdeelnr</ins>, beschrijving)
- R<sub>13</sub>(<ins>lnr, onderdeelnr, klantID</ins>, klnaam, klvoornaam, straat, hnr, postcode, woonpl, hoeveelheid)


### 2NV
- R<sub>21</sub> (<ins>lnr</ins>, familienaam, voornaam, straat, huisnr,  postcode, woonpl)
- R<sub>22</sub> (<ins>lnr, onderdeelnr</ins>, beschrijving)
- R<sub>23</sub> (<ins>lnr, onderdeelnr, klantID</ins>, hoeveelheid)
- R<sub>24</sub> (<ins>klantID</ins>, klnaam, klvoornaam, straat, hnr, postcode, woonpl)

### 3NV
- Geen transitieve afhankelijkheden, 3NV is dus gelijk aan 2NV

### Relationeel Model
- Leverancier(<ins>lnr</ins>, naam,voornaam, straat, nr, postcode, woonpl)
- Onderdeel(<ins>lnr, onderdeelnr</ins>, beschrijving)
    - IR: `lnr` verwijst naar de verzameling `Leverancier` en is **verplicht**
- Bestelling (<ins>lnr, onderdeelnr, klantID</ins>, hoeveelheid)
    - IR: `lnr, onderdeelnr` verwijst naar de verzameling `Onderdeel`  en is **verplicht**
    - IR: `KlantID` verwijst naar de verzameling `Klant` en is **verplicht**
- Klant (<ins>klantID</ins>, klnaam, klvoornaam, straat, hnr, postcode, woonpl)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
