# 02 - Workshop Zwakke Entiteiten

## Oefening 4 - Bedrijf : Producten
> Deze oefening werkt verder op de vorige oefening (3) van deze workshop.

Het bedrijf bottelt en verkoopt wijn. Zorg dat de producten kunnen opgeslagen worden in de databank. Elke soort wijn krijgt een unieke code, de andere gegevens kan je afleiden uit de onderstaande lijst.

### Producten
| Code 	| Naam van de wijn              	| Jaar 	| Aankoopprijs 	| Voorraad 	|
|------	|-------------------------------	|-----:	|-------------:	|---------:	|
| B01  	| Bordeaux Château Toutigeac    	| 2013 	|         3,61 	|       20 	|
| M05  	| Médoc Château Gravat          	| 2014 	|         5,98 	|      145 	|
| B10  	| Fronsac Château Villars       	| 2014 	|         9,36 	|       60 	|
| A01  	| Pauillac La Chapelle de Bages 	| 2013 	|        12,48 	|       52 	|
| C15  	| Château Bonnet                	| 2014 	|         6,18 	|       87 	|
| ...  	| ...                           	|  ... 	|          ... 	|      ... 	|

Telkens een klant een wijn koopt moet die verkooptransactie bewaard worden in de databank, de voorraad van de verkochte wijn moet automatisch aangepast worden en er moet bijgehouden worden of de klant al dan niet reeds het volledige bedrag betaald heeft (het bedrijf werkt niet met voorschotten).​ De verkoopprijs per kist is normaal gezien de aankoopprijs * 3, maar soms krijgt een klant korting.​ Per klant, per wijn wordt maar één transactie per dag opgenomen in de databank.​

### Opdracht
1. Vertrek van het ERD schema uit de vorige oefening (3)
2. Teken de **entiteittypes**
3. Vul de **attribuuttypes** voor de `entiteittypes` aan
4. Teken de **relaties** in beide richtingen
5. Teken de **kandidaatsleutels**
6. Duid de **zwakke entiteittypes** op de correcte manier aan

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-4.md)
