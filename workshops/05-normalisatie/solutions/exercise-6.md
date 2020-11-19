# Oefening 6 - Productiehuizen

## Oplossing
### Opdracht 1
Welke van volgende 2 R0-definities is correct? ​
- A. R<sub>0</sub>(<ins>productiehuis</ins>, CEO, type, zetel,(programmanaam, doelgroep,(opnamedag, soort opname, BV’s toegezegd, opmerking)\*)\*)​

--- 

### Opdracht 2
Geef de 1ste normaalvorm van de door jou ​aangekruiste R<sub>0</sub> uit de vorige vraag.
- 0NV
    - R<sub>0</sub>(<ins>productiehuis</ins>, CEO, type, zetel,(programmanaam, doelgroep,(opnamedag, soort opname, BV’s toegezegd, opmerking)*)*)​ 
- 1NV
    - R<sub>11</sub>(<ins>productiehuis</ins>, CEO, type, zetel) ​
    - R<sub>12</sub>(<ins>productiehuis, programmanaam</ins>, doelgroep) ​
    - R<sub>13</sub>(<ins>productiehuis, programmanaam, opnamedag, soortOpname</ins>, BV voornaam, BV familienaam, opmerking)

--- 

### Opdracht 3
Geef aan of volgende functionele afhankelijkheden (FA) kunnen afgeleid worden uit bovenstaand document of niet. Als je aangeeft van niet, geef dan aan waarop je je baseert om dit te zeggen.
- Naam productiehuis → CEO​
    - Ja.
- Soort opname → opmerking
    - Neen, 2 verschillende opm voor 1 opname.
- Naam productiehuis, naam programma, opnamedag → BV’s toegezegd
    - Neen, Op 1 dag kunnen er  meerdere BV’s hebben toegezegd​. 
- Voornaam BV toegezegd → familienaam BV toegezegd
    - Neen, Voornaam is niet uniek identificerend​.
- Naam productiehuis, naam programma, opnamedag → soort opname
    - Neen, Er kunnen 2 soorten opnames per dag zijn voor hetzelfde programma​

--- 

### Opdracht 4
Normaliseer beide modellen (A en B) tot en met het relationele model

#### Model A
We vertrekken vanaf 1NV
#### 2 NV
- R<sub>21</sub>(<ins>filmverdelerNr</ins>, filmverdelerNaam, plaats)
- R<sub>22</sub>(<ins>filmverdelerNr, filmID</ins>)
- R<sub>23</sub>(<ins>filmID</ins>, filmTitel, categorie, regisseurNr,​ regisseurVnaam regisseurFnaam)
- R<sub>24</sub>(<ins>filmverdelerNr, filmID, oscarNr</ins>)
- R<sub>25</sub>(<ins>oscarNr</ins>, oscarnaam)
- R<sub>26</sub>(<ins>filmID, oscarNr</ins>, winnaarNr, winnaarVnaam,​winnaarFnaam) 

#### 3 NV
R<sub>31</sub>(<ins>filmverdelerNr</ins>, filmverdelerNaam, plaats) ​
R<sub>32</sub>(<ins>filmverdelerNr, filmID</ins>) ​
R<sub>33</sub>(<ins>filmID</ins>, filmTitel, categorie, regisseurNr)​
R<sub>34</sub>(<ins>regisseurNr</ins>, regisseurVnaam, regisseurFnaam)​
R<sub>35</sub>(<ins>filmverdelerNr, filmID, oscarNr</ins>)​
R<sub>36</sub>(<ins>oscarNr</ins>, oscarnaam) ​
R<sub>37</sub>(<ins>filmID, oscarNr</ins>, winnaarNr) ​
R<sub>38</sub>(<ins>winnaarNr</ins>, winnaarVnaam, winnaarFnaam)

#### Relationeel Model
- Filmverdeler(<ins>filmverdelerNr</ins>, filmverdelerNaam, plaats)​
- Persoon(<ins>persoonID</ins>, voornaam, famNaam) ​
- Film/Filmverdeler(<ins>filmverdelerNr, filmID</ins>)​
    - IR: `filmverdelerNr` verwijst naar de verzameling `Filmverdeler` en is **verplicht**
    - IR: `filmID` verwijst naar de verzameling `Film` en is **verplicht**
- Film(<ins>filmID</ins>, filmTitel, categorie, regisseurNr)​
    - IR: `regisseurNr` verwijst naar de verzameling `Persoon` en is **optioneel**
- Oscar(<ins>oscarNr</ins>, oscarnaam)​
- Bekroonde film(<ins>filmverdelerNr, filmID, oscarNr</ins>)​
    - IR: `filmverdelerNr, filmId` verwijst naar de verzameling `Film/Filmverdeler` en is **verplicht​**
    - IR: `filmId, oscarNr` verwijst naar de verzameling `Uitreiking` en is **verplicht​**
- Uitreiking(<ins>filmID, oscarNr</ins>, winnaarNr)​
    - IR: `filmID` verwijst naar de verzameling `Film` en is **verplicht**
    - IR: `oscarNr` verwijst naar de verzameling `Oscar` en is **verplicht**
    - IR: `winnaarNr` verwijst naar de verzameling `Persoon` en is **verplicht**

#### Model B
We vertrekken vanaf 2NV
#### 3 NV
- R<sub>31</sub>(<ins>regisseurNr</ins>, regisseurVNaam, regisseurFNaam,    geboorteplaats, geboortedatum)​
- R<sub>32</sub>(<ins>geboorteplaats</ins>, geboorteland)​

#### Relationeel Model
- Regisseur(<ins>regisseurNr</ins>, regisseurVNaam, regisseurFNaam, geboorteplaats, geboortedatum)
    - IR: `geboorteplaats` verwijst naar de verzameling `Plaats` en is **verplicht**
- Plaats(<ins>plaats</ins>, land)

--- 

### Opdracht 6 
Integreer tot 1 relationeel model
- Filmverdeler(<ins>filmverdelerNr</ins>, filmverdelerNaam, plaats)​
- Persoon(<ins>persoonID</ins>, voornaam, famNaam, geboorteplaats, geboortedatum) ​
    - IR: `geboorteplaats` verwijst naar de verzameling `Plaats` en is **verplicht**
- Film/Filmverdeler(<ins>filmverdelerNr, filmID</ins>)​
    - IR: `filmverdelerNr` verwijst naar de verzameling `Filmverdeler` en is **verplicht**
    - IR: `filmID` verwijst naar de verzameling `Film` en is **verplicht**
- Film(<ins>filmID</ins>, filmTitel, categorie, regisseurNr)​
    - IR: `regisseurNr` verwijst naar de verzameling `Persoon` en is **optioneel**
- Oscar(<ins>oscarNr</ins>, oscarnaam)​
- Bekroonde film(<ins>filmverdelerNr, filmID, oscarNr</ins>)​
    - IR: `filmverdelerNr, filmId` verwijst naar de verzameling `Film/Filmverdeler` en is **verplicht​**
    - IR: `filmId, oscarNr` verwijst naar de verzameling `Uitreiking` en is **verplicht​**
- Uitreiking(<ins>filmID, oscarNr</ins>, winnaarNr)​
    - IR: `filmID` verwijst naar de verzameling `Film` en is **verplicht**
    - IR: `oscarNr` verwijst naar de verzameling `Oscar` en is **verplicht**
    - IR: `winnaarNr` verwijst naar de verzameling `Persoon` en is **verplicht**
- Plaats(<ins>plaats</ins>, land)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
