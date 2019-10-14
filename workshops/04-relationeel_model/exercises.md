# 04 - Workshop Relationeel Model

Eens we het eens zijn met de business, kunnen we overgaan tot het modelleren van het relationele model op basis van het Entity Relationship Diagram (ERD). Om deze mapping mogelijk te maken kan je gebruik maken van het onderstaande stappenplan.

## Stappenplan​
1. Elk entiteittype wordt een tupel verzameling of tabel ​
(opgelet bij specialisatie!).​
2. Enkelvoudige attribuuttypes overnemen.​
3. Samengestelde attribuuttypes opsplitsen in enkelvoudige attribuuttypes.​
4. Meerwaardige attributen in een aparte, nieuwe verzameling plaatsen.​
5. Primaire sleutel bepalen (opgelet bij zwakke entiteiten!).​
6. Voor elke relatie (verband) tussen entiteittypen de vreemde sleutel(s) bepalen.​
7. Integriteitregels bepalen van elke vreemde sleutel.​

## Regels
Verbanden tussen verzamelingen worden gelegd aan de hand van **vreemde sleutels (VS)** of **foreign keys (FK)**. 

### Binair verband:​
- 1 op N: vreemde sleutel aan N-zijde​
- 1 op 1: vreemde sleutel aan 1 zijde (zelf te kiezen)
- N op N: aparte verzameling met 2 vreemde sleutels​

### Unair verband: ​
- 1 op N: vreemde sleutel in zelfde (naam van rol 1-zijde!)​
- 1 op 1: vreemde sleutel met zichzelf​
- N op N: nieuwe verzameling met 2 vreemde sleutels (rolnamen gebruiken!)

### Integriteitsregels vreemde sleutel:​
Geef weer naar welke primaire sleutel deze vreemde sleutel verwijst​ of de vreemde sleutel verplicht of optioneel is: ​
- dit bepaal je aan de hand van de minimumcardinaliteit​ of de vreemde sleutel uniek is (bij 1 op 1)​

### Specialisatie / Generalisatie
| Participatie  constraint 	| Disjoint  constraint 	| Mapping                                                                                             	|
|--------------------------	|----------------------	|-----------------------------------------------------------------------------------------------------	|
| Mandatory                	| AND                  	| 1 tabel met hierin  booleans  om de subtypes te onderscheiden                                       	|
| Optional                 	| AND                  	| 2 tabellen: 1 voor het supertype, 1 voor de subtypes met  booleans  om de subtypes te onderscheiden 	|
| Mandatory                	| OR                   	| 1 aparte tabel per subtype                                                                          	|
| Optional                 	| OR                   	| voor elk type een tabel                                                                             	|

| Oefening | Onderwerp | Moeilijkheidsgraad |
| ------------------------------------------------------- | ------------------------------------------  | ----------- |
| [01 - 1 op N](exercises/exercise-1.md)                  | Een eerste mapping.                         | Introductie |
| [02 - N op N](exercises/exercise-2.md)                  | Cardinaliteiten hebben grote gevolgen.      | Introductie |
| [03 - 1 op 1](exercises/exercise-3.md)                  | Keuze bij 1 op 1 relaties.                  | Introductie |
| [04 - The Office](exercises/exercise-4.md)              | Een realiteitoefening                       | Standaard   |
| [05 - Studentenresultaten](exercises/exercise-5.md)     | Zwakke Entiteiten                           | Standaard   |
| [06 - Bedrijf](exercises/exercise-6.md)                 | Specialisatie/Generalisatie                 | Standaard   |
| [07 - Theoretisch](exercises/exercise-7.md)             | Theoretische benadering                     | Standaard   |
| [08 - Boeken](exercises/exercise-8.md)                  | Combinatie Oefening                         | Standaard   |

