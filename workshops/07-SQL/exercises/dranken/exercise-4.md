# 06 - Workshop SQL : Dranken

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-dranken.jpg" alt="Diagram Dranken.db">
</p>

> Meer informatie over de databank kan je [hier](structure.md) vinden.

## Oefening 4 - Subqueries

1. Welke artikelen hebben een voorraad lager dan de gemiddelde voorraad over alle artikelen heen?
Sorteer op artikelnr
    > ArtikelNr	SoortNr	Jaar	Inhoud	AdviesVerkoopprijs	Voorraad  
    > 10803	4006		0.75	102.7000	9  
    > 10804	2139	2014	1	120.0000	5  
    > 10806	1223	2010	0.75	134.0000	17  
    > 10807	4002	2012	0.7	75.0000	9  
    > 10808	3020		0.7	123.0000	20  
    > 10809	1200	2007	50		2  
    > 10810	3011		0.7	62.5000	5  
    > ...
2. Welke klanten behoren tot dezelfde Unie als de klant Wijnen Lybaert?  
Wijnen Lybaert staat niet in de oplossing
    > KlantNr	Naam	Adres	Postcode	Plaats	Provincie	Unie  
    > 1001	Wijnhandel Van den Bussche & Zonen	Vlaanderenstraat 110	9000	Gent	OVL	23  
    > 1002	Evin Wine Store	Sint-Margrietstraat 16	9000	Gent	OVL	23  
    > 1003	Caves Saint Amand	Gentbruggestraat 169	9040	Sint-Amandsberg	OVL	23  
    > 1004	Wijnhuis Tinto	Blauwesteenstraat 75	9070	Heusden	OVL	23  
    > 1045	Belgian Wines	Leasestraat 1	2000	Antwerpen	A	23
3. Geef de unieke jaartallen (verschillend van NULL) van artikelen die ooit verkocht zijn  
Sorteer oplopend
    > 2003 tot en met 2016 (uitgezonderd 2004 en 2010)
4. Onze vertegenwoordiger moet op bezoek bij Wijnhandel Copa Cava.  
Hij zal van de gelegenheid gebruik maken om ook de andere klanten in de provincie te bezoeken.  
Geef de lijst van deze klanten. Opgelet Wijnhandel Copa cava komt niet voor in de lijst!
    > KlantNr	Naam	Adres	Postcode	Plaats	Provincie	Unie  
    > 1030	Wijnhandel Spoel	Dorpstraat 12	8800	Roeselare	WVL	13  
    > 1031	Wijnhandel De Fles	Spechtstraat 56	9990	Maldegem	WVL	13  
    > 1044	Wijnhandel Slokop	Thuishof 12	8300	Knokke	WVL	

5. Geef de oudste unies
    > ToelatingsNr	Naam	OprichtingsJaar	Voorzitter  
    > 23	Gentse Wijnunie	1963	J. Peykens  

    Breid de vorige query uit.
    Welke klanten behoren tot de oudste unie?
    > KlantNr	Naam	Adres	Postcode	Plaats	Provincie	Unie  
    > 1001	Wijnhandel Van den Bussche & Zonen	Vlaanderenstraat 110	9000	Gent	OVL	23  
    > 1002	Evin Wine Store	Sint-Margrietstraat 16	9000	Gent	OVL	23  
    > 1003	Caves Saint Amand	Gentbruggestraat 169	9040	Sint-Amandsberg	OVL	23  
    > 1004	Wijnhuis Tinto	Blauwesteenstraat 75	9070	Heusden	OVL	23  
    > 1008	Wijnen Lybaert	Olifantstraat 7/A	9000	Gent	OVL	23  
    > 1045	Belgian Wines	Leasestraat 1	2000	Antwerpen	A	23

6. Geef alle klanten die ooit Freixenet kochten
    > KlantNr	Naam	Adres	Postcode	Plaats	Provincie	Unie  
    > 1008	Wijnen Lybaert	Olifantstraat 7/A	9000 Gent	OVL	23

7. Geef de klanten die in minstens 3 verschillende maanden iets bestelden?.
    > KlantNr	Naam	Adres	Postcode	Plaats	Provincie	Unie  
    > 1003	Caves Saint Amand	Gentbruggestraat 169	9040	Sint-Amandsberg	OVL	23  
    > 1090	Wijnhandel Puerta del Sol	Bootlaan 1	2100	Deurne	A	

    Breid de vorige query uit  
    Zijn er klanten die in elke maand van 2017, zoals aanwezig in de databank, iets bestelden?
    > Antwoord: Resultset is leeg

8. Zijn er atikelen waarbij de adviesverkoopprijs groter of gelijk is aan de maximum verkoopprijs van het artikel?  
Sorteer oplopend op artikelnr    
    > ArtikelNr	SoortNr	Jaar	Inhoud	AdviesVerkoopprijs	Voorraad  
    > 10802	1224	2014	0.75	29.5000	43  
    > 10805	2137	2013	0.75	24.9000	36  
    > 10807	4002	2012	0.7	75.0000	9  
    > 10813	1205	2014	0.75	15.5000	78  
    > 10816	4007		0.75	64.2500	10  
    > 10817	4009		0.75	78.7500	4  
    > 10819	1216	2005	0.75	72.0000	26  
    > ....

9. Welke facturen bevatten artikelen die duurder verkocht zijn  dan de adviesverkoopprijs van diezelfde artikelen?
    > FactuurNr	KlantNr	FactuurDatum  
    > 173116	1003	2017-08-01 00:00:00  
    > 173117	1050	2017-08-10 00:00:00  
    > 173120	1001	2017-09-26 00:00:00  
    > 173122	1022	2017-10-10 00:00:00  
    > 173124	1008	2017-10-25 00:00:00

10. Geef alle artikelen met het hoogste alcolholpercentage.  
Geef artikelnr, jaar, soortnaam en alcoholpercentage
    >artikelnr	jaar	naam	Alcoholperc  
    > 10807	2012	Aultmore RM	50

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](/workshops/07-SQL/solutions/dranken/exercise-4.md)
