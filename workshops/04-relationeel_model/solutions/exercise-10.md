## Oefening 10 - Lokalen

## Oplossing
- Stad (<ins>postcode</ins>, stadsnaam, burgemeester)​
- Campus (<ins>postcode, naam</ins>, verantwoordelijke, telefoon) ​
    - IR: `postcode` verwijst naar de verzameling `Stad` en is **verplicht​**
- Theorielokaal(<ins>Lokaalnummer</ins>, gebouw, adres, aantal_plaatsen)​
- Praktijklokaal(<ins>Lokaalnummer</ins>, gebouw, adres, aantal_pc’s, extra_infrastructuur, theorielokaal_lokaalnummer)​
    - IR: `theorielokaal_lokaalnummer` verwijst naar de verzameling `Theorielokaal` en is **optioneel, uniek**
- Theorielokaal_campus(<ins>lokaalnummer, postcode, naam</ins>)​
    - IR: `lokaalnummer` verwijst naar de verzameling `Theorielokaal` en is **verplicht​**
    - IR: `postcode,naam` verwijst naar de verzameling `Campus` en is **verplicht​**
- Praktijklokaal/campus(<ins>lokaalnummer, postcode, naam</ins>)​
    - IR: `lokaalnummer` verwijst naar de verzameling `Praktijklokaal` en is **verplicht**
    - IR: `postcode,naam` verwijst naar de verzameling `Campus` en is **verplicht​**
- ComputerCursus(<ins>cursuscode</ins>, naam, docent)​
- ComputerCursus_praktijklokaal(<ins>cursuscode, lokaalnummer</ins>)​
    - IR: `cursuscode` verwijst naar de verzameling `ComputerCursus` en is **verplicht​**
    - IR: `lokaalnummer` verwijst naar de verzameling `Praktijklokaal` en is **verplicht​**

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.