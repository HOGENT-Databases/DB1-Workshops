# 03 - Workshop EERD

## Oefening 5 - Rally
We willen een database maken met gegevens van de behaalde uitslagen van rallywedstrijden. Een wedstrijd heeft een unieke naam. Tijdens een wedstrijd worden meerdere ritten gereden, die genummerd worden per wedstrijd. Van elke rit wordt de afstand en de start- en eindlocatie bijgehouden. Verschillende ritten kunnen starten en eindigen op dezelfde of een andere locatie. Elke locatie heeft een straat, gemeente en het land waar die zich bevindt, deze combinatie is uniek. Zo’n locatie is ofwel een circuit, waarvan het aantal laps wordt bijgehouden, of een rallyroad, waarvan we de maximale lengte bijhouden.​

Een ploeg moet wedstrijdgeld betalen voor een wedstrijd. Dit kan verschillen per ploeg. Een ploeg heeft een unieke naam en bestaat uit piloten. Per ploeg krijgen de piloten een oplopend nummer. Verder heeft elke piloot een naam en een leeftijd en behoort steeds tot 1 ploeg. Van een ploeg houden we ook nog de sponsor en de naam van de directeur bij. Een ploeg heeft enkele techniekers, maar aangezien er altijd wel iets kan mislopen, is er minstens 1 per ploeg aanwezig. Een technieker kan werken voor verschillende ploegen, echter kan een technieker ook werkloos zijn.

Elke technieker heeft een uniek nummer, een rekeningnummer, een naam ​ en een loon per uur. ​ Er is een technieker aangesteld als hoofd van alle techniekers binnen eenzelfde team. Voor een piloot die deelneemt aan een wedstrijd wordt per rit zijn resultaat (positie) genoteerd. Men wil ook een klassement per ploeg kunnen tonen waarbij de eerste 10 renners punten krijgen. De eerste renner krijgt 10 punten, de tweede 9, …. De tiende renner krijgt nog 1 punt.​

### Opdracht
1. Teken de **entiteittypes**
2. Vul de **attribuuttypes** voor de `entiteittypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutels**
5. Teken de **specificaties/generalisaties** op de correcte manier

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-5.md)