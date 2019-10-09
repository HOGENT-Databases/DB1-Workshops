# 03 - Workshop EERD

## Oefening 2 - Luchthaven : Priority
> Deze oefening werkt verder op de oefening 7 van de workshop [02 - Conceptueel Model](../../02-zwakke_entiteiten/exercises/exercise-7.md)

### Vorige keer eindigden we met het volgende schema
<img src="../../02-zwakke_entiteiten/solutions/exercise-7.svg">

Een passagier kan een ‘prioritaire’ passagier zijn. Van deze prioritaire passagiers wordt de reden opgeslagen waarom deze passagier kan gebruik maken van de extra faciliteiten. Een passagier kan ook reizen als ‘business guest’. Dan moet de naam van het bedrijf en de functie van de passagier binnen dit bedrijf opgegeven worden.​

Als een passagier als individuele passagier in een groep reist, dan wordt die persoon gelinkt aan de reisleider. De reisleider is steeds een ‘individuele’ passagier. Van een individuele passagier wordt het telefoonnummer van een te verwittigen persoon opgeslagen. Als een passagier tot geen van de vermelde categorieën behoort, dan reist hij als individu. Een passagier kan nooit tot meerdere categorieën behoren.

### Opdracht
1. Teken de **entiteitstypes**
2. Vul de **attribuuttypes** voor de `entiteitstypes` aan
3. Teken de **relaties** in beide richtingen
4. Teken de **kandidaatsleutels**
5. Teken de **specificaties/generalisaties** op de correcte manier

### Oplossing
Een mogelijke oplossing voor deze oefening vind je [hier](../solutions/exercise-2.md)