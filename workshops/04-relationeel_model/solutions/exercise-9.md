## Oefening 9 - Sportclub

## Oplossing
- Club(stamnummer, naam, kleuren, voorzitter, bloknummer)​
- Scheidrechter(aansluitingsnummer, naam, adres, stamnummer)​
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**
- Wedstrijd(datum, naam, aansluitingsnummer)​
    - IR: `aansluitingsnummer` verwijst naar de verzameling `Scheidsrechter` en is **verplicht​**
- Team(stamnummer, categorie, afgevaardigde, trainer)​
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**
- Speler-amateur(aansluitingsnr, naam, adres, kostenvergoeding)​
- Speler-prof(aansluitingsnr, naam, adres, licentienummer, wedde)​
- Speler-amateur/club(aansluitingsnr, stamnummer, periodeVan, periodeTot)​
    - IR: `aansluitingsnummer` verwijst naar de verzameling `Speler-amateur` en is **verplicht​**
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**
- Speler-prof/club(aansluitingsnr, stamnummer, periodeVan, periodeTot)​
    - IR: `aansluitingsnummer` verwijst naar de verzameling `Speler-prof` en is **verplicht​**
    - IR: `stamnummer` verwijst naar de verzameling `Club` en is **verplicht​**

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.