# Oefening 5 - Biowinkel

## Oplossing
### Opdracht 1
Zijn volgende uitspraken over de functionele afhankelijkheden correct? Geef ook telkens aan waarom:
<table width="100%">
    <thead>
        <th>Functioneel Afhankelijk</th>
        <th>Ja / Neen</th>
        <th>Reden</th>
    </thead>
    <tbody>
        <tr>
            <td width="40%">aflbonnr → klantnr</td>
            <td>Ja</td>
            <td>per afleverbon slechts één klant</td>
        </tr>
        <tr>
            <td>aflbonnr → bestelbonnr</td>
            <td>Neen</td>
            <td>per aflbon kunnen er meerdere bestellingen zijn</td>
        </tr>
        <tr>
            <td>aflbonnr, bestelbonnr → besteldatum</td>
            <td>Ja</td>
            <td>bestelbonnr is determinant van besteldatum</td>
        </tr>
        <tr>
            <td>bestelbonnr, artnr → aantal</td>
            <td>Ja</td>
            <td>slechts één aantal van bepaald artikel per bestelling</td>
        </tr>
        <tr>
            <td>klantnr, artnr → besteldatum</td>
            <td>Neen</td>
            <td>dezelfde klant kan hetzelfde artikel op meerdere datums bestellen</td>
        </tr>
    </tbody>
</table>

--- 

### Opdracht 2
Normaliseer tot en met de eerste normaalvorm. Klantnaam en klantadres zijn samengestelde gegevens.
- 0NV
    - R<sub>0</sub>(<ins>aflbonnr</ins>, afldatum, klantnr, klvn, klfn, klstr, klhsnr, klpc, klwnpl, (bestelbonnr, besteldat, (artnr, artomschr, aant, prijs)\*\)\*)
- 1NV
    - R<sub>11</sub>(<ins>aflbonnr</ins>, afldatum, klantnr, klvn, klfn, klstr, klhsnr, klpc, klwnpl)
    - R<sub>12</sub>(<ins>aflbonnr, bestelbonnr</ins>, besteldat)
    - R<sub>13</sub>(<ins>aflbonnr, bestelbonnr, artnr</ins>, artomschr, aant, prijs) 

--- 

### Opdracht 3
#### 3.1 Geef aan in welke normaalvorm elke uitdrukking staat en leg uit.
- Normaalvorm X staat in 1NV want deze bevat nog partiële afhankelijkheden (bestelbonnr, artnr --> aant).
- Normaalvorm Y staat in 0NV want deze bevat nog herhalende groepen.

#### 3.2 Normaliseer elke normaalvorm tot en met de derde normaalvorm. 
##### Normaalvorm X

1NV naar 2NV  

- R<sub>21</sub>(<ins>aflbonnr</ins>, afldatum, klantnr, klvn, klfn, klstr, klhuisnr, klpc,klwnplaats)
- R<sub>22</sub>= R<sub>22</sub>
- R<sub>23</sub>= R<sub>23</sub>
- R<sub>24</sub>(<ins> aflbonnr, bestelbonnr, artnr</ins>)
- R<sub>25</sub>= R<sub>25</sub>
- R<sub>26</sub>(<ins>bestelbonnr, artnr</ins>, aant)

2NV naar 3NV

- R<sub>31</sub>(<ins>aflbonnr</ins>, afldatum, klantnr)
- R<sub>32</sub>(<ins>klantnr</ins>, klvn, klfn, klstr, klhuisnr, klpc,klwnplaats)
- R<sub>33</sub>= R<sub>22</sub>
- R<sub>34</sub>= R<sub>23</sub>
- R<sub>35</sub>= R<sub>24</sub>
- R<sub>36</sub>= R<sub>25</sub>
- R<sub>37</sub>= R<sub>26</sub>

##### Normaalvorm Y
- 1NV
    - R<sub>11</sub>(<ins>winkelnr</ins>, winkelnaam)
    - R<sub>12</sub>(<ins>winkelnr, bestelbonnr</ins>, besteldatum) 
    - R<sub>13</sub>(<ins>winkelnr, bestelbonnr, artnr</ins>, bestelAantal, omschrijving, aankoopprijs)
- 2NV
    - R<sub>21</sub> = R<sub>11</sub>
    - R<sub>22</sub>(<ins>winkelnr, bestelbonnr</ins>)
    - R<sub>23</sub>(<ins>bestelbonnr</ins>, besteldatum)  
    - R<sub>24</sub>(<ins>winkelnr, bestelbonnr, artnr</ins>, bestelAantal, aankoopprijs)
    - R<sub>25</sub>(<ins>artnr</ins>, omschrijving)
- 3NV
    - 3NV = 2NV, er zijn geen transitieve afhankelijkheden.

#### 3.3 Integreer tot 1 relationeel model
- AFLEVERBON(<ins>aflbonnr</ins>, afldatum, klantnr)
    - IR: `klantnr` verwijst naar de verzameling `Klant` en is **???**
- KLANT(<ins>klantnr</ins>, klvn, klfn, klstr, klhuisnr, klpc, klwnplaats)
- AFLEVERBON/BESTELBON(<ins>aflbonnr, bestelbonnr</ins>)
    - IR: `aflbonnr` verwijst naar de verzameling `Afleverbon` en is **verplicht**
    - IR: `bestelbonnr` verwijst naar de verzameling `Bestelbon` en is **verplicht**
- BESTELBON(<ins>bestelbonnr</ins>, besteldatum)
- VERZENDING_BESTELLING(<ins>aflbonnr, bestelbonnr, artnr</ins>, aant)
    - IR: `aflbonnr` verwijst naar de verzameling `Afleverbon` en is **verplicht**
    - IR: `bestelbonnr` verwijst naar de verzameling `Bestelbon` en is **verplicht**
    - IR: `artnr` verwijst naar de verzameling `Artikel` en is **verplicht**
- ARTIKEL(<ins>artnr</ins>, artomschr, verkoopprijs)    
- WINKEL(<ins>winkelnr</ins>, winkelnaam)
- WINKELBESTELLING(<ins>winkelnr, bestelbonnr</ins>)
    - IR: `winkelnr` verwijst naar de verzameling `Winkel` en is **verplicht**
- DETAILWINKELBESTELLING(<ins>winkelnr, bestelbonnr, artnr</ins>, bestelAantal, aankoopprijs)
    - IR: `winkelnr, bestelbonnr` verwijst naar de verzameling `Winkelbestelling` en is **verplicht**
    - IR: `artnr` verwijst naar de verzameling `Artikel` en is **verplicht**

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
