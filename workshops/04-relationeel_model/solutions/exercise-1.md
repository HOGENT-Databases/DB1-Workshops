# Oefening 1 - 1 op veel

## Oplossing
1. Elk entiteittype wordt een tupel verzameling of tabel ​
    - Leverancier()
    - Grondstof()
2. Enkelvoudige attribuuttypes overnemen.​
    - Leverancier(leverancierNr, naam)
    - Grondstof(code, naam, eenheidsprijs)
3. Samengestelde attribuuttypes opsplitsen in enkelvoudige attribuuttypes.​
    - Leverancier(leverancierNr, naam, straat, gemeente, land)
        - adres is een samengesteld attribuuttype, dus we splitsen dit op.
    - Grondstof(code, naam, eenheidsprijs)
        - niet van toepassing
4. Meerwaardige attributen in een aparte, nieuwe verzameling plaatsen.​
    - niet van toepassing
5. Primaire sleutel bepalen.​
    - Leverancier(<ins>leverancierNr</ins>, naam, straat, gemeente, land)
    - Grondstof(<ins>code</ins>, naam, eenheidsprijs)
6. Voor elke relatie (verband) tussen entiteittypes de vreemde sleutel(s) bepalen.​
    - Leverancier(<ins>leverancierNr</ins>, naam, straat, gemeente, land)
        - niet van toepassing, de vreemde sleutel of foreign key ligt steeds aan de veel kant
    - Grondstof(<ins>code</ins>, naam, eenheidsprijs, leverancierNr)
7. Integriteitregels bepalen van elke vreemde sleutel.​
    - Leverancier(<ins>leverancierNr</ins>, naam, straat, gemeente, land)
    - Grondstof(<ins>code</ins>, naam, eenheidsprijs, leverancierNr)
        - IR: leverancierNr verwijst naar de verzamling `Leverancier` en is **verplicht**
            - Verplicht vanwege de minimumcardinaliteit.

## Schematisch Alternatief
<img src="./exercise-1.svg">

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
