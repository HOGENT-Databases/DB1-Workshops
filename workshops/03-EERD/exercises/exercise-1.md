# 03 - Workshop EERD

## Oefening 1 - Huizen & Co.
Huizen & Co is een vastgoedkantoor met filialen wereldwijd. Van elk filiaal moet men het uniek filiaalnummer weten, plus het adres. Elk filiaal heeft een aantal medewerkers waaronder één manager.  Een manager is (niet verplicht) verbonden met maximum één filiaal. Sommige medewerkers zijn supervisor. Deze geven leiding aan maximaal 10 andere medewerkers, assistent genoemd.  Het kan voorvallen dat een supervisor op een bepaald moment geen assistenten heeft. Er kunnen medewerkers zijn die geen manager, supervisor of assistent zijn.  Men kan binnen het bedrijf geen functies combineren (manager + supervisor, …). Van een assistent houden we zijn/haar adres bij. Elke assistent moet een supervisor hebben. Van een supervisor moet zijn telefoonnummer geweten zijn en van een manager zijn leeftijd. 

Gegevensvereisten:​
- Filiaal: 
    - nummer (uniek)
    - wie manager is​
    - ...
- Medewerkers: 
    - nummer (uniek)
    - naam, 
    - wie hun supervisor is (indien relevant)
    - aan welk filiaal ze verbonden zijn (elke medewerker ​werkt in juist één filiaal).

### Opdracht
1. Teken de **entiteitstypes**
2. Vul de **attribuuttypes** voor de `entiteitstypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutels**
5. Teken de **specificaties/generalisaties** op de correcte manier

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-2.md)