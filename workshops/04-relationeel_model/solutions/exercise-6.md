## Oefening 6 - Bedrijf - Firmawagens

## Oplossing
- Klant(<ins>klantNr</ins>, voornaam, achternaam, cpVoornaam, cpAchternaam)
- Medewerker(<ins>medewerkerNr</ins>, datumInDienst, loon, voornaam, achternaam)
- Arbeider(<ins>medewerkerNr</ins>, ploeg)​
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Bediende(<ins>medewerkerNr</ins>, maaltijdCheques)
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Verkoper(<ins>medewerkerNr</ins>, comissiePercentage)
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Klant/Verkoper(<ins>klantNr, medewerkerNr</ins>, omzet)​
    - IR: `klantNr` verwijst naar de verzameling `Klant` en is **verplicht**
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Firmawagen(<ins>nummerplaat</ins>, merk, verkoper)
    - IR: `verkoper` verwijst naar de verzameling `Verkoper` en is **verplicht, uniek**

## Stappenplan
1. Elk entiteittype wordt een tupel verzameling of tabel ​
    - Klant()
        - Regel: Mandatory, OR - geen tabel voor supertype, wel een aparte tabel voor elk subtype.
    - Medewerker()
        - Regel: Mandatory, OR - geen tabel voor supertype, wel een aparte tabel voor elk subtype.
        - Regel: Optional, OR - tabel voor elk type, zowel voor supertype als elk subtype.
        - Arbeider()
            - Regel: Optional, OR - tabel voor elk type, zowel voor supertype als elk subtype.
        - Bediende()
            - Regel: Optional, OR - tabel voor elk type, zowel voor supertype als elk subtype.
        - Verkoper()
            - Regel: Optional, OR - tabel voor elk type, zowel voor supertype als elk subtype.
    - Firmawagen()
2. Enkelvoudige attribuuttypes overnemen.​
    - Klant(klantNr)
        - we nemen het attribuuttype `persoonNummer` over van `persoon` maar noemen het `klantNr`
        - `naam` wordt nog niet overgenomen, het is een samengesteld attribuuttype.
        - `contactpersoon` wordt nog niet overgenomen, het is een samengesteld attribuuttype.
    - Medewerker(medewerkerNr, datumInDienst, loon)
        - we nemen het attribuuttype `persoonNummer` over van `persoon` maar noemen het `medewerkerNr`
        - `naam` wordt nog niet overgenomen, het is een samengesteld attribuuttype.
    - Arbeider (ploeg)​
        - Opgelet, we nemen geen attribuuttypes van het supertype over in een **Optional, OR**, later verwijzen we hier naar.
    - Bediende(maaltijdCheques)
        - Opgelet, we nemen geen attribuuttypes van het supertype over in een **Optional, OR**, later verwijzen we hier naar.
    - Verkoper(comissiePercentage)
        - Opgelet, we nemen geen attribuuttypes van het supertype over in een **Optional, OR**, later verwijzen we hier naar.
    - Firmawagen(nummerplaat, merk)
3. Samengestelde attribuuttypes opsplitsen in enkelvoudige attribuuttypes.​
    - Klant(klantNr, voornaam, achternaam, cpVoornaam, cpAchternaam)
    - Medewerker(medewerkerNr, datumInDienst, loon, voornaam, achternaam)
    - Arbeider (ploeg)​
        - Opgelet, we nemen geen attribuuttypes van het supertype over in een **Optional, OR**, later verwijzen we hier naar.
    - Bediende(maaltijdCheques)
        - Opgelet, we nemen geen attribuuttypes van het supertype over in een **Optional, OR**, later verwijzen we hier naar.
    - Verkoper(comissiePercentage)
        - Opgelet, we nemen geen attribuuttypes van het supertype over in een **Optional, OR**, later verwijzen we hier naar.
    - Firmawagen(nummerplaat, merk)
4. Meerwaardige attributen in een aparte, nieuwe verzameling plaatsen.​
    - niet van toepassing
5. Primaire sleutel bepalen.​
    - Klant(<ins>klantNr</ins>, voornaam, achternaam, cpVoornaam, cpAchternaam)
    - Medewerker(<ins>medewerkerNr</ins>, datumInDienst, loon, voornaam, achternaam)
    - Arbeider (ploeg)​
        - Regel : Optional, OR : in de volgende stap verwijzen we naar het supertype, dit zal dan ook de PK worden.
    - Bediende(maaltijdCheques)
            - Regel : Optional, OR : in de volgende stap verwijzen we naar het supertype, dit zal dan ook de PK worden.
    - Verkoper(comissiePercentage)
            - Regel : Optional, OR : in de volgende stap verwijzen we naar het supertype, dit zal dan ook de PK worden.
    - Firmawagen(<ins>nummerplaat</ins>, merk)
6. Voor elke relatie (verband) tussen entiteittypes de vreemde sleutel(s) bepalen.​
    - Klant(<ins>klantNr</ins>, voornaam, achternaam, cpVoornaam, cpAchternaam)
    - Medewerker(<ins>medewerkerNr</ins>, datumInDienst, loon, voornaam, achternaam)
    - Arbeider(<ins>medewerkerNr</ins>, ploeg)​
        - Regel: Optional, OR: verwijzen naar supertype
    - Bediende(<ins>medewerkerNr</ins>, maaltijdCheques)
        - Regel: Optional, OR: verwijzen naar supertype
    - Verkoper(<ins>medewerkerNr</ins>, comissiePercentage)
        - Regel: Optional, OR: verwijzen naar supertype
    - Klant/Verkoper(<ins>klantNr, medewerkerNr</ins>, omzet)​
        - Regel: N op N: aparte verzameling met 2 vreemde sleutels​
    - Firmawagen(<ins>nummerplaat</ins>, merk, verkoper)
        - Regel: 1 op 1: vreemde sleutel aan 1 zijde, kant van `Firmawagen` omdat er minder firmawagens zijn dan medewerkers, minder NULL waarden.
7. Integriteitregels bepalen van elke vreemde sleutel.​
    - Klant(<ins>klantNr</ins>, voornaam, achternaam, cpVoornaam, cpAchternaam)
    - Medewerker(<ins>medewerkerNr</ins>, datumInDienst, loon, voornaam, achternaam)
    - Arbeider(<ins>medewerkerNr</ins>, ploeg)​
        - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
    - Bediende(<ins>medewerkerNr</ins>, maaltijdCheques)
        - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
    - Verkoper(<ins>medewerkerNr</ins>, comissiePercentage)
        - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
    - Klant/Verkoper(<ins>klantNr, medewerkerNr</ins>, omzet)​
        - IR: `klantNr` verwijst naar de verzameling `Klant` en is **verplicht**
        - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
    - Firmawagen(<ins>nummerplaat</ins>, merk, verkoper)
        - IR: `verkoper` verwijst naar de verzameling `Verkoper` en is **verplicht, uniek**

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.