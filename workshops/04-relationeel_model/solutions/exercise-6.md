## Oefening 6 - Bedrijf - Firmawagens

## Opmerkingen
- **VS** staat voor **Vreemde Sleutel** of **Foreign Key**

## Oplossing
- Medewerker(medewerkerNr, voornaam, famnaam, datumInDienst, loon)​
- Klant (klantNr, voornaam, famnaam)​
- Arbeider (medewerkerNr, ploeg)​
    - VS medewerkerNr verwijst naar Medewerker, verplicht​
- Bediende (medewerkerNr, maaltijdCheques)​
    - VS medewerkerNr verwijst naar Medewerker, verplicht​
- Verkoper (medewerkerNr, percentOpVerkoop)​
    - VS medewerkerNr verwijst naar Medewerker, verplicht​
- Klant/Verkoper (klantNr, medewerkerNr, omzet)​
    - VS klantNr verwijst naar Klant, verplicht​
    - VS medewerkerNr verwijst naar Verkoper, verplicht​
- Firmawagen (nrPlaat, merk, verkoper)​
    - VS verkoper verwijst naar medewerkerNr uit Verkoper verplicht, uniek

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.