## Oefening 1 - Bedrijf : Personeel

## Oplossing
1. Welke **entiteittypes** zijn er ?
    - `Personeelslid` en `Afdeling`
2. Niet alles is duidelijk uit dit voorbeeld dus welke vragen ga je stellen om tot een eenduidig schema te komen?
    - Hoe wordt een `personeelslid` uniek geïdentificeerd?
        - Elk `personeelslid` heeft een uniek `personeelsnummer`.
    - Moet elk `personeelslid` op een bepaalde afdeling werken?
        - Ja, elk `personeelslid` moet op een bepaalde afdeling werken.
    - Kan een `personeelslid` op meerdere `afdelingen` werken?
        - Neen, elk `personeelslid` kan slechts op 1 `afdeling` werken.
    - Hoe wordt een afdeling uniek geïdentificeerd?
        - Via een unieke `code`.
    - Moet een `afdeling` `personeelsleden` hebben?
        - Neen, sommige `afdelingen` hebben zelfs geen `personeelsleden`.
        
## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.