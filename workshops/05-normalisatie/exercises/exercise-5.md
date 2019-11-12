# 05 - Workshop Normalisatie

## Oefening 5 - Biowinkel
Een biowinkel levert maandelijks de bestelde artikelen bij haar klanten. Hiervoor wordt per klant een afleverbon gemaakt met alle bestellingen van de klant in die maand. Voor het afleveren van de bestelde producten wordt een transportkost van 10% aangerekend.

### Voorbeeld Documenten
<body>
    <table>
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
</body>


### Opdracht
1. Zijn volgende uitspraken over de functionele afhankelijkheden correct? Geef ook telkens aan waarom:






Normaliseer tot een relationeelmodel
- 2 NV
    - Wegwerken partiele afhankelijkheden
- 3 NV
    - Wegwerken transitieve afhankelijkheden
- Relationeel model
    - Benoemen van verzamelingen en integriteitsregels bepalen

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-4.md)