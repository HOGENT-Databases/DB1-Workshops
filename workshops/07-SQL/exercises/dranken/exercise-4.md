# 06 - Workshop SQL : Dranken

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-dranken.jpg" alt="Diagram Dranken.db">
</p>

> Meer informatie over de databank kan je [hier](structure.md) vinden.

## Oefening 4 - Manipuleren

1. Maak een nieuwe tabel Producent aan.

    | Kolom       | Type        | Nullable     | Omschrijving | 
    | ----------- | ----------- | ------------ | ---------------- | 
    | producentnr | int         | not null     | primaire sleutel |
    | naam        | varchar(25) | not null     | naam klant |
    | plaats      | varchar(25) | null allowed | woonplaats |
    | land        | varchar(16) | null allowed | land |
2. Voeg in deze tabel volgende records toe:

    | producentnr | naam | plaats | land |
    | ----------- | ---- | ------ | ---- |
    | 103 | Fiore | Ruffiole | Italië |
    | 135 | Coutet | Barsac | Frankrijk |
    | 735 | Le Cecche | Barolo | Italië |
    | 111 | CaMarcanda | Castagneto | Italië |
3. Wijzig de tabel Soort. Voeg een nieuwe kolom `producent` toe. Dit is een vreemde sleutel en verwijst naar de tabel `Producent`. Kan hier de constraint `not null` afgedwongen worden?
4. Voeg volgende nieuwe records toe aan de tabel Soort:

    | soortnr | productgroepnr | naam            | kleur | alcoholperc | producent | 
    | ------- | -------------- | --------------- | ----- | ----------- | --------- |
    | 1229    | 50             | Il Carbonaione  | rood  | 12 | 103 |
    | 1386    | 50             | La Chartreuse   | wit   | 12 | 135 |
    | 2146    | 50             | Le Cecche       | rood  | 13 | 735 |
    | 2150    | 50             | Promis          | rood  | 13 | 111 |

5. Wijzig volgende records in de tabel Soort:
    -  soortnr 3010: zet `kleur` op `bruin`
    -  soortnr 3030: zet `alcoholperc` op `12`

6. Verwijder `soortnr` `4009` in de tabel `Soort`. Kan dit zomaar? Wat is hiervan het gevolg?

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](/workshops/07-SQL/solutions/dranken/exercise-4.md)
