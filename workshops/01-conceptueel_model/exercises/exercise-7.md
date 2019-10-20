# 01 - Workshop Conceptueel Model

## Oefening 7 - Voorraadbeheer
Een koekjesfabrikant wil zijn voorraadbeheer automatiseren en heeft daarvoor informatie nodig over zijn `producten`, `grondstoffen`, `leveranciers` . . . ​

In de databank wil de fabrikant gegevens opslaan over zijn `leveranciers`.​
Hiervan worden de `naam`, de `stad` en de `leveringsvoorwaarden` bijgehouden. Er kunnen alleen 2 leveranciers zijn met dezelfde `naam` als die in **verschillende** `steden` gelegen zijn. ​

Een leverancier levert `grondstoffen` aan. Ook leveranciers die nog maar alleen offertes hebben ingediend en nog geen grondstoffen effectief hebben geleverd, worden in het systeem opgenomen. De informatie van de offertes wordt niet opgeslagen.  Alle `grondstoffen` worden via geregistreerde `leveranciers` aangeleverd.​

Elke `grondstof` heeft een `unieke code`, een `naam`, `eenheidsprijs` en `aankoopeenheid` (liter, kilogram, ton, …).

De grondstoffen worden gebruikt om `producten` te maken. Bepaalde grondstoffen zijn nodig bij het productieproces, maar zijn geen ingrediënten van (eind)producten. Een ingrediënt alleen kan nooit als (eind)product worden aangeboden, ook niet na een behandeling. In het gevraagde systeem worden alle `grondstoffen` opgeslagen, maar alleen de ingrediënten (en niet de grondstoffen nodig bij het productieproces) zijn gekoppeld aan de (eind)producten waarvoor ze nodig zijn.​

Per (eind)product houdt men bij: de productie-`eenheid`, de `verpakkingsvorm` (individueel, los, pak of doos), de `productcode` (uniek), de `naam`.​

Sommige `(eind)producten` kunnen gebruikt worden als onderdeel van andere eindproducten (vb. pleziermomenten bevat appelcakejes, kokosrotsjes en confituurtaartjes). Die (eind)producten die uitsluitend bestaan uit andere `eindproducten` hebben geen ingrediënten.

Daarnaast heeft men ook nog de `verpakkingsmaterialen`. Elk (eind)product kan meerdere `verpakkingsmaterialen` gebruiken: papier, plastiekfolie, metalen doos. Om hygiënische redenen kunnen onverpakte (eind)producten niet voorkomen. ​

Verpakkingsmaterialen hebben een `code` die bestaat uit recycleerbaar of niet, composteerbaar of niet en een uniek `volgnummer`. Daarnaast wordt ook hun `naam` opgeslagen.​

Binnen het systeem wordt geen onderscheid gemaakt tussen een `leverancier` van een `grondstof` en een `leverancier` van een soort `verpakking`. Dezelfde regels zijn geldig. ​

De verschillende `leveringen` die door de `leveranciers` gebeuren worden wel bijgehouden in het systeem. We weten hiervan de `besteldatum`, ons `bestelbonnummer` en de aanduiding of die `levering` reeds is `betaald` of niet. De leveringen krijgen een `uniek oplopend leveringsnummer`. Welk `verpakkingsmateriaal` of `grondstof` juist geleverd werd, wordt niet bijgehouden in het systeem.

### Opdracht
1. Teken de **entiteittypes**
2. Lijst alle **attribuuttypes** per **entiteittype** op
3. Teken de relaties
4. Bepaalde de **minimum** en **maximum** **cardinaliteit**

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-7.md)