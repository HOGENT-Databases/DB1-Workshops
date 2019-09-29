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

## Oefening 2
Maak het ERD op basis van de [verworven kennis](solutions/exercise-1.md) uit de vorige oefening.

### Opdracht
1. Teken de **entiteitstypes**
2. Lijst alle **attribuuttypes** per **entiteitstype** op
3. Teken de relaties
4. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](solutions/exercise-2.md)

---

## Oefening 3
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

## Oefening 4
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


