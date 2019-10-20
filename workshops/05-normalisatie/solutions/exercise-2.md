# Oefening 2 - Medewerkers II

## Oplossing
- ProjectMedeweker(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Project(<ins>projectNr</ins>, projectNaam)
- Medewerker(<ins>medewerkerNr</ins>, medewerkerNaam)

## Stappenplan
### 0NV
- R0((<ins>medewerkerNr, projectNr</ins>,wer projectNaam, aantalUur)*)
- FA:
    - projectNr → projectNaam​
    - medewerkerNr → medewerkerNaam
    - medewerkerNr, projectNr → projectNaam, medewerkerNaam, aantalUur

### 1NV
- R<sub>11</sub>(<ins>medewerkerNr, projectNr</ins>,medewekerNaam, projectNaam, aantalUur)

### 2NV
- R<sub>11</sub>(<ins>medewerkerNr, projectNr</ins>, aantalUur)
- R<sub>12</sub>(<ins>projectNr</ins>, projectNaam)
- R<sub>13</sub>(<ins>medewekerNr</ins>, medewerkerNaam)

### 3NV
- Niet van toepassing, 3NV is gelijk aan 2NV

### Relationeel Model
- ProjectMedeweker(<ins>projectNr, medewerkerNr</ins>, aantalUur)
    - IR: `projectNr` verwijst naar de verzameling `Project` en is **verplicht**
    - IR: `medewerkerNr` verwijst naar de verzameling `Medewerker` en is **verplicht**
- Project(<ins>projectNr</ins>, projectNaam)
- Medewerker(<ins>medewerkerNr</ins>, medewerkerNaam)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.