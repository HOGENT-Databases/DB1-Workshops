# Dranken
Drankencentrale De Lege Fles maakt gebruik van de databank `dranken`

## Diagram
<img src="../../images/diagram-dranken.jpg" alt="Diagram dranken.db">

## Download
Klik [hier](https://raw.githubusercontent.com/HOGENT-Databases/DB1-Workshops/master/databases/dranken.sql) om het script voor de databank te downloaden.
> Copy paste de code en voer het in je local instance van MySQL uit.


## Structuur dranken
De databankbevat volgende tabellen:
    <table>
        <caption>Factuur</caption>
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
                <th align="left">Factuurnr</th>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>KlantNr</td>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Vreemde sleutel verwijst naar Klant.</td>
            </tr>
            <tr>
                <td>Factuurdatum</td>
                <td>DATETIME</td>
                <td>NOT NULL</td>
                <td>Datum van facturatie.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Factuurregel</caption>
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
                    FactuurNr<br />
                    ArtikelNr
                </th>
                <td>
                    INT<br />
                    INT
                </td>
                <td>
                    NOT NULL<br />
                    NOT NULL
                </td>
                <td>
                    Primaire Sleutel, vreemde sleutel, wijst naar Factuur.<br />
                    Primaire Sleutel, vreemde sleutel, wijst naar Artikel.
                </td>
            </tr>
            <tr>
                <td>Aantal</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>Aantal stuks van het artikel.</td>
            </tr>
            <tr>
                <td>Verkoopprijs</td>
                <td>DECIMAL(19,4)</td>
                <td>NULLABLE</td>
                <td>De verkoopprijs van het artikel (historiek).</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Artikel</caption>
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
                <th align="left">ArtikelNr</th>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>SoortNr</td>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Vreemde sleutel verwijst naar Soort.</td>
            </tr>
            <tr>
                <td>Jaar</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>Jaar van de botteling.</td>
            </tr>
            <tr>
                <td>Inhoud</td>
                <td>FLOAT</td>
                <td>NULLABLE</td>
                <td>Inhoud in liter.</td>
            </tr>
             <tr>
                <td>AdviesVerkoopprijs</td>
                <td>DECIMAL(19,4)</td>
                <td>NULLABLE</td>
                <td>Aanbevolen verkoopprijs voor winkeliers.</td>
            </tr>
            <tr>
                <td>Voorraad</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>Aantal in stock.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Productgroep</caption>
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
                <th align="left">ProductgroepNr</th>
                <td>TINYINT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>Productnaam</td>
                <td>VARCHAR(20)</td>
                <td>NOT NULL</td>
                <td>Naam van de productsoort of categorie.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Klant</caption>
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
                <th align="left">KlantNr</th>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>Naam</td>
                <td>VARCHAR(45)</td>
                <td>NOT NULL</td>
                <td>Naam van de klant.</td>
            </tr>
            <tr>
                <td>Adres</td>
                <td>VARCHAR(25)</td>
                <td>NULLABLE</td>
                <td>Adres van de klant.</td>
            </tr>
            <tr>
                <td>Postcode</td>
                <td>VARCHAR(7)</td>
                <td>NULLABLE</td>
                <td>Postcode van het adres van klant.</td>
            </tr>
            <tr>
                <td>Plaats</td>
                <td>VARCHAR(25)</td>
                <td>NULLABLE</td>
                <td>Gemeente/Plaats van het adres van klant.</td>
            </tr>
            <tr>
                <td>Provincie</td>
                <td>VARCHAR(6)</td>
                <td>NULLABLE</td>
                <td>Provincie van het adres van klant.</td>
            </tr>
            <tr>
                <td>Unie</td>
                <td>INT</td>
                <td>NULLABLE</td>
                <td>Vreemde sleutel verwijst naar Unie.</td>
            </tr>
        </tbody>
    </table>
    <table>
        <caption>Unie</caption>
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
                <th align="left">ToelatingsNr</th>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>Naam</td>
                <td>VARCHAR(25)</td>
                <td>NULLABLE</td>
                <td>Naam van de klant.</td>
            </tr>
            <tr>
                <td>Oprichtingsjaar</td>
                <td>YEAR(4)</td>
                <td>NULLABLE</td>
                <td>Het jaar van de oprichting.</td>
            </tr>
            <tr>
                <td>Voorzitter</td>
                <td>VARCHAR(25)</td>
                <td>NULLABLE</td>
                <td>Naam van de voorzitter van de unie.</td>
            </tr>
        </tbody>
    </table>
        <table>
        <caption>Soort</caption>
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
                <th align="left">SoortNr</th>
                <td>INT</td>
                <td>NOT NULL</td>
                <td>Primaire Sleutel.</td>
            </tr>
            <tr>
                <td>ProductgroepNr</td>
                <td>TINYINT</td>
                <td>NOT NULL</td>
                <td>Vreemde sleutel verwijst naar Productgroep.</td>
            </tr>
            <tr>
                <td>Naam</td>
                <td>VARCHAR(40)</td>
                <td>NULLABLE</td>
                <td>Naam van de soort.</td>
            </tr>
            <tr>
                <td>Kleur</td>
                <td>VARCHAR(10)</td>
                <td>NULLABLE</td>
                <td>Kleur van de soort.</td>
            </tr>
            <tr>
                <td>Alcoholperc</td>
                <td>FLOAT</td>
                <td>NULLABLE</td>
                <td>Alcoholpercentage van de soort.</td>
            </tr>
        </tbody>
    </table>

## Overzicht
Klik [hier](/workshops/07-SQL/exercises.md) om terug te gaan naar het overzicht.

