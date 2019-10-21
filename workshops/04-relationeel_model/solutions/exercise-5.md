# Oefening 5 - Studentenresultaten

## Oplossing
- Student(<ins>stamNr</ins>, email, voornaam, achternaam, code, volgletter, jaar)
    - IR: `code, volgletter en jaar` verwijzen naar de verzameling `Klas` en is **verplicht**
- Vak(<ins>vakCode</ins>, studiepunten, omschrijving)
- Student_Vak(<ins>stamNr, vakCode</ins>, resultaat)
    - IR: `stamNr` verwijst naar de verzameling `Student` en is **verplicht**
    - IR: `vakCode` verwijst naar de verzameling `Vak` en is **verplicht**
- Leerkracht(<ins>stamboekNr</ins>, voornaam, achternaam)
- Klas(<ins>volgLetter, jaar, code</ins>, titularis)
    - IR: `titularis` verwijst naar het attribuuttype `stamBoekNr` in de verzameling `Leerkracht` en is **verplicht/uniek**
- Leerkract_Klas(<ins>vakCode, stamboekNr</ins>)
    - IR: `stamboekNr` verwijst naar de verzameling `Leerkracht` en is **verplicht**
    - IR: `vakCode` verwijst naar de verzameling `Vak` en is **verplicht**
- Richting(<ins>code</ins>, naam)


## Stappenplan
1. Elk entiteittype wordt een tupel verzameling of tabel ​
    - Student()
    - Vak()
    - Klas()
    - Leerkracht()
    - Richting()
2. Enkelvoudige attribuuttypes overnemen.​
    - Student(stamNr, email)
    - Vak(vakCode, studiepunten, omschrijving)
    - Leerkracht(stamboekNr)
    - Klas(volgLetter, jaar)
    - Richting(code, naam)
3. Samengestelde attribuuttypes opsplitsen in enkelvoudige attribuuttypes.​
    - Student(stamNr, email, voornaam, achternaam)
    - Vak(vakCode, studiepunten, omschrijving)
    - Leerkracht(stamboekNr, voornaam, achternaam)
    - Klas(volgLetter, jaar)
    - Richting(code, naam)
4. Meerwaardige attributen in een aparte, nieuwe verzameling plaatsen.​
    - niet van toepassing
5. Primaire sleutel bepalen.​
    - Student(<ins>stamNr</ins>, email, voornaam, achternaam)
    - Vak(<ins>vakCode</ins>, studiepunten, omschrijving)
    - Leerkracht(<ins>stamboekNr</ins>, voornaam, achternaam)
    - Klas(<ins>volgLetter, jaar, code</ins>)
        - Het zwakke entiteittype `Klas`, moet beroep doen op `code` van het enteittype `richting`.
    - Richting(<ins>code</ins>, naam)
6. Voor elke relatie (verband) tussen entiteittypes de vreemde sleutel(s) bepalen.​
    - Student(<ins>stamNr</ins>, email, voornaam, achternaam, code, volgletter, jaar)
        - Regel: 1 op N: Steeds de kant van de N-zijde, de 3 attribuuttypes van de entiteit `Klas` worden overgenomen.
    - Vak(<ins>vakCode</ins>, studiepunten, omschrijving)
    - Resultaat / Student_Vak(<ins>stamNr, vakCode</ins>, resultaat)
        - Regel: N op N: aparte verzameling met 2 vreemde sleutels​
    - Leerkracht(<ins>stamboekNr</ins>, voornaam, achternaam)
    - Klas(<ins>volgLetter, jaar, code</ins>, titularis)
        - Regel: 1 op 1: vreemde sleutel aan 1 zijde, kant van `Klas` omdat er minder NULL waarden zouden zijn.
    - Leerkract_Klas(<ins>vakCode, stamboekNr</ins>)
        - Regel: N op N: aparte verzameling met 2 vreemde sleutels​
    - Richting(<ins>code</ins>, naam)
7. Integriteitregels bepalen van elke vreemde sleutel.​
    - Student(<ins>stamNr</ins>, email, voornaam, achternaam, code, volgletter, jaar)
        - IR: `code, volgletter en jaar` verwijzen naar de verzameling `Klas` en is **verplicht**
    - Vak(<ins>vakCode</ins>, studiepunten, omschrijving)
    - Student_Vak(<ins>stamNr, vakCode</ins>, resultaat)
        - IR: `stamNr` verwijst naar de verzameling `Student` en is **verplicht**
        - IR: `vakCode` verwijst naar de verzameling `Vak` en is **verplicht**
    - Leerkracht(<ins>stamboekNr</ins>, voornaam, achternaam)
    - Klas(<ins>volgLetter, jaar, code</ins>, titularis)
        - IR: `titularis` verwijst naar het attribuuttype `stamBoekNr` in de verzameling `Leerkracht` en is **verplicht/uniek**
    - Leerkract_Klas(<ins>vakCode, stamboekNr</ins>)
        - IR: `stamboekNr` verwijst naar de verzameling `Leerkracht` en is **verplicht**
        - IR: `vakCode` verwijst naar de verzameling `Vak` en is **verplicht**
    - Richting(<ins>code</ins>, naam)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.