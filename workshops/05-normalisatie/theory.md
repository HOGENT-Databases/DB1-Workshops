# 05 - Workshop Normalisatie (Theorie)

## Identificeren van Functionele Afhankelijkheden
Het identificeren van de functionele afhankelijkheden tussen de verschillende attribuuttypes kan enkel als je het probleemgebied volledig begrijpt. M.a.w. aan de hand van informatie van de gebruiker(s) van de databank, reeds bestaande documenten en formulieren moet je proberen te achterhalen hoe de informatie bepaald wordt. Het is vaak zo dat de uitzonderingen de regels bepalen.

Stel :  `A` → `B`

 `B` is functioneel afhankelijk van `A` (kan samengesteld zijn) als er met een waarde van `A` ten hoogste 1 waarde van `B` overeenkomt.
- `A` determineert `B`
- `A` bepaalt `B`
- Als ik `A` weet, weet ik eenduidig `B`
- `A` is een **determinant**.
- `B` is **functioneel afhankelijk** van `A`

## Voorbeeld
| RijksregisterNr 	    | Naam   	| Beroep         	|
|-----------------	    |--------	|---------------	|
| **92010300105**    	| **Emma**  | **Dokter**       	|
| 90082700267     	    | Arthur 	| Leerkracht       	|
| **01071000189**   	| **Emma**  | **Chauffeur**     |
| 87022800130     	    | Louise 	| Leerkracht    	|

### Functionele afhankelijkheden
- Correct:
    - `rijksregisterNr → naam, beroep`
        > Het `rijksregisterNr` bepaalt de `naam` en `beroep`
        - Indien we het `rijksregisterNr` weten, kunnen we eenduidig zeggen dat het gaat over een bepaald persoon met een bepaald `beroep`. Zo kunnen we zeggen dat **87022800130, Louise de leerkracht** is.
    - `(rijksregisterNr, naam) → beroep`
        > De combinatie van **rijksregisterNr en naam** bepalen het beroep
        - Indien we het `rijksregisterNr` en de `naam` weten, kunnen we eenduidig zeggen dat het gaat over een bepaald persoon met een bepaald `beroep`. Zo kunnen we zeggen dat **87022800130 Louise, een leerkracht** is. Hier wordt gebruik gemaakt van een samengestelde determinant met andere woorden er worden meerdere attributen gebruikt. In principe is de `naam` overbodig en hebben we enkel het `rijksregisterNr` nodig, maar de regels zijn nog steeds perfect geldig.

- Foutief:
    - `beroep → rijksregisterNr, naam`
        > Het beroep bepaald het rijksregisterNr en de naam
        - **Leerkracht** komt twee keer voor in de lijst, we kunnen dus niet zeggen dat indien we het `beroep` weten, we ook de `naam` of `rijksregisterNr` van de **leerkracht** in kwestie weten.
    - `naam → rijksregisterNr, beroep`
        > De naam bepaald het rijksregisterNr en beroep
        - **Emma** komt twee keer voor in de lijst, we kunnen dus niet zeggen dat indien we de `naam` weten, we ook het `beroep` of `rijksregisterNr` van **Emma** weten. 
    - `(beroep, naam) → rijksregisterNr`
        > De combinatie van **beroep en naam** bepalen het rijksregisterNr
        - In dit geval, klopt de stelling maar denk even na... zijn er niet meer dan 1 leerkrachten die Emma noemen? In dit voorbeeld is dit vrij duidelijk te verduidelijken, indien dit zich voordoet in de praktijk, ga je best even langs bij de opdrachtgever.

## Partïele afhankelijkheid
Stel :  `A` → `B`

`B` is **partieel afhankelijk** van `A` als `A` **samengesteld is (bestaat minstens uit 2 attributen)** en als er met 1 waarde van `A` ten hoogste ́1 waarde van `B` overeenkomt, maar niet elke attribuut van `A` is nodig om `B` te bepalen. Er kan dus enkel partïele afhankelijkheid voordoen indien:
- `A` bestaat uit minimum 2 attributen, anders is `B` **nooit** partieel afhankelijk.
- `B` uniek gevonden kan worden door het kennen van enkele van de attributen van `A`, maar niet alle attributen van `A` zijn hiervoor nodig.

 ## Voorbeeld
 | RijksregisterNr 	    | Naam   	| Beroep         	|
|-----------------	    |--------	|---------------	|
| **92010300105**    	| **Emma**  | **Dokter**       	|
| 90082700267     	    | Arthur 	| Leerkracht       	|
| **01071000189**   	| **Emma**  | **Chauffeur**     |
| 87022800130     	    | Louise 	| Leerkracht    	|

### Functionele afhankelijkheden
- `rijksregisterNr → naam, beroep`
    - Partiele afhankelijkheid kan hier **nooit** voorkomen, de determinant bestaat maar uit 1 attribuut namelijk `rijksregisterNr`.
- `(rijksregisterNr, naam) → beroep`
    - Met `(rijksregisterNr, naam)` kan er steeds 1 bepaald beroep aangeduid worden. Alleen is het attribuuttype `naam` in de determinant overbodig. Beroep is namelijk enkel maar afhankelijk van het attribuuttype `rijksregisterNr`. Met enkel het attribuut `rijksregisterNr` kan nog steeds een **uniek** `beroep` bepaald worden. Het extra attribuuttype `naam` is hiervoor niet nodig. Of anders gezegd: beroep is partieel afhankelijk
van (nr, naam)

## Transitieve afhankelijkheid
Stel : `A → B → C`

 `C` is **transitief afhankelijk** van `A` als `A → B` en `B → C` maar niet `B → A`. Met andere woorden, `C` is eigenlijk afhankelijk van `B` en niet van `A`.  We kunnen perfect `C` vinden als we `A` weten, want als we `A` weten, weten we ook `B` en `B` leidt ons naar `C`. Maar hou er rekening mee dat we vanuit `B`, `A` niet kunnen bepalen.

## Voorbeeld
| RijksregisterNr 	    | Naam   	| Beroep         	| ProvincieCode | ProvincieNaam     |
|-----------------	    |--------	|---------------	| ------------  | --------------    |
| 92010300105       	| Emma      | Dokter           	| OVL           | Oost-Vlaanderen   |
| 90082700267     	    | Arthur 	| Leerkracht       	| LIM           | Limburg           |
| 01071000189       	| Emma      | Chauffeur         | ANT           | Antwepren         |
| 87022800130     	    | Louise 	| Leerkracht    	| LIM           | Limburg           |

### Functionele afhankelijkheden
Er zijn nog enkele andere FA's, de voornaamste zijn hieronder opgelijst.
- `rijksregisterNr → naam, beroep, provincieCode, provincieNaam`
- `provincieCode → provincieNaam`
    - Op basis van de tabel stellen we deze afhankelijkheid op. Elke `provincieCode` komt steeds overeen met een `provincieNaam`. Echter is het ook mogelijk deze afhankelijkheid om te draaien.
- `rijksregisterNr → provincieCode, provincieNaam`
    - Indien we dit combineren met de voorgaande FA: `provincieCode → provincieNaam`
    - `rijksregisterNr(A) → provincieCode(B) → provincieNaam(C)` maar niet `provincieCode(B) → rijksregisterNr(A)` met andere woorden `A → B` en `B → C` maar niet `B → A`.
    - `provincieNaam(C)` is dus transitief afhankelijk van `rijksregisterNr(A)`, want door `provincieCode(B)` te weten via `rijksregisterNr(A)`, weet je ook `provincieNaam(C)` maar vanuit `provincieCode (B)` weet je niet` rijksregisterNr(A)`.

## Volledige functionele afhankelijkheid
Stel : `A` → `B`

`B` is **volledig afhankelijk** van `A` als geldt dat er met 1 waarde van `A`, hoogstens 1 waarde van `B` gevonden kan worden en er zijn **geen partiele- en geen transitieve afhankelijkheden** meer zijn. Met andere woorden, hebben we elk attribuut van `A` nodig om `B` te bepalen.


# Stappenplan voor normalisatie
Normaliseer niet-relationele data vanuit documenten en dergelijke tot een relationeelmodel via volgende stappen:
##  0 NV en FA
1. Lijst alle mogelijke gegevens op.
    - R0(
        a<sub>1</sub>, a<sub>2</sub>, a<sub>3</sub>,
        a<sub>4</sub>, a<sub>5</sub>, a<sub>6</sub>, a<sub>7</sub>, 
        a<sub>n</sub>
    )
    > a<sub>n</sub> zijn gegevens op het document bv. naam, voornaam, adres, ...
2. Wat zijn procesgegevens of niet-relevante gegevens, verwijder deze attibuten.
    - R0(
        a<sub>1</sub>, a<sub>2</sub>, a<sub>3</sub>,
        a<sub>4</sub>, a<sub>5</sub>, a<sub>6</sub>,
        **~~a<sub>7</sub>~~**
    > a<sub>7</sub> is bijvoorbeeld een proces gegeven, dat niet relevant is, bv. de leeftijd indien a<sub>6</sub> de geboortedatum is.
)
3. Welke gegevens herhalen zich?  Zet haakjes rond deze velden en direct daarna zet je een asterisk.
    - R0(
        a<sub>1</sub>, a<sub>2</sub>, a<sub>3</sub>,
        **(a<sub>4</sub>, a<sub>5</sub>, a<sub>6</sub>)***
    )
4. Heeft het document een identificatie? Duid dit attribuut dan aan als primaire sleutel door deze te onderlijnen:
    - R0(
        **<ins>a<sub>1</sub></ins>**,
         a<sub>2</sub>, a<sub>3</sub>,
        (a<sub>4</sub>, a<sub>5</sub>, a<sub>6</sub>)*
    )
5. Bepaal de functionele afhankelijkheden op basis van de documenten, cijfers, tabellen, ... in de vorm van:
- `A` → `B`
- a<sub>1</sub> → a<sub>2</sub>, a<sub>3</sub>, a<sub>4</sub> , ...
- a<sub>1</sub>, a<sub>3</sub> → a<sub>4</sub>, ...

## 1<sup>e</sup> Normaalvorm (1NV)
1. Wegwerken samengestelde attributen
    - Stel dat a<sub>2</sub> uit meerdere attributen zou kunnen bestaat of beter zou opgesplits worden, `naam`, `adres` zijn hiervan enkele voorbeelden, splits deze uit.
    - R0
    (
        <ins>a<sub>1</sub></ins>,
         **a<sub>21</sub>,a<sub>22</sub>**, a<sub>3</sub>,
        (a<sub>4</sub>, a<sub>5</sub>, a<sub>6</sub>)*
    )
        - a<sub>21</sub> het eerste veld van a<sub>2</sub> bv. voornaam
        - a<sub>22</sub> het tweede veld van a<sub>2</sub> bv. achternaam
1. Wegwerken herhaling
    1.  Schrap alle herhalende groepen uit de nulde normaalvorm.
        - R0
        (
        <ins>a<sub>1</sub></ins>,
         a<sub>21</sub>,a<sub>22</sub>, a<sub>3</sub>
        ~~**,(a<sub>4</sub>, a<sub>5</sub>, a<sub>6</sub>)***~~
        )
    2. Zonder elke herhalende groep af in een nieuwe verzameling(R<sub>12</sub>). De sleutel van de verzameling waaruit de herhalende groep komt moet steeds meegenomen worden (in dit geval a<sub>1</sub>).
        - R<sub>11</sub>(<ins>a<sub>1</sub></ins>, a<sub>21</sub> ,a<sub>22</sub>, a<sub>3</sub>)
        - R<sub>12</sub>(<ins>a<sub>1</sub></ins>, a<sub>4</sub>, a<sub>5</sub>, a<sub>6</sub>)
    3. Kies een sleutel voor de nieuwe verzameling, baseer je hiervoor op de reeds bepaaldefunctionele afhankelijkheden (in dit geval nemen we a<sub>1</sub> en a<sub>4</sub>, ter illustratie).
        - R<sub>11</sub>(<ins>a<sub>1</sub></ins>, a<sub>21</sub> ,a<sub>22</sub>, a<sub>3</sub>)
        - R<sub>12</sub>(**<ins>a<sub>1</sub>, a<sub>4</sub></ins>**, a<sub>5</sub>, a<sub>6</sub>)
    > Opmerking: Indien de afgezonderde herhalende groep eveneens een herhalende groep
bevat dien je stappen 2 en 3 te herhalen totdat er geen herhalende gegevens meer zijn.


## 2<sup>e</sup> Normaalvorm (2NV)
1. Zoek in de bekomen verzamelingen van de eerste normaalvorm niet-sleutelattribuuttypesdie partieel afhankelijk zijn van de primaire sleutel.
    - R<sub>11</sub>(<ins>a<sub>1</sub></ins>, a<sub>21</sub> ,a<sub>22</sub>, a<sub>3</sub>)
        - Kan **nooit** partieel afhankelijk zijn, aangezien het geen samengestelde sleutels bevat
    - R<sub>12</sub>(**<ins>a<sub>1</sub>, a<sub>4</sub></ins>**, a<sub>5</sub>, a<sub>6</sub>)
        - Kan **wel** partieel afhankelijk zijn, aangezien het samengestelde sleutels bevat, stel dat a<sub>5</sub> partieel afhankelijk is van de primaire sleutel van R<sub>12</sub>.
3. Verwijder de partieel afhankelijke attribuuttypes uit de oorspronkelijke verzameling.Door dit toe te passen op de verzameling R<sub>12</sub> bekomen we:
    - R<sub>22</sub>(**<ins>a<sub>1</sub>, a<sub>4</sub></ins>**, a<sub>6</sub>)
3. Vorm een nieuwe verzameling bestaande uit het afhankelijke sleuteldeel + de niet-volledig afhankelijke attribuut-types. Het afhankelijke sleuteldeel vormt steeds de sleutel van de nieuwe verzameling.
    - R<sub>23</sub>(**a<sub>4</sub></ins>**, a<sub>5</sub>)

In 2 NV bekomen we uiteindelijk:
- R<sub>21</sub>(<ins>a<sub>1</sub></ins>, a<sub>21</sub> ,a<sub>22</sub>, a<sub>3</sub>)
- R<sub>22</sub>(**<ins>a<sub>1</sub>, a<sub>4</sub></ins>**, a<sub>6</sub>)
- R<sub>23</sub>(**a<sub>4</sub></ins>**, a<sub>5</sub>)

## 3<sup>e</sup> Normaalvorm (3NV)
- Wegwerken transitieve afhankelijkheden op basis van functionele afhankelijkheden
1. Zoek op basis van de reeds bepaalde functionele afhankelijkheden de attribuuttypes die transitief afhankelijk zijn van ́1 of meerdere niet-sleutelattributen. (ter illustratie is a<sub>3</sub> transitief afhankelijk via a<sub>22</sub>)
2. Verwijder de transitief afhankelijke attribuuttypes uit de oorspronkelijke verzameling
    - R<sub>31</sub>(<ins>a<sub>1</sub></ins>, a<sub>21</sub> ,a<sub>22</sub>)
3. Vorm een nieuwe verzameling bestaande uit de transitieve attribuuttypes en het attribuuttype waarvan ze afhankelijk zijn. Dit attribuuttype vormt de sleutel van de nieuwe verzameling. 
    - R<sub>32</sub>(<ins>a<sub>22</sub></ins>, a<sub>3</sub>)

In 3 NV bekomen we uiteindelijk:
- R<sub>31</sub>(<ins>a<sub>1</sub></ins>, a<sub>21</sub> ,a<sub>22</sub>)
- R<sub>32</sub>(<ins>a<sub>22</sub></ins>, a<sub>3</sub>)
- R<sub>33</sub>(**<ins>a<sub>1</sub>, a<sub>4</sub></ins>**, a<sub>6</sub>)
- R<sub>34</sub>(**a<sub>4</sub></ins>**, a<sub>5</sub>)

## Relationeel model 
Benoemen van verzamelingen en integriteitsregels bepalen, weet dat de optionaliteit/verplichtheid niet altijd evident is en vaak wordt bepaald door de opdrachtgever in een apart document. Echter kan je er altijd zeker van zijn dat een vreemde sleutels steeds verplicht is, als hij deeluitmaakt van de primaire sleutel.
