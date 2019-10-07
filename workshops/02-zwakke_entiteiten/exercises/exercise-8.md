# 02 - Workshop Zwakke Entiteiten

## Oefening 8 - Luchthaven
Wanneer een passagier een vlucht boekt moet dit geregistreerd worden in de databank. Een vlucht heeft steeds een luchthaven van opstijgen en een luchthaven van landen. De vluchten worden geïdentificeerd door de beide luchthavens, de datum en het rijksregisternummer van de passagier. Sommige vluchten kunnen niet rechtstreeks uitgevoerd worden, maar worden opgedeeld in meerdere vluchten. Zo zal een vlucht Brussel Split opgedeeld worden in Brussel - Frankfurt en Frankfurt – Split of in Brussel – Amsterdam, Amsterdam – Wenen en Wenen – Split. Van elke vlucht wordt de duurtijd van de vlucht bijgehouden, het type vliegtuig en de luchtvaartmaatschappij die de vlucht uitvoert. Een vlucht wordt alleen opgedeeld in andere vluchten als die niet rechtstreeks kan worden uitgevoerd. ​

Een passagier heeft een uniek rijksregisternummer, een naam en een e-mailadres. Bij de passagier wordt ook de datum opgeslagen waarop hij in de databank is opgenomen= datum van de eerste boeking.​
Tussen 2 opeenvolgende vluchten moet je steeds een tijd in de luchthaven wachten. Deze ‘staytime’ wordt ook opgeslagen in de databank.​ Alle vluchten van de voorbije 10 jaar worden in de databank bijgehouden.​ Van een luchthaven worden de volgende attributen bijgehouden een unieke code, het land waar de luchthaven gelegen is en de plaatselijke munteenheid.  ​

### Opdracht
1. Breid het ERD schema uit.
2. Vul de **attribuuttypes** voor de `entiteitstypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutels**
5. Duid de zwakke entiteiten duidelijk aan

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-8.md)
