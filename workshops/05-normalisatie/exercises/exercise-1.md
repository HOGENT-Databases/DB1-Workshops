# 05 - Workshop Normalisatie

## Oefening 1 - Medewerkers

### Gegeven
| MedewerkerNr | MedewerkersNaam | ProjectNr 	| ProjectNaam 	| AantalUur 	|
|-------------	| ------------- |-----------	|-------------	|----------:	|
| 100         	| Kevin         | 1000      	| Hadoop      	|        50 	|
| 200         	| Els           | 1200      	| CRM         	|       100 	|
| 300         	| Annelies      | 1000      	| Hadoop      	|        40 	|
| 400         	| Martijn       | 1500      	| Java        	|       100 	|
| 500         	| Hugo          | 1000      	| Hadoop      	|       120 	|
|            	|               | 1500      	| Java         	|       100 	|

### Functionele Afhankelijkheden:​
- projectNr → projectNaam​
- medewerkerNr, projectNr → projectNaam, medewekerNaam, aantalUur
- medewerkerNr → medewekerNaam

### Opdracht
Normaliseer tot een relationeelmodel
- 0 NV
    - Welke gegevens komen 1 keer voor?
    - Welke gegevens herhalen zich?
    - Wat zijn procesgegevens of niet-relevante gegevens
    - Heeft het document een identificatie?
- 1 NV
    - Weglaten van procesgegevens
    - Wegwerken samengestelde attributen
    - Wegwerken herhaling
        - Herhalende gegevens in nieuwe verzameling(tabel) 
        - Sleutel oorspronkelijke verzameling mee overnemen
        - Bepalen sleutel nieuwe verzameling
- 2 NV
    - Wegwerken partiele afhankelijkheden
        - **Enkel** voor samengestelde sleutels
        - `A`, `B` → `C` : Als we `C` kunnen verkrijgen door enkel `A` **OF** `B`
            - Wordt `C` meegenomen in een een nieuwe verzameling met `A` of `B` als sleutel
        
- 3 NV
    - Wegwerken transitieve afhankelijkheden op basis van functionele afhankelijkheden
        - (`A` → `B`) en (`B` → `C`) en niet (`B` → `C`)
            - Met andere woorden, `C` is afhankelijk van `B` en niet van `A`
- Relationeel model
    - Benoemen van verzamelingen en integriteitsregels bepalen

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-1.md)