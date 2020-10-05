




<!DOCTYPE html>
<html lang="en">
  <head>
   


  </head>

  <body class="logged-in env-production page-responsive page-blob">
    

  <div id="readme" class="Box-body readme blob js-code-block-container p-5 p-xl-6 gist-border-0">
    <article class="markdown-body entry-content container-lg" itemprop="text"><h1><a id="user-content-03---workshop-eerd" class="anchor" aria-hidden="true" href="#03---workshop-eerd"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>03 - Workshop EERD</h1>
<h2><a id="user-content-oefening-2---luchthaven--priority" class="anchor" aria-hidden="true" href="#oefening-2---luchthaven--priority"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Oefening 7 - Labo 'SampleMe'</h2>
<blockquote>
<p>Deze oefening werkt niet verder op een vorige oefening </p>
</blockquote>

<p><i>Labo SampleMe</i> is een privé instelling die zijn diensten aanbiedt aan verschillende ziekenhuizen in ons land. Het is de taak van het labo om deze stalen te analyseren. Deze stalen kunnen ofwel bloedstalen of urinestalen zijn. Van elk staal houdt Labo SampleMe bij wat het unieke staalID is, de omschrijving, de afname datum en of het staal al werd geanalyseerd. Als het gaat om een bloedstaal, kennen we ook graag de bloedgroep. Bij een urinestaal weten we ook graag of de pH-waarde moet onderzocht worden. Een urinestaal kan een vervolg zijn op een ander urinestaal, bvb. na 1 week nog eens opnieuw laten testen. Indien dit het geval is, moeten we ook de vorige staal/stalen kennen.</p>
<p>
Naast gewone bloedstalen, hebben we nog bloedstalen specifiek voor analyse op COVID-19 antistoffen. In dit geval houden we nog extra een anonieme tracingID bij. Indien het staal positief blijkt, kan de contact tracing dan opgestart worden. Mogelijks gaat het ook om een bloedstaal die kadert in een gerechtelijk onderzoek. In dit geval kennen we graag het politiedossiernummer en willen we weten of het een staal is die met prioriteit moet behandeld worden. Bloedstalen kunnen uiteraard zowel COVID-19 als gerechtelijk gerelateerd zijn.
</p>
<p>
Elke staal heeft ook één of meerdere eigenschappen (bvb. triglyceriden, cholesterol, glucose, …) die worden bekeken. Van zo een eigenschap wordt een unieke code bijgehouden. Naast de code weten we ook graag de naam van de eigenschap en de effectieve waarde. Dit laatste kan uiteraard pas worden geingevuld na de analyse van het staal. 
</p>
<p>
Stalen behoren steeds tot exact één patiënt. Een patiënt wordt in ons systeem gekenmerkt door een uniek patiënt_id. Verder kennen we de naam en het geslacht van de patiënt. 
Een patiënt is ook verplicht aangesloten bij één mutualiteit. De mutualiteit wordt geïdentificeerd aan de hand van een  mutualiteit_id. Elke mutualiteit heeft ook een niet-unieke naam en adres.
</p>
<p>
Een staal wordt steeds aangevraagd door één of meer artsen. Er is per staal wel telkens een hoofdarts. Het spreekt voor zich dat artsen bij ons meerdere stalen kunnen laten analyseren. Onze resultaten van de staalanalyse worden per email verstuurd naar de arts(en). Van een arts kennen we ook het riziv_nr, naam en zijn/haar specialisatie. Een arts kan tot meerdere (minstens één) hospitalen behoren. Van een hospitaal kennen het unieke HID, de naam van het hospitaal en het adres. Dezelfde arts kan meerdere keren in ons systeem worden bijgehouden: wel maar één keer per hospitaal. We houden geen hospitalen bij waarvan we de arts(en) niet kennen.
</p>
<h3><a id="user-content-opdracht" class="anchor" aria-hidden="true" href="#opdracht"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Opdracht</h3>
<ol>
<li>Teken de <strong>entiteittypes</strong></li>
<li>Vul de <strong>attribuuttypes</strong> voor de <code>entiteittypes</code> aan</li>
<li>Teken de <strong>relaties</strong> in beide richtingen</li>
<li>Teken de <strong>kandidaatsleutels</strong></li>
<li>Teken de <strong>specificaties/generalisaties</strong> op de correcte manier</li>
</ol>
<h3><a id="user-content-oplossing" class="anchor" aria-hidden="true" href="#oplossing"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Oplossing</h3>
<p>Een mogelijke oplossing voor deze oefening vind je <a href="/HOGENT-Databases/DB1-Workshops/blob/master/workshops/03-EERD/solutions/exercise-7.md">hier</a></p>
</article>
  </div>

</div>


  </body>
</html>

