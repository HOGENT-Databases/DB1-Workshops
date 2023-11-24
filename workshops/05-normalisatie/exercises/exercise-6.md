# 05 - Workshop Normalisatie

## Oefening 6 - Productiehuizen

### Voorbeelddocument:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-fymr" colspan="2">Productiehuis:<span style="font-weight:bold"> DeMensjes</span></th>
    <th class="tg-fymr" colspan="2">CEO: Karel De Mens</th>
    <th class="tg-fymr">Type: Middelgroot</th>
    <th class="tg-fymr">Zetel: Zaventem</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky"><b>Naam programma</b></td>
    <td class="tg-0pky"><b>Doelgroep</b></td>
    <td class="tg-0pky"><b>Opnamedag</b></td>
    <td class="tg-0pky"><b>Soort opname</b></td>
    <td class="tg-0pky"><b>BV als gast</b></td>
    <td class="tg-0pky"><b>Opmerking</b></td>
  </tr>
  <tr>
    <td class="tg-0pky">De Geniale Wereld</td>
    <td class="tg-0pky">Alle leeftijden</td>
    <td class="tg-0pky">24 juni 2023</td>
    <td class="tg-0pky">Preselectie</td>
    <td class="tg-0pky">Ignace De Groote</td>
    <td class="tg-0pky">Presentator beschikbaar tot 14u00<br></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">5 juli 2023</td>
    <td class="tg-0pky">1ste ronde</td>
    <td class="tg-0pky">Jan De Bekende</td>
    <td class="tg-0pky">Finale start om 20u00</td>
  </tr>
  <tr>
    <td class="tg-0pky">Ver weg van thuis!</td>
    <td class="tg-0pky">16+</td>
    <td class="tg-0pky">25 april 2023</td>
    <td class="tg-0pky">Buitenopname</td>
    <td class="tg-0pky">Micha Marah<br></td>
    <td class="tg-0pky">Gaat niet door bij regen</td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">28 april 2023</td>
    <td class="tg-0pky">Buitenopname</td>
    <td class="tg-0pky">Micha Marah</td>
    <td class="tg-0pky">Reservedag voor 25 april</td>
  </tr>
    <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-fymr" colspan="2">Productiehuis: Ruiten Troef</td>
    <td class="tg-fymr" colspan="2">CEO: Bart De Coene</td>
    <td class="tg-fymr">Type: Klein</td>
    <td class="tg-fymr">Zetel: Mechelen</td>
  </tr>
  <tr>
    <td class="tg-0pky"><b>Naam programma</b></td>
    <td class="tg-0pky"><b>Doelgroep</b></td>
    <td class="tg-0pky"><b>Opnamedag</b></td>
    <td class="tg-0pky"><b>Soort opname</b></td>
    <td class="tg-0pky"><b>BV als gast</b></td>
    <td class="tg-0pky"><b>Opmerking<b></td>
  </tr>
  <tr>
    <td class="tg-0pky">De Columboot</td>
    <td class="tg-0pky">12+</td>
    <td class="tg-0pky">5 juli 2023</td>
    <td class="tg-0pky">Buitenopname</td>
    <td class="tg-0pky">Elise Janssens</td>
    <td class="tg-0pky">Gaat altijd door</td>
  </tr>
  <tr>
    <td class="tg-0pky">De CampusQuiz</td>
    <td class="tg-0pky">Alle leeftijden</td>
    <td class="tg-0pky">8 augustus 2023</td>
    <td class="tg-0pky">Live</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Gebarentolk nodig<br></td>
  </tr>
</tbody>
</table>

### Functionele Afhankelijkheden
- regisseurNr → regisseurNaam, geboorteland, geboortedatum,geboorteplaats
- geboorteplaats  → geboorteland
- filmverdelerNr → filmVerdelerNaam, plaats
- filmverdelerNr, filmID → filmTitel, categorie, regisseurNr,regisseurNaam
- filmverdelerNr, filmID, oscarNr → oscarNaam, winnaarNr
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
1. Welke van volgende 2 R0-definities is correct? ​
    - A. R<sub>0</sub>(<ins>productiehuis</ins>, CEO, type, zetel,(programmanaam, doelgroep,(opnamedag, soort opname, BV’s toegezegd, opmerking)\*)\*)​
    - B. R<sub>0</sub>(<ins>productiehuis</ins>, CEO, type, zetel,(programmanaam, doelgroep)\*, (opnamedag, soort opname, BV’s toegezegd, opmerking)\*)​
2. Geef de 1ste normaalvorm van de door jou ​aangekruiste R<sub>0</sub> uit de vorige vraag.
3. Geef aan of volgende functionele afhankelijkheden (FA) kunnen afgeleid worden uit bovenstaand document of niet. Als je aangeeft van niet, geef dan aan waarop je je baseert om dit te zeggen.
    - Naam productiehuis → CEO​
    - Soort opname → opmerking
    - Naam productiehuis, naam programma, opnamedag → BV’s toegezegd
    - Voornaam BV toegezegd → familienaam BV toegezegd
    - Naam productiehuis, naam programma, opnamedag → soort opname
4. Normaliseer beide modellen (A en B) tot en met het relationele model
5. Integreer tot 1 relationeel model.

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-6.md)
