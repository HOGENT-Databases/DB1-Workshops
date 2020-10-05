




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

  


  <details class="details-reset details-overlay details-overlay-dark" id="jumpto-line-details-dialog">
    <summary data-hotkey="l" aria-label="Jump to line"></summary>
    <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast linejump" aria-label="Jump to line">
      <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="js-jump-to-line-form Box-body d-flex" action="" accept-charset="UTF-8" method="get">
        <input class="form-control flex-auto mr-3 linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
        <button type="submit" class="btn" data-close-dialog>Go</button>
</form>    </details-dialog>
  </details>




  </div>
</div>

    </main>
  </div>

  </div>

        
<div class="footer container-xl width-full p-responsive" role="contentinfo">
    <div class="position-relative d-flex flex-row-reverse flex-lg-row flex-wrap flex-lg-nowrap flex-justify-center flex-lg-justify-between pt-6 pb-2 mt-6 f6 text-gray border-top border-gray-light ">
      <ul class="list-style-none d-flex flex-wrap col-12 col-lg-5 flex-justify-center flex-lg-justify-between mb-2 mb-lg-0">
        <li class="mr-3 mr-lg-0">&copy; 2020 GitHub, Inc.</li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to terms, text:terms" href="https://github.com/site/terms">Terms</a></li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to privacy, text:privacy" href="https://github.com/site/privacy">Privacy</a></li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to security, text:security" href="https://github.com/security">Security</a></li>
          <li class="mr-3 mr-lg-0"><a href="https://githubstatus.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
          <li><a data-ga-click="Footer, go to help, text:help" href="https://docs.github.com">Help</a></li>
      </ul>

      <a aria-label="Homepage" title="GitHub" class="footer-octicon d-none d-lg-block mx-lg-4" href="https://github.com">
        <svg height="24" class="octicon octicon-mark-github" viewBox="0 0 16 16" version="1.1" width="24" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
</a>
      <ul class="list-style-none d-flex flex-wrap col-12 col-lg-5 flex-justify-center flex-lg-justify-between mb-2 mb-lg-0">
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to contact, text:contact" href="https://github.com/contact">Contact GitHub</a></li>
          <li class="mr-3 mr-lg-0"><a href="https://github.com/pricing" data-ga-click="Footer, go to Pricing, text:Pricing">Pricing</a></li>
        <li class="mr-3 mr-lg-0"><a href="https://docs.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
        <li class="mr-3 mr-lg-0"><a href="https://services.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
          <li class="mr-3 mr-lg-0"><a href="https://github.blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
          <li><a data-ga-click="Footer, go to about, text:about" href="https://github.com/about">About</a></li>
      </ul>
    </div>
  <div class="d-flex flex-justify-center pb-6">
    <span class="f6 text-gray-light"></span>
  </div>
</div>



  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.22 1.754a.25.25 0 00-.44 0L1.698 13.132a.25.25 0 00.22.368h12.164a.25.25 0 00.22-.368L8.22 1.754zm-1.763-.707c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0114.082 15H1.918a1.75 1.75 0 01-1.543-2.575L6.457 1.047zM9 11a1 1 0 11-2 0 1 1 0 012 0zm-.25-5.25a.75.75 0 00-1.5 0v2.5a.75.75 0 001.5 0v-2.5z"></path></svg>
    <button type="button" class="flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg class="octicon octicon-x" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M3.72 3.72a.75.75 0 011.06 0L8 6.94l3.22-3.22a.75.75 0 111.06 1.06L9.06 8l3.22 3.22a.75.75 0 11-1.06 1.06L8 9.06l-3.22 3.22a.75.75 0 01-1.06-1.06L6.94 8 3.72 4.78a.75.75 0 010-1.06z"></path></svg>
    </button>
    You can’t perform that action at this time.
  </div>


    <script crossorigin="anonymous" async="async" integrity="sha512-O8GTqkyR57l/sxhU8bdDyhNYweSdc6TzDwJ7JvY4SJpZye2+L5ayXb5dDiHo45PLT+boMpfMts4kmDzwuv6ZBQ==" type="application/javascript" id="js-conditional-compat" data-src="https://github.githubassets.com/assets/compat-3bc193aa.js"></script>
    <script crossorigin="anonymous" integrity="sha512-qBeyRIjDR3DFKTE2D3j4NncHH72scmqyompBxHHrg7D5+rWW8q2xTxXbF7Z2g8Jx7UNpXfM+3R/FVU0SLgFrgw==" type="application/javascript" src="https://github.githubassets.com/assets/environment-a817b244.js"></script>
    <script crossorigin="anonymous" async="async" integrity="sha512-ZkgO2NGyd4duslHQjek/G/A6AVqrGjkC8J4faOyWNolT16J9Zy8mc4/rUPcJ3VtE3+NULxaAhSiUPgDEKXu+3Q==" type="application/javascript" src="https://github.githubassets.com/assets/vendor-66480ed8.js"></script>
    <script crossorigin="anonymous" async="async" integrity="sha512-LI2/rvvDmgQnDbQRox8wGlnPu0Xp3f0jEgCdPMNuuIPH5/Y+kNVeZbXdDxCrblAeVimx5Pv8n7++HcCx3CDBow==" type="application/javascript" src="https://github.githubassets.com/assets/frameworks-2c8dbfae.js"></script>
    
    <script crossorigin="anonymous" async="async" integrity="sha512-IDZnSF+aG2I5MDhIVp3Eqg4cZmWRUVMz8iWLTi4j1jjusjUqxepPDB+8gYxo7ODXBj/o87RuA8sNlMZ6di3Znw==" type="application/javascript" src="https://github.githubassets.com/assets/behaviors-20366748.js"></script>
    
      <script crossorigin="anonymous" async="async" integrity="sha512-8hScl0DkWwAjCqAQA50kQOn2QTYfPcKEyJjkKYtjGB88r9GB/6kmBBsneJPgwhW3yewwt64ABgsQGpQSLX8zpg==" type="application/javascript" data-module-id="./contributions-spider-graph.js" data-src="https://github.githubassets.com/assets/contributions-spider-graph-f2149c97.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-B3DwnobpjeKaRMDfuYTO7sM+QDmQXt/iMSWygniBZYD/0NFczLC719yiM8MutY1p3OmFg8f+QLE1qWIudeJO6g==" type="application/javascript" data-module-id="./drag-drop.js" data-src="https://github.githubassets.com/assets/drag-drop-0770f09e.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-TE+W40fbmjzeenxQbOvAeIL3325KokxmCisp33dqkt9VazJjJi5Ovg43Uv32JYXcA2PGErGXg+w+wT9P/blUcg==" type="application/javascript" data-module-id="./jump-to.js" data-src="https://github.githubassets.com/assets/jump-to-4c4f96e3.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-5FhwHzvEQVC2u227pP1ETIQqXKuYXA2ia0Gbsd6mpjz8kNl3wuZ4F/pXP0cDkJQbAg5vHDyMne8UnXc1QzAcPg==" type="application/javascript" data-module-id="./profile-pins-element.js" data-src="https://github.githubassets.com/assets/profile-pins-element-e458701f.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-qECv/jhsvLFN77eGNu0cjMR2+zvAlLyhQVTnmayJc5OLZoxMLjQZxZW1hK/dhcYro6Wec/aiF21HYf2N5OilYQ==" type="application/javascript" data-module-id="./randomColor.js" data-src="https://github.githubassets.com/assets/randomColor-a840affe.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-vK7rRnsAi4qcmC2HqCfPyEBZgIMWb6Azyb1PJxgL1FtEFMydK//dsnuLdVx+RaPGg71Z58ossFXqkLWgMevvdw==" type="application/javascript" data-module-id="./sortable-behavior.js" data-src="https://github.githubassets.com/assets/sortable-behavior-bcaeeb46.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-8JWVxbucd2v5Cur5DqJfyVWlQEUOBD3UaUgxKbJ+toppvy10tjgZA5XXKdxSMQ5ArhoeZyARDByg9ddAR/8pIw==" type="application/javascript" data-module-id="./tweetsodium.js" data-src="https://github.githubassets.com/assets/tweetsodium-f09595c5.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-rrw6LQQTC+NE6C3XfPEiTGhDFQkt1JiXZIxrVNnL7ac+goCzQEM7CpivxvmrIEeP7z1C5thoWRq9yVcF0LkaCg==" type="application/javascript" data-module-id="./user-status-submit.js" data-src="https://github.githubassets.com/assets/user-status-submit-aebc3a2d.js"></script>
    
    <script crossorigin="anonymous" async="async" integrity="sha512-9pjg7tOoy0c8J7SypcGNpKdmNmXIghHC2GPI4Noh0Ra8wxcO2RITkIE5lmXEqfZUFTsHKHaa4uH5HxWHeJLtcg==" type="application/javascript" src="https://github.githubassets.com/assets/repositories-f698e0ee.js"></script>
<script crossorigin="anonymous" async="async" integrity="sha512-N+KUQQfOYyGutNT2WWnqoQAM9zN3qG5iz6y/wCfRzbb3itqOuVForUhmqw+BThbtjLnZ83CZvrkUPBGZvOX+1Q==" type="application/javascript" src="https://github.githubassets.com/assets/diffs-37e29441.js"></script>
<script crossorigin="anonymous" async="async" integrity="sha512-k7KDmOjn0DKOmf3bGqoZnx1osB1ZtvlOaMEbXDGZi9AOqx7VrHQdDuceSsqlh/GgHVJcr+11iUZ6P0RKPNfMcg==" type="application/javascript" src="https://github.githubassets.com/assets/github-93b28398.js"></script>
  <div class="js-stale-session-flash flash flash-warn flash-banner" hidden
    >
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.22 1.754a.25.25 0 00-.44 0L1.698 13.132a.25.25 0 00.22.368h12.164a.25.25 0 00.22-.368L8.22 1.754zm-1.763-.707c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0114.082 15H1.918a1.75 1.75 0 01-1.543-2.575L6.457 1.047zM9 11a1 1 0 11-2 0 1 1 0 012 0zm-.25-5.25a.75.75 0 00-1.5 0v2.5a.75.75 0 001.5 0v-2.5z"></path></svg>
    <span class="js-stale-session-flash-signed-in" hidden>You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="js-stale-session-flash-signed-out" hidden>You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <template id="site-details-dialog">
  <details class="details-reset details-overlay details-overlay-dark lh-default text-gray-dark hx_rsm" open>
    <summary role="button" aria-label="Close dialog"></summary>
    <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast hx_rsm-dialog hx_rsm-modal">
      <button class="Box-btn-octicon m-0 btn-octicon position-absolute right-0 top-0" type="button" aria-label="Close dialog" data-close-dialog>
        <svg class="octicon octicon-x" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M3.72 3.72a.75.75 0 011.06 0L8 6.94l3.22-3.22a.75.75 0 111.06 1.06L9.06 8l3.22 3.22a.75.75 0 11-1.06 1.06L8 9.06l-3.22 3.22a.75.75 0 01-1.06-1.06L6.94 8 3.72 4.78a.75.75 0 010-1.06z"></path></svg>
      </button>
      <div class="octocat-spinner my-6 js-details-dialog-spinner"></div>
    </details-dialog>
  </details>
</template>

  <div class="Popover js-hovercard-content position-absolute" style="display: none; outline: none;" tabindex="0">
  <div class="Popover-message Popover-message--bottom-left Popover-message--large Box box-shadow-large" style="width:360px;">
  </div>
</div>


  </body>
</html>

