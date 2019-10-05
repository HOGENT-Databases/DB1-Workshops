# 02 - Workshop Conceptueel Model
## Oefening 5 - Concerten
Teleticket Service NV verkoopt tickets voor allerlei `concert`en. Bvb.  voor  het sportpaleis in Antwerpen, de AB in Brussel, de concertwei Werchter, Flanders expo in Gent, … . 

Elke `locatie` heeft een `unieke naam`, een `adres`, `telefoonnummer` en een `maximumcapaciteit`.​ Ontwerp een databank om de geplande `concerten` bij te houden. Eens een `concert` afgelopen is, wordt het verwijderd uit de databank. Uiteraard worden de `locaties`, `artiesten` en `prijzen` niet verwijderd als een `concert` afgelopen is.

Elk `concert` heeft een `unieke naam` (vb Polonaise festival). Er moet kunnen opgevraagd worden op welke `datum` het concert doorgaat, het `begin`- en `einduur`, de `locatie` waar het doorgaat, welke `artiesten` optreden en welke `prijscategorieën` er zijn.​

Van elke `artiest` wordt een `unieke code`, `naam`, `nationaliteit`, `prijs per uur` en een korte `omschrijving` bijgehouden 
### Voorbeeld Artiest
| Code 	| Naam        	| Nationaliteit 	| Prijs Per Uur 	| Omschrijving                                                                                         	|
|------	|-------------	|---------------	|---------------	|------------------------------------------------------------------------------------------------------	|
| 1002 	| Frans Bauer 	| Nederlander   	| 50            	| Bekroonde zanger van het Nederlandstalig levenslied                                                  	|
| 1003 	| Slayer      	| Amerikaans    	| 200           	| Een Amerikaanse thrashmetalband die in 1981 opgericht is door gitaristen Jeff Hanneman en Kerry King.	|
| ...  	| ...         	| ...           	| ...           	|                                                                                                      	|

Elke `prijscategorie` heeft zijn eigen unieke `code`, `naam` en `prijs`, elk concert heeft minstens 1 prijscategorie. ​
### Voorbeeld Prijscategorie
| Code 	| Naam              	| Prijs 	|
|------	|-------------------	|-------	|
| 01   	| VIP               	| 199   	|
| 02   	| VIP               	| 145   	|
| 10   	| Zitplaats Midden  	| 80    	|
| 20   	| Zitplaats Zijkant 	| 50    	|
| ...  	| ...               	| ...   	|

### Opdracht
1. Teken de **entiteitstypes**
2. Lijst alle **attribuuttypes** per **entiteitstype** op
3. Teken de relaties
    1. Ga na of alle relaties wel duidelijk genoeg zijn, zorg ervoor dat er geen veronderstellingen zijn. Indien dit wel zo is, duid je de **minimum- en maximum cardinaliteit** aan als volgt: `?..?`.
4. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-5.md)
