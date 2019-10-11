# 02 - Workshop Zwakke Entiteiten

## Oefening 1 - Hotel
Teken het ERD schema op basis van de volgende gegevens.
### Gegeven
#### Enteittype `Hotel`
- Heeft een uniek attribuut `HotelNr`
    - Bv. 1
- Heeft een attribuut `Naam`
    - Bv. IBIS Hotel
#### Enteittype `Kamer`
- Heeft een attribuut `KamerNr`
    - Bv. 205
- Heeft een attribuut `Aantalbedden`
    - Bv. 3
#### Relaties `Hotel` - `Kamer`
- Een `hotel` heeft geen of meerdere `kamer`s.
- Een `kamer` heeft steeds een `hotel` waar het toebehoort, daarnaast kan een `kamer` niet zonder een `hotel` bestaan.

### Opdracht
1. Teken de **entiteitstypes**
2. Vul de **attribuuttypes** voor de `entiteitstypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutel** voor `Hotel`
5. Teken de **kandidaatsleutel** voor `Kamer`
    - Merk op dat een `KamerNr` niet uniek is, waarom?
6. Is `Hotel` een sterk of zwak `entiteitstype`?
7. Is `Kamer` een sterk of zwak `entiteitstype`?
8. Is `Hotel` bestaansafhankelijk van `Kamer`?
8. Is `Kamer` bestaansafhankelijk van `Hotel`?

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-1.md)
