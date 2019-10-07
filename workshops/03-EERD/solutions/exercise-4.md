# Oefening 4 - Tijdschrift

## Oplossing
<img src="./exercise-4.svg">

## Opmerkingen
- Een **Generalisatie/Specificatie** van auteur is minder interessant voor deze oefening.
    - De `Externe` hoeft steeds een `Taal` mee te geven, wat bij een `Personeelslid` niet moet.
        > Wanneer een artikel door een externe auteur wordt geschreven, wordt ook vermeld in welke taal het oorspronkelijk werd geschreven.​
    - Een take-away van deze oefening is om niet steeds alles te willen **generaliseren**, lees elke opdracht steeds tot op het einde.
- Relatie `Artikel` heeft als auteur `Personeelslid`
    - Optioneel aangezien een `auteur` ook een `Externe` kan zijn.
- Relatie `Artikel` heeft als auteur `Externe`
    - Optioneel aangezien een `auteur` ook een `Personeelslid` kan zijn.
- Relatie `Tijdschrift` heeft editie `TijdschriftNummer` 
    - Het is niet duidelijk of een tijdschrift steeds een verplicht nummer moet hebben.


## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.