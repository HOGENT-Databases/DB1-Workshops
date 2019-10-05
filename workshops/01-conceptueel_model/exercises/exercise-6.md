# 02 - Workshop Conceptueel Model
## Oefening 6 - Tennis
De tennisvereniging Okapi HOGENT is opgericht in 1970 en houdt in een databank gegevens over zijn `spelers` en `wedstrijden` bij.​

Alle leden in deze vereniging zijn `spelers`. Elke `speler` heeft een `uniek nummer`. Van elke speler is ook de `naam`, het `adres` en de `leeftijd` gekend.​

De vereniging heeft een aantal `teams` dat meedoet aan `wedstrijden`. Zodra een `wedstrijd` wordt aangekondigd wordt deze opgenomen in de databank. Een `team` heeft een `uniek nummer`, speelt in een bepaalde `divisie` en heeft een `aanvoerder`. Het is mogelijk dat een `speler` op een bepaald moment `aanvoerder` is van twee of meer teams. Er wordt geen historiek i.v.m. promotie of degradatie bijgehouden.​

Een `team` bestaat uit een aantal `spelers`. Een `speler` kan in meerdere teams spelen. Een tennis`wedstrijd` bestaat uit een aantal sets. Per `wedstrijd` worden het aantal gewonnen en het aantal verloren `sets` bijgehouden.  Een `wedstrijd` wordt geïdentificeerd door de `speeldatum` en de gemeente (`stad`) waar de `wedstrijd` plaatsvindt.​

Voor onreglementair gedrag krijgt een `speler` een `boete`. Naast het `bedrag` worden ook de `betaaldatum` en de `soort` onregelmatigheid bijgehouden. Elke `boete` heeft een `uniek nummer`.

### Opdracht
1. Teken de **entiteitstypes**
2. Lijst alle **attribuuttypes** per **entiteitstype** op
3. Teken de relaties
4. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-6.md)
