## Oefening 9 - Sportclub

## Oplossing
- Club(<ins>stamnummer</ins>, naam, kleuren, voorzitter, bloknummer)​
- Scheidrechter(<ins>aansluitingsnummer</ins>, naam, adres, stamnummer)​
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**
- Wedstrijd(<ins>datum, naam</ins>, aansluitingsnummer)​
    - IR: `aansluitingsnummer` verwijst naar de verzameling `Scheidsrechter` en is **optioneel​**
- Team(<ins>stamnummer, categorie</ins>, afgevaardigde, trainer)​
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**
- Speler-amateur(<ins>aansluitingsnr</ins>, naam, adres, kostenvergoeding)​
- Speler-prof(<ins>aansluitingsnr</ins>, naam, adres, licentienummer, wedde)​
- Speler-amateur_club(<ins>aansluitingsnr, stamnummer</ins>, periodeVan, periodeTot)​
    - IR: `aansluitingsnummer` verwijst naar de verzameling `Speler-amateur` en is **verplicht​**
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**
- Speler-prof_club(<ins>aansluitingsnr, stamnummer</ins>, periodeVan, periodeTot)​
    - IR: `aansluitingsnummer` verwijst naar de verzameling `Speler-prof` en is **verplicht​**
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.
