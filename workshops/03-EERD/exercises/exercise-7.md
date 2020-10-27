# 03 - Workshop EERD

## Oefening 7 - Labo 'SampleMe'
> Deze oefening werkt niet verder op een vorige oefening.

<i>Labo SampleMe</i> is een privé-instelling die zijn diensten aanbiedt aan verschillende ziekenhuizen in ons land. Het is de taak van het labo om deze stalen te analyseren. Deze stalen kunnen ofwel bloedstalen of urinestalen zijn. Van elk staal houdt Labo SampleMe bij wat het unieke staalID is, de omschrijving, de afname datum en of het staal al werd geanalyseerd. Als het gaat om een bloedstaal, kennen we ook graag de bloedgroep. Bij een urinestaal weten we ook graag of de pH-waarde moet onderzocht worden. Een urinestaal kan een vervolg zijn op een ander urinestaal, bvb. na 1 week nog eens opnieuw laten testen. Indien dit het geval is, moeten we ook de vorige staal/stalen kennen.

Naast gewone bloedstalen, hebben we nog bloedstalen specifiek voor analyse op COVID-19 antistoffen. In dit geval houden we nog extra een anonieme tracingID bij. Indien het staal positief blijkt, kan de contact tracing dan opgestart worden. Mogelijks gaat het ook om een bloedstaal die kadert in een gerechtelijk onderzoek. In dit geval kennen we graag het politiedossiernummer en willen we weten of het een staal is die met prioriteit moet behandeld worden. Bloedstalen kunnen uiteraard zowel COVID-19 als gerechtelijk gerelateerd zijn.

Elke staal heeft ook één of meerdere eigenschappen (bvb. triglyceriden, cholesterol, glucose, …) die worden bekeken. Van zo een eigenschap wordt een unieke code bijgehouden. Naast de code weten we ook graag de naam van de eigenschap en de effectieve waarde. Deze waarden zijn pas bekend na analyse van het staal.

Stalen behoren steeds tot exact één patiënt. Een patiënt wordt in ons systeem gekenmerkt door een uniek patiënt_id. Verder kennen we de naam en het geslacht van de patiënt. 
Een patiënt is ook verplicht aangesloten bij één mutualiteit. De mutualiteit wordt geïdentificeerd aan de hand van een  mutualiteit_id. Elke mutualiteit heeft ook een niet-unieke naam en adres.

Een staal wordt steeds aangevraagd door één of meer artsen. Er is per staal wel telkens een hoofdarts. Het spreekt voor zich dat artsen bij ons meerdere stalen kunnen laten analyseren. Onze resultaten van de staalanalyse worden per email verstuurd naar de arts(en). Van een arts kennen we ook het riziv_nr, naam en zijn/haar specialisatie. Een arts kan tot meerdere (minstens één) hospitalen behoren. Van een hospitaal kennen het unieke HID, de naam van het hospitaal en het adres. Een hospitaal heeft uiteraard meerdere artsen in dienst en we houden geen hospitalen bij waarvan we de arts(en) niet kennen.

### Opdracht
1. Teken de **entiteittypes**
2. Vul de **attribuuttypes** voor de `entiteittypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutels**
5. Teken de **specificaties/generalisaties** op de correcte manier

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-7.md)


