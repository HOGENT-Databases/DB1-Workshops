# 05 - Workshop Normalisatie

## Oefening 4 - Verhuurkantoor
We willen een relationeel model opmaken voor een relationele databank waar informatie wordt opgeslagen over eigenaars en huurders van panden, de huurcontracten die worden afgesloten en de verschillende schadegevallen die reeds aangegeven zijn. Eigenaar, notaris en huurder zijn allemaal natuurlijke personen. Van deze natuurlijke personen is alleen het nationaal nummer(NN) en de naam verplicht. Alle overige gegevens moeten niet altijd ingevuld zijn.

### Functionele Afhankelijkheden:​
- postcode → woonplaats (= stad), opcentiemen
- eigenaarNN, volgnummer → eigenaarnaam, straatPand, stadPand, postcodePand, huurprijsPand, opcentiemen
- NN → naam, straat, woonplaats, postcode, beroep, maandinkomen
- eigenaarNN, huurderNN, volgnummer → begindatumHuurcontract, huurdernaam, postcodeStadOndertekening, naamStadOndertekening, notarisNN, notarisnaam
- eigenaarNN, volgnummer, datum → oorzaak, afhandelingsprocedure
- oorzaak → afhandelingsprocedure

### 1 NV
Onderstaande relaties staan in de eerste normaalvorm. Normaliseer verder en geef het uiteindelijk relationeel model.
- R<sub>11</sub>(<ins>eigenaarNN</ins>, eigenaarnaam, eigenaarstraat, eigenaarwoonplaats,eigenaarpostcode, eigenaarberoep)
- R<sub>12</sub>(<ins>eigenaarNN, volgnummer</ins>, straatPand, stadPand, postcodePand, huurprijsPand, opcentiemen)
- R<sub>13</sub>(<ins>huurderNN</ins>, huurdernaam, huurderstraat, huurderwoonplaats, huurderpostcode, huurdermaandinkomen)
- R<sub>14</sub>(<ins>eigenaarNN, huurderNN, volgnummer</ins>, begindatumHuurcontract, postcodeStadOndertekening, naamStadOndertekening, notarisNN, notarisnaam)
- R<sub>15</sub>(<ins>eigenaarNN, volgnummer, datum</ins>, oorzaak, afhandelingsprocedure)


### Opdracht
Normaliseer tot een relationeelmodel
- 2 NV
    - Wegwerken partiele afhankelijkheden
- 3 NV
    - Wegwerken transitieve afhankelijkheden
- Relationeel model
    - Benoemen van verzamelingen en integriteitsregels bepalen

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-4.md)
