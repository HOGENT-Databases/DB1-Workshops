# 06 - Workshop SQL

Structured Query Language of kortweg SQL is een ANSI/ISO-standaardtaal voor een relationeel databasemanagementsysteem (DBMS). Het is een gestandaardiseerde taal die gebruikt kan worden voor taken zoals het bevragen en het aanpassen van gegevens in een relationele database.

## Alvorens te beginnen
1. Installeer MySQL en MySQL Workbench via de installatie instructies op Chamillo.
2. Zorg ervoor dat de databank Planten aanwezig is(staat in het installatie bestand).

## Slides
De slides voor deze workshop vind je [hier](https://hogent-databases.github.io/DB1-Slides/#1)

## Structuur Planten
Plantencentrum De Schop maakt gebruik van de databank `Planten`. De databankbevat o.a. gegevens over de planten, leveranciers en bestellingen die ze bij de leveranciers plaatsen. De databankbevat volgende tabellen:
    <table>
        <caption>Planten</caption>
        <thead>
            <tr>
                <th>Kolom</th>
                <th>Datatype</th>
                <th>Nullable</th>
                <th>Omschrijving</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th align="left">Artcode</th>
                <td>VARCHAR(3)</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>Naam</td>
                <td>VARCHAR(32)</td>
                <td>NOT NULL</td>
                <td>Naam van de plant.</td>
            </tr>
            <tr>
                <td>SoortID</td>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Vreemde sleutel, wijst naar Soort.</td>
            </tr>
            <tr>
                <td>KleurID</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>Vreemde sleutel, wijst naar Kleur.</td>
            </tr>
            <tr>
                <td>Hoogte</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>De hoogte in CM van de plant.</td>
            </tr>
            <tr>
                <td>Bl_b</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>De maand waarin de bloei start.</td>
            </tr>
            <tr>
                <td>Bl_e</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>De maand waarin de bloei eindigt.</td>
            </tr>
            <tr>
                <td>Prijs</td>
                <td>Decimal(6,2)</td>
                <td>NOT NULL</td>
                <td>De prijs van de plant in EURO.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Soorten</caption>
        <thead>
            <tr>
                <th>Kolom</th>
                <th>Datatype</th>
                <th>Nullable</th>
                <th>Omschrijving</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th align="left">SoortID</th>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>Soort</td>
                <td>VARCHAR(100)</td>
                <td>NULLABLE</td>
                <td>Omschrijving van de soort.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Kleuren</caption>
        <thead>
            <tr>
                <th>Kolom</th>
                <th>Datatype</th>
                <th>Nullable</th>
                <th>Omschrijving</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th align="left">KleurID</th>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>Kleur</td>
                <td>VARCHAR(100)</td>
                <td>NULLABLE</td>
                <td>Omschrijving van de kleur.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Leveranciers</caption>
        <thead>
            <tr>
                <th>Kolom</th>
                <th>Datatype</th>
                <th>Nullable</th>
                <th>Omschrijving</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th align="left">LevCode</th>
                <td>VARCHAR(3)</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>Naam</td>
                <td>VARCHAR(50)</td>
                <td>NULLABLE</td>
                <td>Naam van de leverancier.</td>
            </tr>
            <tr>
                <td>Adres</td>
                <td>VARCHAR(50)</td>
                <td>NULLABLE</td>
                <td>Adres van de leverancier.</td>
            </tr>
            <tr>
                <td>Woonplaats</td>
                <td>VARCHAR(50)</td>
                <td>NULLABLE</td>
                <td>Woomplaats van de leverancier.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Offertes bij leveranciers</caption>
        <thead>
            <tr>
                <th>Kolom</th>
                <th>Datatype</th>
                <th>Nullable</th>
                <th>Omschrijving</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th align="left">
                    LevCode<br />
                    ArtCodeLev
                </th>
                <td>
                    VARCHAR(3)<br />
                    VARCHAR(10)
                </td>
                <td>
                    NOT NULL<br />
                    NOT NULL
                </td>
                <td>
                    Primaire Sleutel, vreemde sleutel, wijst naar Leverancier.<br />
                    Primaire Sleutel, de code waarmee het artikel gekend is bij de leverancier.
                </td>
            </tr>
            <tr>
                <td>ArtCode</td>
                <td>VARCHAR(3)</td>
                <td>NULLABLE</td>
                <td>Vreemde sleutel, wijst naar Planten</td>
            </tr>
            <tr>
                <td>Levertermijn</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>de levertermijn voor het artikel.</td>
            </tr>
            <tr>
                <td>OffertePrijs</td>
                <td>DECIMAIL(6,2)</td>
                <td>NULLABLE</td>
                <td>De offerteprijs voor het artikel</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Bestellingen van bij Leveranciers</caption>
        <thead>
            <tr>
                <th>Kolom</th>
                <th>Datatype</th>
                <th>Nullable</th>
                <th>Omschrijving</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th align="left">BestelNr</th>
                <td>VARCHAR(4)</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>LevCode</td>
                <td>VARCHAR(3)</td>
                <td>NOT NULL</td>
                <td>Vreemde sleutel, wijst naar Leverancier</td>
            </tr>
            <tr>
                <td>BestelDatum</td>
                <td>DATETIME</td>
                <td>NOT NULL</td>
                <td>Datum waarop bestelling geplaatst werd.</td>
            </tr>
            <tr>
                <td>LeverDatum</td>
                <td>DATETIME</td>
                <td>NULLABLE</td>
                <td>Datum waarop bestelling geleverd wordt.</td>
            </tr>
            <tr>
                <td>Bedrag</td>
                <td>DECIMAL(6,2)</td>
                <td>NOT NULL</td>
                <td>totaalbedrag voor de bestelling (eventueel zit hier een korting in verrekend)</td>
            </tr>
        </tbody>
    </table>
    <table>
            <caption>Bestellijnen van de bestellingen</caption>
            <thead>
                <tr>
                    <th>Kolom</th>
                    <th>Datatype</th>
                    <th>Nullable</th>
                    <th>Omschrijving</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th align="left">
                        BestelNr<br />
                        ArtCodeLev
                    </th>
                    <td>
                        VARCHAR(4)<br />
                        VARCHAR(10)
                    </td>
                    <td>
                        NOT NULL<br />
                        NOT NULL
                    </td>
                    <td>
                        Primaire Sleutel, vreemde sleutel, wijst naar Bestellingen.<br />
                        Primaire Sleutel, identificatie van het artikel.
                    </td>
                </tr>
                <tr>
                    <td>Aantal</td>
                    <td>SMALLINT</td>
                    <td>NOT NULL</td>
                    <td>Aantal dat besteld werd.</td>
                </tr>
                <tr>
                    <td>Prijs</td>
                    <td>DECIMAIL(6,2)</td>
                    <td>NOT NULL</td>
                    <td>Prijs waartegen besteld werd.</td>
                </tr>
            </tbody>
        </table>

### Diagram
<img src="exercises/images/diagram-planten.jpg" alt="Diagram Planten.db">

| Oefening | Onderwerp | Moeilijkheidsgraad |
| ----- | ---- | ---- |
| [01 - Raadplegen](exercises/exercise-1.md)  | Select, Where, Order By  | Standaard |
| [02 - Aggregeren](exercises/exercise-2.md)  | Statistische functies    | Standaard |
| [03 - Combineren](exercises/exercise-3.md)  | Join functies            | Standaard |
| [04 - Manipuleren en Definiëren](exercises/exercise-4.md) | DDL en DML | Standaard |

