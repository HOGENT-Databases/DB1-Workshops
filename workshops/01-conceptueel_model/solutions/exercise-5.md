## Oefening 5 - Concerten
Merk op dat:
- "Eens een `concert` afgelopen, wordt het verwijderd uit de Databank"
    - Met andere woorden zijn deze nadien optioneel, dus de **minimum cardinaliteit** is steeds 0
- `Artiesten`, `locaties` en `prijscategorieën` worden niet mee verwijderd 
    - Geen historiek
- De relatie `Locatie` heeft `Concert` kan niet helemaal bepaald worden op basis van de gegevens, daarom wordt er `0..?` geplaatst.
    - Met andere woorden moeten we terug naar de opdrachtgever om extra vragen te stellen.
    - minimumcardinaliteit `0` weten we wel door het volgende gegeven:
    > Eens een `concert` afgelopen is, wordt het verwijderd uit de databank. Uiteraard worden de `locaties`, `artiesten` en `prijzen` niet verwijderd als een `concert` afgelopen is. 
- De relatie `Concert` op `Locatie` kan niet helemaal bepaald worden op basis van de gegevens, daarom wordt er `?..?` geplaatst.
    - Met andere woorden moeten we terug naar de opdrachtgever om extra vragen te stellen.
    - Opgelet, er wordt wel gesproken van **de locatie**, echter zouden we hier kunnen veronderstellen dat het slechts op 1 locatie is. Om misverstanden te vermijden, ga je best terug naar de opdrachtgever.


## Oplossing

<img src="./exercise-5.svg">

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.