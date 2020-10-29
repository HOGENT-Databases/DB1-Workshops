# Oefening 7 - Labo 'SampleMe'

## Oplossing
<img src="./exercise-7.svg">

## Ontleding
> Deze stalen kunnen **ofwel** bloedstalen **of** urinestalen zijn. Van elk **staal** houdt Labo SampleMe bij wat het <ins>unieke staalID</ins> is, de omschrijving, de afname datum en of het staal al werd geanalyseerd. 
> Als het gaat om een bloedstaal, kennen we ook graag de bloedgroep. Bij een urinestaal weten we ook graag of de pH-waarde moet onderzocht worden.
- Entiteittypes
    - `Staal, Bloedstaal, Urinestaal`
- Specialisatie
    - `Mandatory`
        - ofwel
    - `OR`
        - of

> Een urinestaal **kan een** vervolg zijn op **een ander urinestaal**, bvb. na 1 week nog eens opnieuw laten testen. 
> Indien dit het geval is, moeten we ook de vorige **staal/stalen** kennen.
- Relatie `isVervolgOp`
    - `0..1` 
        - kan een (optioneel) 
        - een ander urinestaal (enkelvoud)
    - `0..N`
        - kan een (optioneel)
        - vorige staal/stalen kennen (meervoud)

> **Naast gewone bloedstalen**, hebben we nog bloedstalen specifiek voor analyse op **COVID-19** antistoffen. In dit geval houden we nog extra een anonieme tracingID bij. Indien het staal positief blijkt, kan de contact tracing dan opgestart worden. Mogelijks gaat het ook om een bloedstaal die kadert in een **gerechtelijk onderzoek**. In dit geval kennen we graag het politiedossiernummer en willen we weten of het een staal is die met prioriteit moet behandeld worden. Bloedstalen kunnen uiteraard **zowel** COVID-19 als gerechtelijk gerelateerd zijn.
- Entiteittypes
    - `COVID-19` en `Gerechtelijk`
- Specialisatie
    - `Optional`
        - Naast gewone bloedstalen
    - `AND`
        - zowel

> Elke staal heeft ook **één of meerdere** eigenschappen (bvb. triglyceriden, cholesterol, glucose, …) die worden bekeken. Van zo een eigenschap wordt een <ins>unieke code </ins> bijgehouden. Naast de code weten we ook graag de naam van de eigenschap en de effectieve waarde. Deze waarden zijn pas bekend na analyse van een staal.
- Entiteittypes
    - `Eigenschap`
- Relaties
    - Staal heeft Eigenschappen
        - `1..N`
            - één of meerdere eigenschappen
        - `0..N`
            - logische redenering, een eigenschap kan voor meerdere of geen enkel staal dienen.
        - `waarde`
            - de relatie tussen `staal` en `eigenschap` is een veel-op-veel relatie. 
            - de eigenschap zelf kan je zien als een definitie  die we meerdermaals herbruiken voor meerdere stalen.
            - de `waarde` is specifiek voor een bepaald staal en een bepaalde eigenschap.
            - het is foutief om de `waarde` op te nemen in het entiteitstype `Eigenschap`.
- Voorbeeld in tabelvorm
    - [TODO]

> Stalen behoren steeds tot **exact één patiënt**. Een patiënt wordt in ons systeem gekenmerkt door een <ins>uniek patiënt_id</ins>. Verder kennen we de naam en het geslacht van de patiënt. De patiënt **hoeft geen** stalen te hebben afgegeven om ons systeem opgenomen te worden, daarnaast worden sommige patiënten **meerdermaals** getest. Een patiënt is ook **verplicht** aangesloten bij **één** mutualiteit. De mutualiteit wordt <ins>geïdentificeerd</ins> aan de hand van een <ins>mutualiteit_id</ins>. Elke mutualiteit heeft ook een niet-unieke naam en adres.
- Entiteittypes
    - `Patiënt` en `Mutualiteit`
- Relaties
    - `Staal` behoort toe aan `Patiënt`
        - `1..1`
            - exact één patiënt
        - `0..N`
            - hoeft geen... maar meerdermaals getest
    - `Patiënt` is aangesloten bij `Mutaliteit`
        - `1..1`
            - verplicht aangesloten bij één
        - `0..N`
            - logische redenatie, een mutualiteit heeft geen of meerdere patiënten.

> Een staal wordt steeds aangevraagd door **één of meer artsen**. Er is per staal wel telkens een hoofdarts. Het spreekt voor zich dat artsen bij ons **meerdere** stalen kunnen laten analyseren. Onze resultaten van de staalanalyse worden per email verstuurd naar de arts(en). Van een arts kennen we ook het <ins>unieke riziv_nr</ins>, naam en zijn/haar specialisatie. Een arts **kan tot meerdere (minstens één)** hospitalen behoren. Van een hospitaal kennen het <ins>unieke HID</ins>, de naam van het hospitaal en het adres. Een hospitaal heeft uiteraard meerdere artsen in dienst en we houden geen hospitalen bij waarvan we de arts(en) niet kennen.
- Entiteittypes
    - `Arts` en `Hospitaal`
- Relaties
    - `Staal` werd aangevraagd door `Arts`
        - `1..N`
            - één of meer artsen
        - `0..N`
            - meerdere stalen, het optioneel zijn is een logische redenatie.
        - `waarde`
            - de relatie tussen `arts` en `staal` is een veel-op-veel relatie. 
            - de `isHoofdarts` is specifiek voor een bepaald staal en een bepaalde arts.
            - het is foutief om de `isHoofdarts` op te nemen in het entiteitstype `Arts`.
            > Opmerking het is ook mogelijke om een tweede relatie `isHoofdaanvrager` te maken tussen `Arts` en `Staal` waarbij de cardinalteiten `1..1` (exact door 1 arts) en `0..N` (een arts kan hoofdaanvrager zijn van geen of meerdere stalen) gelden.
    - `Arts` behoort tot `Hospitaal`
        - `1..N`
            - kan tot meerdere (minstens één)
        - `1..N`
            - we houden geen hospitalen bij waarvan we de arts(en) niet kennen.

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
