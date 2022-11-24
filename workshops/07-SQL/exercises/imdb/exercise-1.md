# 06 - Workshop SQL : imdb

## Diagram
<p align="center">
    <img width="75%"  src="../../images/diagram-imdb.jpg" alt="Diagram imdb.db">
</p>

> Meer informatie over de databank kan je [hier](https://www.imdb.com/interfaces/) vinden.

## Oefening 1 - Raadplegen

1. Geef de unieke lijst van genres. Sorteer alfabetisch. (27 recrords)
2. Geef de unieke lijst van tvMiniSeries die zijn opgenomen in titles. (35 records)
3. Welke verschillende titleType's zijn er opgenomen in titles. Sorteer alfabetisch. (4 records)
4. Geef alle films uit het jaar 2010 tot en met 2020. (1318 records)
5. Geef de primaryTitle van alle tvMiniSeries die meer dan 1 jaar liepen (startYear < endYear). (3 records)
6. Geef de personen met de naam Clooney. (2 records)
7. Geef alle persons die jonger dan 50 jaar zijn. (in 2022: 1437 records)
8. Zijn er persons die 100 jaar of ouder zijn en die nog in leven zijn (volgens de informatie in de databank)? (in 2022: 3 records)
9. Geef de namen van de films die beginnen ‘The’. (921 records)
10. Geef alle Pirates of the Carribean films, maar je twijfelt over de schrijfwijze. Hoe los je dat op? (4 records)
11. Geef het verschijningsjaar van je favoriete film.
12. In welk jaar kwam de film 'The Hangover II' uit? (2013)
13. Geef lijst van personen aflopend gesorteerd op birthYear. In geval van gelijk birthYear, wordt er oplopend gesorteerd op fullName
14. Geef de langst lopende tvSerie waarbij endYear is ingevuld. (The X files --> 25 jaar)
15. Geef de 10 langste films uit de databank. Schrijf dit als uren en minuten. (Gangs of Wasseypur 5 uur 21 min, ...)
16. Zijn er films waarbij endYear wel is ingevuld? (Neen)
17. Geef de primaryTitles van de isAdult films aanwezig in de databank. (Er zijn geen isAdult films in de databank)
18. Geef een overzicht van primaryTitles, runtimeMinutes en een opmerking als volgt
  - runtimeMinutes < 60: Short movie
  - runtimeMinutes tussen 60 en 150: Normal movie
  - runtimeMinutes tussen 151 en 210: Long movie
  - runtimeMinutes > 210: Extreme long movie
  (Eerste film is Sherlock Jr. + 45 minuten + Short movie)

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](/workshops/07-SQL/solutions/imdb/exercise-1.md)
