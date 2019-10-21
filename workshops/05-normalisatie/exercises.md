# 05 - Workshop Normalisatie

`Normalisatie` is een techniek waarmee je een `ongestructureerde` verzameling van gegevens kunt omvormen naar een verzameling van gegevens die `gestructureerd` is volgens de principes van het relationele metagegevensmodel. 

## Stappenplan
Normaliseer tot een relationeelmodel via volgende stappen:
- 0 NV
    - Welke gegevens komen 1 keer voor?
    - Welke gegevens herhalen zich?
    - Wat zijn procesgegevens of niet-relevante gegevens
    - Heeft het document een identificatie?
- 1 NV
    - Weglaten van procesgegevens
    - Wegwerken samengestelde attributen
    - Wegwerken herhaling
        - Herhalende gegevens in nieuwe verzameling(tabel) 
        - Sleutel oorspronkelijke verzameling mee overnemen
        - Bepalen sleutel nieuwe verzameling
- 2 NV
    - Wegwerken partiele afhankelijkheden
        - **Enkel** voor samengestelde sleutels
        - `A`, `B` → `C` : Als we `C` kunnen verkrijgen door enkel `A` **OF** `B`
        - `C` wordt meegenomen in een een nieuwe verzameling met `A` of `B` als sleutel
- 3 NV
    - Wegwerken transitieve afhankelijkheden op basis van functionele afhankelijkheden
        - (`A` → `B`) en (`B` → `C`) en niet (`B` → `C`)
            - Met andere woorden, `C` is afhankelijk van `B` en niet van `A`
        - Nieuwe verzameling met `B` als sleutel en `C` als attribuut
- Relationeel model
    - Benoemen van verzamelingen en integriteitsregels bepalen

| Oefening | Onderwerp | Moeilijkheidsgraad |
| ----- | ---- | ---- |
| [01 - Medewerkers](exercises/exercise-1.md) | Een eerste normalisatie. | Introductie |
| [03 - Theoretisch](exercises/exercise-3.md) | Een theretische aanpak. | Standaard |
| [04 - Leveranciers](exercises/exercise-4.md) | Dubbele herhaling. | Standaard |

