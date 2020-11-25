# 06 - Workshop SQL : Dranken

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-dranken.jpg" alt="Diagram Dranken.db">
</p>

> Meer informatie over de databank kan je [hier](structure.md) vinden.

## Oefening 1 - Raadplegen

1. Geef alle gegevens van de klanten. 
    > 17 records
2. Welke artikelen zitten in het assortiment? Toon jaar, inhoud en aantal voorraad.
    > 60 records
3. Welke soorten worden aangeboden? Toon naam, kleur en alcoholpercentage van de soorten met een alcoholpercentage kleiner dan 15. 
    > 46 records
4. Welke facturen zijn verstuurd op 25 of 26 oktober 2017? Toon de factuurnummers. 
    > 2 records,`173124` en `173125`
5. Welke artikelen hebben een adviesverkoopprijs onder de 25 euro en een voorraad van meer dan 30 stuks? Toon het soortnummer en het jaartal.   
    > 4 records, soortnummers `2137, 1205,3101 en 3102`
6. Welke rode dranken met een alcoholpercentage van 10 of meer kunnen worden geleverd? Toon productgroepnummer en naam. 
    > 10 records, alle met productgroepnummer `50`
7. Bij welke artikelen is geen adviesverkoopprijs opgenomen? Geef alle gegevens. 
    > 5 records
8. Op welke data werd er gefactureerd? Toon enkel de unieke factuurdata.
    > 22 records
9. Geef de namen van de klanten woonachtig in een plaats beginnend met ‘A’.
    > 3 records
10. Toon naam, adres en postcode van klanten uit de provincie ‘OVL’ of ‘WVL’ en waarvan de postcode een ‘3’ bevat. 
    > 4 records
11. Geef de productnamen van de productgroepen met nummer gelegen tussen 30 en 50 (grenzen inbegrepen). 
    > 8 records
12. Geef de namen van de soorten met een soortnummer beginnend met ‘11’ en een productgroepnummer tussen 30 en 34 (grenzen inbegrepen).
    > 3 records
13. Geef het artikelnummer van alle artikelen zonder voorraad.
    > 1 record
14. Geef het artikelnummer van de artikelen waarvan de adviesverkoopprijs niet ingevuld is. 
    > 5 records
15. Geef een lijst met alle gegevens van de klanten, gesorteerd op plaats. Indien er meerdere klanten per plaats zijn, alfabetisch gesorteerd op naam. 
    > 17 records, `Wijnen Le Compte uit Aalst` is de eerste
16. Geef een lijst met alle productnamen, aflopend gesorteerd op productnaam.
    > 11 records, (`Wijn` is de eerste).
17. Geef een overzicht van alle artikelgegevens volgens dalende flesinhoud met een gekende adviesverkoopprijs. Bij gelijke flesinhoud sorteren op oplopend jaartal en bij gelijk jaartal sorteren op aflopend adviesverkoopprijs. 
    > 55 records, artikelnummer `10858` is de eerste.
18. Geef een overzicht van alle artikelen waarvan de adviesverkoopprijs en/of het jaartal niet is ingevuld. Toon het artikelnummer en een opmerking als volgt:
    - 'adviesverkooprijs niet opgegeven' : indien enkel de adviesverkoopprijs niet is ingevuld.
    - 'jaartal niet opgegeven' : indien enkel het jaar niet is ingevuld
    - 'noch adviesverkoopprijs noch jaar ingevuld' : indien beide niet ingevuld
    > 22 records: 17 met jaar niet opgegeven, 5 met adviesverkoopprijs niet opgegeven

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](/workshops/07-SQL/solutions/dranken/exercise-1.md)
