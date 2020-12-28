# 03 - Workshop EERD

## Oefening 8 - Colors
> Deze oefening werkt niet verder op een vorige oefening.

Colors, een verffabrikant uit het Antwerpse, draait al 20 jaar mee in de verfsector en heeft een oude bestaande applicatie met onderliggend veel ongestructureerde data. Hierdoor zijn er inconsistenties opgetreden in hun data en vragen ze aan jou om een nieuwe databank op te stellen op basis van hun vereisten en reeds bestaande data. Teken het conceptuele model op basis van een getuigenis van de contactpersoon hieronder.

We kopen grondstoffen aan bij meerdere leveranciers, per leverancier heeft een grondstof een externe referentie en een externe prijs. Aangezien een leverancier niet steeds in staat is om ofwel tijdig ofwel een bepaalde grondstof te leveren, hebben we voor elke grondstof ook andere leveranciers, maar minstens 1. Van deze leveranciers, houden we (verplicht door de boekhouding) een uniek leveranciersnummer bij, daarnaast nog de naam van het bedrijf en een uniek BTW Nummer.

Elke leverancier kan meerdere vestigingen hebben, zo heeft een bepaalde leverancier een kantoor in Mechelen als in Gent. Het is ook zo dat voor sommige leveranciers zoals bv. Bol.com we geen flauw benul hebben waar deze gevestigd zijn. Maar indien we wel over deze informatie beschikken, houden we het adres, telefoonnummer en een oplopend volgnummer bij. Een vestiging op zich, stelt weinig voor, maar vaak is de eerste vestiging de hoofdzetel van de leverancier, deze combinatie komt dan ook maar 1 keer voor.

Indien we graag wat extra informatie van een grondstof te weten komen, bellen we naar een van onze contactpersonen van de betrokken vestiging van de leverancier. Het heeft weinig waarde om iemand van Gent aan de lijn te krijgen indien we samenwerken met de personen uit de Mechelse vestiging... Om de communicatie zo vlot mogelijk te laten verlopen houden we voor elk van deze personen de naam en het geslacht bij. Je mag ervan uitgaan dat er per vestiging maar 1 persoon met een bepaalde naam voorkomt. De persoon in kwestie, werkt steeds maar in 1 vestiging. Indien we niet weten in welke vestiging de contactpersoon tewerkgesteld is, heeft dit voor ons geen waarde.

Naast grondstoffen zijn er nog twee andere producttypes namelijk, verpakkingen en artikels. Elk type product krijgt een unieke code en heeft een kostprijs, deze prijs wordt berekend aan de hand van het type van het product. Voor grondstoffen houden we nog de datum van de laatste levering bij. Voor verpakkingen het volume en de prijs van de waarborg en uiteindelijk voor een artikel een transportcode die aangeeft hoe gevaarlijk het is om dit artikel te transporten (ook wel een ADR-code genoemd). Een product kan bestaan uit meerdere andere producten mits het opgeven van een bepaald aantal. Zo ontstaat in principe een recept om verf te maken, het is wel zo dat niet elk product gebruikt wordt voor een ander product.

Een product wordt steeds uitgedrukt door een bepaalde eenheid, zo spreken we over producten uitgedrukt in LT of KG. Van elke eenheid houden we een unieke code bij en een naam, bijvoorbeeld “KG – Kilogram”, deze eenheden worden gebruikt voor het hele assortiment producten. De eenheid “PA – Pallet”, zit wel nog in het systeem, maar wordt in principe voor geen enkel product meer gebruikt. 
Tot slot zouden we graag de namen van de producten kunnen uitdrukken in 3 talen zijnde Frans, Duits en Nederlands. De naam komt minstens in het Nederlands voor, de andere talen zijn optioneel. Hou voor elke taal een unieke ISO-Code en daarnaast de naam bij.


### Opdracht
1. Teken de **entiteittypes**
2. Vul de **attribuuttypes** voor de `entiteittypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutels**
5. Teken de **specificaties/generalisaties** op de correcte manier

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-8.md)


