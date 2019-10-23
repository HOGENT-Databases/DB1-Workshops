# Oefening 1 - Medewerkers

## Oplossing
### Functionele Afhankelijkheden:​
- projectNr → projectNaam​
- medewerkerNr, projectNr → projectNaam, MedewerkerNaam, aantalUur
- medewerkerNr → MedewerkerNaam

### Relationeel Model
- Medewerker(<ins>MedewerkerNr</ins>, medewerkerNaam)
- Project_Medewerker(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Project(<ins>projectNr</ins>, projectNaam)

## Stappenplan
### 0NV
- R0(<ins>medewerkerNr</ins>, medewerkerNaam, (projectNr, projectNaam, aantalUur)*)

### 1NV
- R<sub>11</sub>(<ins>medewerkerNr</ins>, medewerkerNaam)
- R<sub>12</sub>(<ins>medewerkerNr, projectNr</ins>, projectNaam, aantalUur)

### 2NV
- R<sub>11</sub>(<ins>medewerkerNr</ins>, medewerkerNaam)
- R<sub>12</sub>(<ins>medewerkerNr, projectNr</ins>, aantalUur)
- R<sub>13</sub>(<ins>projectNr</ins>, projectNaam)

### 3NV
- Niet van toepassing, 3NV is gelijk aan 2NV

### Relationeel Model
- Medewerker(<ins>MedewerkerNr</ins>, medewerkerNaam)
- Project_Medewerker(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Project(<ins>projectNr</ins>, projectNaam)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.