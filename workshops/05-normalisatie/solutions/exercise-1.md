# Oefening 1 - Medewerkers

## Oplossing
- ProjectMedewekers(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
- Project(<ins>projectNr</ins>, projectNaam)

## Stappenplan
### 0NV
- R0((<ins>medewerkerNr, projectNr</ins>, projectNaam, aantalUur)*)

### 1NV
- R<sub>11</sub>(<ins>medewerkerNr, projectNr</ins>, projectNaam, aantalUur)

### 2NV
- R<sub>11</sub>(<ins>medewerkerNr, projectNr</ins>, aantalUur)
- R<sub>12</sub>(<ins>projectNr</ins>, projectNaam)

### 3NV
- Niet van toepassing, 3NV is gelijk aan 2NV

### Relationeel Model
- ProjectMedewekers(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
        - Aangezien het deel is van een Primary Key is, is het verplicht.
- Project(<ins>projectNr</ins>, projectNaam)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.