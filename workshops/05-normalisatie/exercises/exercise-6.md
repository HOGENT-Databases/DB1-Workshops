# 05 - Workshop Normalisatie

## Oefening Productiehuizen

### Voorbeelddocument

<table class="tg">
<thead>
  <tr>
    <th colspan="2">Productiehuis:<span style="font-weight:bold"> DeMensjes</span></th>
    <th colspan="2">CEO: Karel De Mens</th>
    <th>Type: Middelgroot</th>
    <th>Zetel: Zaventem</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td><b>Naam programma</b></td>
    <td><b>Doelgroep</b></td>
    <td><b>Opnamedag</b></td>
    <td><b>Soort opname</b></td>
    <td><b>BV als gast</b></td>
    <td><b>Opmerking</b></td>
  </tr>
  <tr>
    <td>De Geniale Wereld</td>
    <td>Alle leeftijden</td>
    <td>24 juni 2023</td>
    <td>Preselectie</td>
    <td>Ignace De Groote</td>
    <td>Presentator beschikbaar tot 14u00</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>5 juli 2023</td>
    <td>1<sup>ste</sup> ronde</td>
    <td>Jan De Bekende</td>
    <td>Finale start om 20u00</td>
  </tr>
  <tr>
    <td>Ver weg van thuis!</td>
    <td>16+</td>
    <td>25 april 2023</td>
    <td>Buitenopname</td>
    <td>Micha Marah</td>
    <td>Gaat niet door bij regen</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>28 april 2023</td>
    <td>Buitenopname</td>
    <td>Micha Marah</td>
    <td>Reservedag voor 25 april</td>
  </tr>
  <tr>
    <td colspan="6"></td>
  </tr>
  <tr>
    <th colspan="2">Productiehuis:<spanstyle="font-weight:bold"> Ruiten Troef</span></th>
    <th colspan="2">CEO: Bart De Coene</th>
    <th>Type: Klein</th>
    <th>Zetel: Mechelen</th>
  </tr>
  <tr>
    <td><b>Naam programma</b></td>
    <td><b>Doelgroep</b></td>
    <td><b>Opnamedag</b></td>
    <td><b>Soort opname</b></td>
    <td><b>BV als gast</b></td>
    <td><b>Opmerking</td>
  </tr>
  <tr>
    <td>De Columboot</td>
    <td>12+</td>
    <td>5 juli 2023</td>
    <td>Buitenopname</td>
    <td>Elise Janssens</td>
    <td>Gaat altijd door</td>
  </tr>
  <tr>
    <td>De CampusQuiz</td>
    <td>Alle leeftijden</td>
    <td>8 augustus 2023</td>
    <td>Live</td>
    <td></td>
    <td>Gebarentolk nodig</td>
  </tr>
</tbody>
</table>

### Opdracht

1. Welke van volgende 2 R<sub>0</sub>-definities is correct? ​
    - A. R<sub>0</sub>(<ins>productiehuis</ins>, CEO, type, zetel,(programmanaam, doelgroep,(opnamedag, soort opname, BV’s toegezegd, opmerking)\*)\*)​
    - B. R<sub>0</sub>(<ins>productiehuis</ins>, CEO, type, zetel,(programmanaam, doelgroep)\*, (opnamedag, soort opname, BV’s toegezegd, opmerking)\*)​
2. Geef de 1ste normaalvorm van de door jou ​aangekruiste R<sub>0</sub> uit de vorige vraag.
3. Geef aan of volgende functionele afhankelijkheden (FA) kunnen afgeleid worden uit bovenstaand document of niet. Als je aangeeft van niet, geef dan aan waarop je je baseert om dit te zeggen.
    - Naam productiehuis → CEO​
    - Soort opname → opmerking
    - Naam productiehuis, naam programma, opnamedag → BV’s toegezegd
    - Voornaam BV toegezegd → familienaam BV toegezegd
    - Naam productiehuis, naam programma, opnamedag → soort opname

## Oefening Films

### Functionele Afhankelijkheden

- regisseurNr → regisseurNaam, geboorteland, geboortedatum,geboorteplaats
- geboorteplaats  → geboorteland
- filmverdelerNr → filmVerdelerNaam, plaats
- filmverdelerNr, filmID → filmTitel, categorie, regisseurNr,regisseurNaam
- filmverdelerNr, filmID, oscarNr → oscarNaam, winnaarNr, winnaarNaam
- filmID → filmTitel, categorie, regisseurNr, regisseurNaam
- filmID, oscarNr → oscarNaam, winnaarNr, winnaarNaam
- oscarNr → oscarNaam
- winnaarNr → winnaarNaam

### Bijkomende informatie

- regisseurNaam, winnaarNaam: bestaat uit voornaam en familienaam.
- Voor elke regisseur is zijn geboorteplaats gekend.
- De informatie over de gekregen oscars wordt altijd bijgehouden.
- De regisseur van een film is niet altijd gekend.
- Een winnaar van een oscar kan een regisseur zijn, een acteur, ... (een Persoon met een bepaald beroep).
- Per film en oscar is de winnaar altijd ingevuld.
- Er zijn geen procesgegevens aanwezig.

### Model A

- R<sub>X1</sub>(<ins>filmverdelerNr</ins>, filmverdelerNaam, plaats)
- R<sub>X2</sub>(<ins>filmverdelerNr, filmID</ins>, filmTitel, categorie,regisseurNr, regisseurVnaam, regisseurFnaam)
- R<sub>X3</sub>(<ins>filmverdelerNr, filmID, oscarNr</ins>, oscarNaam,winnaarNr, winnaarVnaam, winnaarFnaam)

### Model B

- R<sub>X</sub>(<ins>regisseurNr</ins>, regisseurVNaam, regisseurFNaam, geboorteland, geboorteplaats, geboortedatum)

### Opdracht

1. Normaliseer beide modellen (A en B) tot en met het relationele model
2. Integreer tot 1 relationeel model.

### Oplossing

Een mogelijke oplossing voor deze oefeningen vind je [hier](../solutions/exercise-6.md)
