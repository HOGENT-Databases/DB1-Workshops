# 02 - Workshop Conceptueel Model

## Oefening 1 - Bedrijf : Personeel
Een bedrijf wil een databank laten ontwerpen om de gegevens over de personeelsleden in op te slaan. Het moet mogelijk zijn om een lijst af te drukken met de personeelsleden per afdeling.

### Voorbeeld van de lijst
Een voorbeeld van zo'n lijst kan er als volgt uitzien:

#### Afdeling : VKP - Verkoop
| Naam           	| Leeftijd 	| Barema 	| Woonplaats 	|
|----------------	|----------	|--------	|------------	|
| Janssens Karel 	| 42       	| A      	| Gent       	|
| De Smet Fien   	| 30       	| B      	| Aalst      	|
| Vereecken Jos  	| 39       	| B      	| Lochristi  	|
| ...            	| ...      	| ...    	| ...        	|

#### Afdeling : PROD - Productie
| Naam             	| Leeftijd 	| Barema 	| Woonplaats 	|
|------------------	|----------	|--------	|------------	|
| Avermaet Filip   	| 42       	| C      	| Gent       	|
| Govaert Karel    	| 30       	| C      	| Merelbeke  	|
| Vearezijck Johan 	| 51       	| D      	| Gent       	|
| ...              	| ...      	| ...    	| ...        	|

### Opdracht
1. Welke **entiteitstypes** zijn er ?
2. Niet alles is duidelijk uit dit voorbeeld dus welke vragen ga je stellen om tot een eenduidig schema te komen, bijvoorbeeld:
    - Hoe wordt een `personeelslid` uniek geïdentificeerd?
        - Elk `personeelslid` heeft een uniek `personeelsnummer`.
    - ...

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-1.md)