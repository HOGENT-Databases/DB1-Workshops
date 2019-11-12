# 05 - Workshop Normalisatie

## Oefening 5 - Biowinkel
Een biowinkel levert maandelijks de bestelde artikelen bij haar klanten. Hiervoor wordt per klant een afleverbon gemaakt met alle bestellingen van de klant in die maand. Voor het afleveren van de bestelde producten wordt een transportkost van 10% aangerekend.

### Voorbeeld Documenten
<table width="100%">
    <tbody>
        <!-- Afleverbon -->
        <tr>
            <th align="left">Afleverbon</th>
            <td>278</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <th>Aflever Datum</th>
            <td>30/06/2015</td>
        </tr>
        <!-- Klant Informatie -->
        <tr>
            <th align="left">Klant</th>
            <td>2145</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Gilles Dekens</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Graaf van Egmontstraat 13</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>2450 Ekergem</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6"></td>
        </tr>
        <!-- Bestelbonnen -->
        <!-- Eerste Bestelbon -->
        <tr>
            <th align="left">Bestelbon</th>
            <td>3405</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <th align="left">Bestel Datum</th>
            <td>15/06/2015</td>
        </tr>
        <tr>
            <th align="left">Artikel Nr.</th>
            <th align="left">Artikel Omschrijving</th>
            <th align="right">Aantal</th>
            <th align="right">Prijs</th>
            <th align="right">Totaal</th>
            <th>&nbsp;</th>
        </tr>
        <tr>
            <td>2164</td>
            <td>Berloumi</td>
            <td align="right">3</td>
            <td align="right">3,25</td>
            <td align="right">9,75</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>3457</td>
            <td>Biologische Eieren per 12</td>
            <td align="right">1</td>
            <td align="right">2,3</td>
            <td align="right">2,3</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>2136</td>
            <td>Gerijpte kaas 250 gr</td>
            <td align="right">4</td>
            <td align="right">4,99</td>
            <td align="right">19,96</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <th align="right">Subtotaal</th>
            <th align="right">32,01</th>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6"></td>
        </tr>
        <!-- Tweede Bestelbon -->
        <tr>
            <th align="left">Bestelbon</th>
            <td>3409</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <th align="left">Bestel Datum</th>
            <td>23/06/2015</td>
        </tr>
        <tr>
            <th align="left">Artikel Nr.</th>
            <th align="left">Artikel Omschrijving</th>
            <th align="right">Aantal</th>
            <th align="right">Prijs</th>
            <th align="right">Totaal</th>
            <th>&nbsp;</th>
        </tr>
        <tr>
            <td>2163</td>
            <td>Haloumi</td>
            <td align="right">4</td>
            <td align="right">2,75</td>
            <td align="right">11</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>547</td>
            <td>Bio rode bieten</td>
            <td align="right">2</td>
            <td align="right">1,79</td>
            <td align="right">3,58</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>3457</td>
            <td>Biologische Eieren per 12</td>
            <td align="right">2</td>
            <td align="right">2,3</td>
            <td align="right">4,6</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>2136</td>
            <td>Gerijpte kaas 250 gr</td>
            <td align="right">3</td>
            <td align="right">4,99</td>
            <td align="right">14,97</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <th align="right">Subtotaal</th>
            <th align="right">32,01</th>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <th align="right">Transportkosten</th>
            <th align="right">6,62</th>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <th align="right">Eindtotaal Levering</th>
            <th align="right">72,78</th>
            <td>&nbsp;</td>
        </tr>
    </tbody>
</table>


### Opdracht
#### Opdracht 1
Zijn volgende uitspraken over de functionele afhankelijkheden correct? Geef ook telkens aan waarom:
<table width="100%">
    <thead>
        <th>Functioneel Afhankelijk</th>
        <th>Ja / Neen</th>
        <th>Reden</th>
    </thead>
    <tbody>
        <tr>
            <td>aflbonnr → klantnr</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>aflbonnr → bestelbonnr</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>aflbonnr, bestelbonnr → besteldatum</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>bestelbonnr, artnr → aantal</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>klantnr, artnr → besteldatum</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
</table>

---

#### Opdracht 2
Normaliseer tot en met de eerste normaalvorm. Klantnaam en klantadres zijn samengestelde gegevens.

---

#### Opdracht 3
Gegeven volgende normaalvormen en functionele afhankelijkheden:
- Normaalvorm X
    - R<sub>x1</sub>(<ins>aflbonnr</ins>, afldatum, klantnr, klvn, klfn, klstr, klhuisnr, klpc, klwnplaats)
    - R<sub>x2</sub>(<ins>aflbonnr, bestelbonnr</ins>)
    - R<sub>x3</sub>(<ins>bestelbonnr</ins>, besteldatum)
    - R<sub>x4</sub>(<ins>aflbonnr, bestelbonnr, artnr</ins>, aant)
    - R<sub>x5</sub>(<ins>artnr</ins>, artomschr, verkoopprijs)
- Normaalvorm Y
    - R<sub>y1</sub>(<ins>winkelnr</ins>, winkelnaam, (bestelbonnr, besteldatum, (artnr, bestelAantal, omschrijving, aankoopprijs)\*\)\*)
- Functionele afhankelijkheden
    - aflbonnr → afldatum, klantnr, klantnaam, klantadres
    - aflbonnr, bestelbonnr → besteldatum
    - aflbonnr, bestelbonnr, artnr → artomschr, aantal, verkoopprijs
    - bestelbonnr, artnr → aantal
    - bestelbonnr → besteldatum
    - artnr → artomschr, verkoopprijs
    - klantnr → klantnaam, klantadres
    - winkelnr → winkelnaam
    - winkelnr, bestelbonnr → besteldatum
    - bestelbonnr → besteldatum
    - winkelnr, bestelbonnr, artnr → bestelAantal, omschrijving, aankoopprijs
    - artnr → omschrijving
- Samenstellingen
    - klantNaam en auteurNaam bestaan beiden uit: voornaam en familienaam
    - adres bestaat uit: straat, huisnr, postcode, woonplaats

1. Geef aan in welke normaalvorm elke uitdrukking staat en leg uit.
2. Normaliseer elke normaalvorm tot en met de derde normaalvorm. 
3. Integreer tot 1 relationeel model

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-5.md)