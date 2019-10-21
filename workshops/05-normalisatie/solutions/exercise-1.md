# Oefening 1 - Medewerkers

## Oplossing
- Project_Medewerker(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
    - IR: `MedewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Project(<ins>projectNr</ins>, projectNaam)
- Medewerker(<ins>MedewerkerNr</ins>, MedewerkerNaam)

## Stappenplan
### 0NV
- R0(<ins>medewerkerNr</ins>, MedewerkerNaam, (projectNr, projectNaam, aantalUur)*)

### 1NV
- R<sub>11</sub>(<ins>medewerkerNr</ins>, MedewerkerNaam)
- R<sub>12</sub>(<ins>medewerkerNr, projectNr</ins>, projectNaam, aantalUur)

### 2NV
- R<sub>11</sub>(<ins>medewerkerNr</ins>, MedewerkerNaam)
- R<sub>12</sub>(<ins>medewerkerNr, projectNr</ins>, aantalUur)
- R<sub>13</sub>(<ins>projectNr</ins>, projectNaam)

### 3NV
- Niet van toepassing, 3NV is gelijk aan 2NV

### Relationeel Model
- ProjectMedewerkers(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
        - Aangezien het deel is van een Primary Key is, is het verplicht.
- Project(<ins>projectNr</ins>, projectNaam)
- Medewerker(<ins>MedewerkerNr</ins>, MedewerkerNaam)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.