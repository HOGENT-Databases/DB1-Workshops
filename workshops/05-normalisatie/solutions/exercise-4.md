# Oefening 4 - Verhuurkantoor

## Oplossing
### 2NV

- R<sub>21</sub>(<ins>eigenaarNN</ins>, eigenaarnaam, eigenaarstraat, eigenaarwoonplaats,eigenaarpostcode, eigenaarberoep)
    - Is hetzelfde als = R<sub>11</sub>
- R<sub>22</sub>(<ins>eigenaarNN, volgnummer</ins>, straatPand, stadPand, postcodePand, huurprijsPand, opcentiemen)
    - Is hetzelfde als = R<sub>12</sub>
- R<sub>23</sub>(<ins>huurderNN</ins>, huurdernaam, huurderstraat, huurderwoonplaats, huurderpostcode, huurdermaandinkomen)
    - Is hetzelfde als = R<sub>13</sub>
- R<sub>24</sub>(<ins>eigenaarNN, huurderNN, volgnummer</ins>, begindatumHuurcontract, postcodeStadOndertekening, naamStadOndertekening, notarisNN, notarisnaam)
    - Is hetzelfde als = R<sub>14</sub>
- R<sub>25</sub>(<ins>eigenaarNN, volgnummer, datum</ins>, oorzaak, afhandelingsprocedure)
    - Is hetzelfde als = R<sub>15</sub>

### 3NV
- R<sub>31</sub>(<ins>eigenaarNN</ins>, eigenaarnaam, eigenaarstraat, eigenaarpostcode, eigenaarberoep)​
- R<sub>32</sub>(<ins>eigenaarpostcode</ins>, eigenaarwoonplaats)​
- R<sub>33</sub>(<ins>eigenaarNN, volgnummer</ins>, straatPand, postcodePand, huurprijsPand)​
- R<sub>34</sub>(<ins>postcodePand</ins>, stadPand, opcentiemen)​
- R<sub>35</sub>(<ins>huurderNN</ins>, huurdernaam, huurderstraat, huurderpostcode, huurdermaandinkomen)​
- R<sub>36</sub>(<ins>huurderpostcode</ins>, huurderwoonplaats)​
- R<sub>37</sub>(<ins>eigenaarNN , volgnummer, huurderNN</ins>, begindatum huurcontract, postcodeStadOndertekening, notarisNN)​
- R<sub>38</sub>(<ins>postcodeStadOndertekening</ins>, naamStadOndertekening)​
- R<sub>39</sub>(<ins>notarisNN</ins>, notarisnaam)​
- R<sub>310</sub>(<ins>eigenaarNN, volgnummer, datum</ins>, oorzaak)​
- R<sub>311</sub>(<ins>oorzaak</ins>, afhandelingsprocedure)​

### Relationeel Model
- Persoon(<ins>NN</ins>, naam, straat, postcode, beroep, maandinkomen)​
    - IR: `postcode` verwijst naar de verzameling `Stad` en is **optioneel**
- Stad(<ins>postcode</ins>, woonplaats, opcentiemen)​
- Pand(<ins>eigenaarNN, volgnummer</ins>, straatPand, postcodePand, huurprijsPand)​
    - IR: `eigenaarNN` verwijst naar de verzameling `Persoon` en is **verplicht**
    - IR: `postcodePand` verwijst naar de verzameling `Stad` en is **optioneel**
- Contract(<ins>eigenaarNN , volgnummer, huurderNN</ins>, begindatum huurcontract, postcodeStadOndertekening, notarisNN)​
    - IR: `eigenaarNN, volgnummer` verwijst naar de verzameling `Pand` en is **verplicht**
    - IR: `notarisNN` verwijst naar de verzameling `Persoon` en is **optioneel​**
    - IR: `huurderNN` verwijst naar de verzameling `Persoon` en is **verplicht**
    - IR: `postcodeStadOndertekening` verwijst naar de verzameling `Stad` en is **optioneel**
- Schade(<ins>eigenaarNN, volgnummer, datum</ins>, oorzaak)​
    - IR: `eigenaarNN, volgnummer` verwijst naar de verzameling `Pand` en is **verplicht**
    - IR: `oorzaak` verwijst naar de verzameling `Oorzaak` en is **optioneel​**
- Oorzaak(<ins>oorzaak</ins>, afhandelingsprocedure)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.