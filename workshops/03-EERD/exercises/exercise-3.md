# 03 - Workshop EERD

## Oefening 3 - Ziekenhuis
Een ziekenhuis wil de bezoeken van zijn patiënten bijhouden in een databank. Van elke patiënt houden we de volgende gegevens bij: naam, voornaam en een uniek patiëntnummer.

Er bestaan twee soorten bezoeken aan het ziekenhuis, een dagbezoek en een opname.  Een bezoek is steeds van één bepaalde patiënt voor één bepaalde dokter.  Andere bezoeken zijn er niet. Het kan voorvallen dat een dagbezoek uitmondt in een opname. De twee soorten bezoeken bezitten enkele gemeenschappelijke elementen zoals het uur en de datum waarop de patiënt zich aanmeldde. 

Een bezoek wordt geïdentificeerd aan de hand van identificatie patiënt, datum en uur van het bezoek. Een patiënt kan uiteraard meerdere bezoeken hebben bij dezelfde of andere dokters.

Bij een dagbezoek houden we extra gegevens bij: 
- wanneer de patiënt moet terugkomen (datum & uur). 

Bij een opname: 
- de datum waarop de patiënt terug naar huis mag en in welk bed de patiënt ligt

Een bed hoort steeds bij een kamer en heeft een nummer dat uniek is binnen deze kamer. (bv. kamer 14, bed 3). Het kan voorkomen dat er in bepaalde kamers van het ziekenhuis geen bedden staan. Van een kamer houden we de verdieping en het kamernummer bij. Deze samen identificeren een kamer.

Elk bezoek is voor één bepaalde dokter. Van elke dokter houden we bij: naam, specialisatie,  riziv-nr, een riziv-nr is een uniek nummer per doktor.

Bij elk bezoek is het ook mogelijk dat er één of meerdere verplegers moeten komen helpen. Er moet dus bijgehouden worden welke verplegers bij welk bezoek hebben geholpen. Van de verplegers zelf houden we hun naam en uniek nr bij.

### Opdracht
1. Teken de **entiteittypes**
2. Vul de **attribuuttypes** voor de `entiteittypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutels**
5. Teken de **specificaties/generalisaties** op de correcte manier

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-3.md)
