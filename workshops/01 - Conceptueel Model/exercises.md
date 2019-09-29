# 02 - Workshop Conceptueel Model

## Oefening 1 - Personeel
Een bedrijf wil een databank laten ontwerpen om de gegevens over de personeelsleden in op te slaan. Het moet mogelijk zijn om een lijst af te drukken met de personeelsleden per afdeling.

### Voorbeeld van de lijst
Een voorbeeld van zo'n lijst kan er als volgt uitzien:

#### Afdeling : 01 - Verkoop
| Naam           	| Leeftijd 	| Barema 	| Woonplaats 	|
|----------------	|----------	|--------	|------------	|
| Janssens Karel 	| 42       	| A      	| Gent       	|
| De Smet Fien   	| 30       	| B      	| Aalst      	|
| Vereecken Jos  	| 39       	| B      	| Lochristi  	|
| ...            	| ...      	| ...    	| ...        	|

#### Afdeling : 02 - Productie
| Naam             	| Leeftijd 	| Barema 	| Woonplaats 	|
|------------------	|----------	|--------	|------------	|
| Avermaet Filip   	| 42       	| C      	| Gent       	|
| Govaert Karel    	| 30       	| C      	| Merelbeke  	|
| Vearezijck Johan 	| 51       	| D      	| Gent       	|
| ...              	| ...      	| ...    	| ...        	|

### Opdracht
1. Welke **entiteitstypes** zijn er ?
2. Niet alles is duidelijk uit dit voorbeeld dus welke vragen ga je stellen om tot een eenduidig schema te komen?

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-1.md)

---

## Oefening 2 - Personeel : ERD
Maak het ERD op basis van de [verworven kennis](solutions/exercise-1.md) uit de vorige oefening.

### Opdracht
1. Teken de **entiteitstypes**
2. Lijst alle **attribuuttypes** per **entiteitstype** op
3. Teken de relaties
4. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-2.md)

---

## Oefening 3 - Personeel : Loonbarema
> Deze oefening werkt verder op oefening 2.

Het moet ook mogelijk zijn om een lijst af te drukken met de `personeelsleden` per `loonbarema`. Een `loonbarema` bepaalt het bruto `maandloon` dat het `personeelslid` verdient. Per 5 jaar dienst krijgt het personeelslid ook 10% anciënniteitspremie.​

### Voorbeeld
Een voorbeeld van zo'n lijst kan er als volgt uitzien:

#### Barema : A 2.500 Euro
| Naam           	| Leeftijd 	| Dienstjaren 	| Anciënniteitspremie 	| Bruto Maandloon 	|
|----------------	|----------	|-------------	|---------------------	|-----------------	|
| Janssens Karel 	| 42       	| 20          	| 1000                	| 3500            	|
| Pieters Jan    	| 33       	| 10          	| 500                 	| 3000            	|
| ...            	| ...      	| ...         	| ...                 	|                 	|

#### Barema : B 2.000 Euro
| Naam          	| Leeftijd 	| Dienstjaren 	| Anciënniteitspremie 	| Bruto Maandloon 	|
|---------------	|----------	|-------------	|---------------------	|-----------------	|
| De Smet Fien  	| 30       	| 5           	| 200                 	| 2200            	|
| Vereecken Jos 	| 39       	| 3           	| 0                   	| 2000            	|
| ...           	| ...      	| ...         	| ...                 	|                 	|

### Opdracht
1. Vertrek van het ERD schema dat je in oefening 2 reeds tekende.
2. Breid het ERD schema uit zodat de bovenstaande lijst kan afgedrukt worden.
3. Teken het nieuwe **entiteitstype**
4. Lijst alle **attribuuttypes** per **entiteitstype** op
    - Er kunnen **attibuuttypes** toegevoegd/verwijderd worden.
5. Teken de relaties
6. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-3.md)

---

## Oefening 4 - Personeel : Afdelingshoofd
> Deze oefening werkt verder op oefening 3.

Elke `afdeling` heeft één `afdelingshoofd`. Elke `afdeling` heeft één (uniek) telefoonnummer.​ Het `personeelslid` dat hoofd is van een `afdeling`, kan maar hoofd zijn van één afdeling.

### Voorbeeld
Graag hadden we de volgende lijst afgedrukt:

| Afdeling 	| Naam      	| Telefoon     	| Hoofd          	|
|----------	|-----------	|--------------	|----------------	|
| 1        	| Verkoop   	| 09/234 56 45 	| Janssens Karel 	|
| 2        	| Productie 	| 09/234 56 40 	| Avermaet Filip 	|
| ...      	| ...       	| ...          	| ...            	|

### Opdracht
1. Vertrek van het ERD schema dat je in oefening 3 reeds tekende.
2. Breid het ERD schema uit zodat de bovenstaande lijst kan afgedrukt worden.
3. Teken het nieuwe **entiteitstype**
4. Lijst alle **attribuuttypes** per **entiteitstype** op
    - Er kunnen **attibuuttypes** toegevoegd/verwijderd worden.
5. Teken de relaties
6. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-4.md)

---


## Oefening 5 - Concerten
Teleticket Service NV verkoopt tickets voor allerlei `concert`en. Bvb.  voor  het sportpaleis in Antwerpen, de AB in Brussel, de concertwei Werchter, Flanders expo in Gent, … . 

Elke `locatie` heeft een `unieke naam`, een `adres`, `telefoonnummer` en een `maximumcapaciteit`.​ Ontwerp een databank om de geplande `concerten` bij te houden. Eens een `concert` afgelopen is, wordt het verwijderd uit de databank.​ 

Elk `concert` heeft een `unieke naam` (vb Polonaise festival). Er moet kunnen opgevraagd worden op welke `datum` het concert doorgaat, het `begin`- en `einduur`, de `locatie` waar het doorgaat, welke `artiesten` optreden en welke `prijscategorieën` er zijn.​ 

Van elke `artiest` worden een `unieke code`, `naam`, `nationaliteit`, `prijs per uur` en een korte `omschrijving` bijgehouden 
### Voorbeeld Artiest
| Code 	| Naam        	| Nationaliteit 	| Prijs Per Uur 	| Omschrijving                                                                                         	|
|------	|-------------	|---------------	|---------------	|------------------------------------------------------------------------------------------------------	|
| 1002 	| Frans Bauer 	| Nederlander   	| 50            	| Bekroonde zanger van het Nederlandstalig levenslied                                                  	|
| 1003 	| Slayer      	| Amerikaans    	| 200           	| Een Amerikaanse thrashmetalband die in 1981 opgericht is door gitaristen Jeff Hanneman en Kerry King.	|
| ...  	| ...         	| ...           	| ...           	|                                                                                                      	|


Elke `prijscategorie` heeft zijn eigen `code`, `naam` en `prijs`, elk concert heeft minstens 1 prijscategorie. ​
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
4. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-5.md)

---

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
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-6.md)

---

## Oefening 7 - Couckenbak
Een koekjesfabrikant wil zijn voorraadbeheer automatiseren en heeft daarvoor informatie nodig over zijn `producten`, `grondstoffen`, `leveranciers` . . . ​

In de databank wil de fabrikant gegevens opslaan over zijn `leveranciers`.​
Hiervan worden de `naam`, de `stad` en de `leveringsvoorwaarden` bijgehouden. Er kunnen alleen 2 leveranciers zijn met dezelfde `naam` als die in **verschillende** `steden` gelegen zijn. ​

Een leverancier levert `grondstoffen` aan. Ook leveranciers die nog maar alleen offertes hebben ingediend en nog geen grondstoffen effectief hebben geleverd, worden in het systeem opgenomen. De informatie van de offertes wordt niet opgeslagen. Binnen het bedrijf wordt de politiek gevolgd om voor elke `grondstof` een backup-leverancier te hebben. Alle `grondstoffen` worden via geregistreerde `leveranciers` aangeleverd.​

Elke `grondstof` heeft een `unieke code`, een `naam`, `eenheidsprijs` en `aankoopeenheid` (liter, kilogram, ton, …).

De grondstoffen worden gebruikt om `producten` te maken. Bepaalde grondstoffen zijn nodig bij het productieproces, maar zijn geen ingrediënten van (eind)producten. Een ingrediënt alleen kan nooit als (eind)product worden aangeboden, ook niet na een behandeling. In het gevraagde systeem worden alle `grondstoffen` opgeslagen, maar alleen de ingrediënten (en niet de grondstoffen nodig bij het productieproces) zijn gekoppeld aan de (eind)producten waarvoor ze nodig zijn.​

Per (eind)product houdt men bij: de productie-`eenheid`, de `verpakkingsvorm` (individueel, los, pak of doos), de `productcode` (uniek), de `naam`.​

Sommige `(eind)producten` kunnen gebruikt worden als onderdeel van andere eindproducten (vb. pleziermomenten bevat appelcakejes, kokosrotsjes en confituurtaartjes). Die (eind)producten die uitsluitend bestaan uit andere `eindproducten` hebben geen ingrediënten.

Daarnaast heeft men ook nog de `verpakkingsmaterialen`. Elk (eind)product kan meerdere `verpakkingsmaterialen` gebruiken: papier, plastiekfolie, metalen doos. Om hygiënische redenen kunnen onverpakte (eind)producten niet voorkomen. ​

Verpakkingsmaterialen hebben een `code` die bestaat uit recycleerbaar of niet, composteerbaar of niet en een `volgnummer`. Daarnaast wordt ook hun `naam` opgeslagen.​

Binnen het systeem wordt geen onderscheid gemaakt tussen een `leverancier` van een `grondstof` en een `leverancier` van een soort `verpakking`. Dezelfde regels zijn geldig. ​

De verschillende `leveringen` die door de `leveranciers` gebeuren worden wel bijgehouden in het systeem. We weten hiervan de `besteldatum`, ons `bestelbonnummer` en de aanduiding of die `levering` reeds is `betaald` of niet. De leveringen krijgen een `uniek oplopend leveringsnummer`.

### Opdracht
1. Teken de **entiteitstypes**
2. Lijst alle **attribuuttypes** per **entiteitstype** op
3. Teken de relaties
4. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-7.md)
