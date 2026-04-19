---
marp: true
theme: default
paginate: true
header: '**TBD TITLE**'
footer: 'TBD | Matteo Baccan | versione del %date% %time%'
backgroundImage: url('img/background.svg');
style: |
  /* ===== BASE ===== */
  section {
    font-family: 'Segoe UI', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    font-size: 26px;
    padding: 38px 60px 40px 60px;
    color: #1a1a2e;
    background-color: transparent;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    line-height: 1.5;
    letter-spacing: 0.01em;
  }

  /* ===== HEADINGS ===== */
  h1 {
    color: #002244;
    font-size: 1.65em;
    margin-top: 0;
    margin-bottom: 0.5em;
    padding-bottom: 0.3em;
    font-weight: 800;
    border-bottom: none;
    background: linear-gradient(90deg, #002244 0%, #0066aa 100%);
    background-size: 100% 4px;
    background-repeat: no-repeat;
    background-position: bottom left;
  }
  h2 {
    color: #003366;
    font-size: 1.3em;
    margin-bottom: 0.4em;
    font-weight: 700;
    letter-spacing: 0.02em;
  }

  /* ===== LISTS ===== */
  ul, ol {
    margin-left: 0.6em;
    text-align: left;
    padding-left: 0.6em;
  }
  li {
    margin-bottom: 0.45em;
    color: #222;
    text-align: left;
    line-height: 1.45;
  }
  li::marker {
    color: #0066aa;
    font-weight: 700;
  }

  /* ===== EMPHASIS ===== */
  strong {
    color: #002244;
    font-weight: 800;
  }
  em {
    color: #444;
    font-style: italic;
  }

  /* ===== CODE BLOCKS ===== */
  pre {
    background: linear-gradient(135deg, #1e1e2e 0%, #252540 100%);
    border: none;
    border-radius: 10px;
    padding: 18px 20px;
    box-shadow: 0 4px 16px rgba(0,0,0,0.18);
    text-align: left;
    margin: 0.8em 0;
  }
  code {
    font-family: 'Cascadia Code', 'Fira Code', 'Consolas', monospace;
    color: #c62828;
    background-color: rgba(0,34,68,0.06);
    padding: 2px 6px;
    border-radius: 4px;
    border: none;
    font-size: 0.92em;
  }
  pre code {
    color: #e0e0e0;
    background-color: transparent;
    padding: 0;
    border: none;
    font-size: 0.88em;
    line-height: 1.5;
  }
  /* Syntax-highlight overrides for dark code blocks */
  pre code span {
    color: #e0e0e0;
  }
  pre code .hljs-section {
    color: #82aaff;
  }
  pre code .hljs-bullet {
    color: #c3e88d;
  }
  pre code .hljs-emphasis {
    color: #c792ea;
    font-style: italic;
  }
  pre code .hljs-strong {
    color: #f78c6c;
    font-weight: 700;
  }
  pre code .hljs-keyword {
    color: #c792ea;
  }
  pre code .hljs-string {
    color: #c3e88d;
  }
  pre code .hljs-comment {
    color: #7f8c9b;
  }

  /* ===== BLOCKQUOTES ===== */
  blockquote {
    background: linear-gradient(135deg, rgba(0,34,68,0.06) 0%, rgba(0,102,170,0.06) 100%);
    border-left: 5px solid #0066aa;
    border-radius: 0 8px 8px 0;
    margin: 1.2em 0;
    padding: 1em 24px;
    font-style: italic;
    color: #1a1a2e;
    font-size: 0.95em;
    font-weight: 500;
    text-align: left;
  }

  /* ===== TABLES ===== */
  table {
    border-collapse: separate;
    border-spacing: 0;
    width: 100%;
    height: 100%;
    margin-top: 0.6em;
    font-size: 0.95em;
    background-color: rgba(255,255,255,0.97);
    text-align: left;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 10px rgba(0,0,0,0.08);
    flex: 1 1 auto;
  }
  th {
    background: linear-gradient(135deg, #002244 0%, #003d7a 100%);
    color: white;
    padding: 14px 16px;
    text-align: left;
    border: none;
    font-weight: 700;
    font-size: 0.95em;
    letter-spacing: 0.02em;
  }
  th strong {
    color: inherit;
    font-weight: 800;
  }
  td {
    border-bottom: 1px solid #e0e0e0;
    border-right: none;
    border-left: none;
    padding: 16px;
    color: #1a1a2e;
    text-align: left;
    height: 1px;
  }
  td strong {
    color: #002244;
  }
  tr {
    height: 1px;
  }
  tr:nth-child(even) {
    background-color: rgba(0,102,170,0.04);
  }
  tr:last-child td {
    border-bottom: none;
  }

  /* ===== HEADER & FOOTER ===== */
  header {
    top: 18px;
    left: 60px;
    right: 60px;
    color: #002244;
    font-size: 16px;
    font-weight: 700;
    border-bottom: 2px solid rgba(0,34,68,0.15);
    padding-bottom: 8px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    text-align: left;
    letter-spacing: 0.03em;
    text-transform: uppercase;
  }
  footer {
    bottom: 18px;
    left: 60px;
    right: 60px;
    color: #555;
    font-size: 14px;
    font-weight: 500;
    border-top: 1px solid rgba(0,34,68,0.12);
    padding-top: 8px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    text-align: left;
  }

  /* ===== PAGINATION ===== */
  section::after {
    font-size: 14px;
    font-weight: 600;
    color: #888;
    position: absolute;
    bottom: 20px;
    right: 60px;
  }

  /* ===== LEAD / TITLE SLIDE ===== */
  section.lead {
    background: linear-gradient(160deg, rgba(255,255,255,0.95) 0%, rgba(219,238,255,0.8) 100%);
    color: #002244;
    justify-content: center;
    text-align: center;
    padding: 60px 80px;
  }
  section.lead h1 {
    color: #002244;
    background: none;
    border-bottom: none;
    font-size: 2.1em;
    line-height: 1.15;
    font-weight: 900;
    letter-spacing: -0.01em;
    margin-bottom: 0.3em;
  }
  section.lead h2 {
    color: #0055a0;
    font-size: 1.15em;
    font-weight: 500;
    line-height: 1.4;
    margin-top: 0.2em;
  }
  section.lead strong {
    color: #c62828;
    font-weight: 800;
  }
  section.lead p {
    font-size: 0.95em;
    color: #444;
    margin-top: 0.8em;
  }
  section.lead footer {
    display: block;
  }
  section.lead header {
    display: none;
  }

  /* ===== SECTION DIVIDER SLIDE ===== */
  section.section-title {
    background-color: #dbeeff;
    justify-content: center;
    text-align: left;
    padding: 60px 80px;
  }
  section.section-title h1 {
    color: #002244;
    font-size: 2.5em;
    background: none;
    border-bottom: none;
    margin: 0;
    text-shadow: 0 2px 12px rgba(0,0,0,0.15);
  }
  section.section-title p {
    color: #fff;
    font-size: 1.3em;
    margin-top: 0.5em;
    font-weight: 600;
    text-shadow: 0 1px 6px rgba(0,0,0,0.3);
  }

  .qr-grid {
    display: flex;
    gap: 28px;
    margin-top: 1.2em;
    align-items: stretch;
  }
  .qr-card {
    flex: 1 1 0;
    padding: 24px 20px 18px 20px;
    border-radius: 18px;
    background: rgba(255,255,255,0.9);
    box-shadow: 0 6px 18px rgba(0,34,68,0.12);
    text-align: center;
  }
  .qr-card img {
    display: block;
    width: 100%;
    max-width: 260px;
    height: auto;
    margin: 0 auto 14px auto;
  }
  .qr-card strong {
    display: block;
    margin-bottom: 0.35em;
  }
  .qr-card p {
    margin: 0;
    font-size: 0.78em;
    line-height: 1.35;
    word-break: break-word;
  }

  .pillar-grid {
    display: flex;
    gap: 24px;
    margin-top: 1em;
    align-items: stretch;
  }
  .pillar-card {
    flex: 1 1 0;
    padding: 22px 20px 18px 20px;
    border-radius: 16px;
    background: rgba(255,255,255,0.94);
    border: 2px solid rgba(0,34,68,0.16);
    box-shadow: 0 6px 18px rgba(0,34,68,0.10);
  }
  .pillar-card h2 {
    margin-top: 0;
    margin-bottom: 0.55em;
    font-size: 1.05em;
    line-height: 1.2;
  }
  .pillar-card p {
    margin: 0 0 0.7em 0;
    font-size: 0.88em;
    line-height: 1.32;
  }
  .pillar-card p:last-child {
    margin-bottom: 0;
  }
---

<!-- class: lead -->

# OpenSpec: Spec-Driven Development nell'era degli Agenti AI

**Un nuovo paradigma per la collaborazione tra Umani e Intelligenza Artificiale**

**Speaker:** Matteo Baccan
**Evento:** TBD

---

# L'Era degli Agenti AI
Lo sviluppo software sta subendo una trasformazione radicale grazie all'intelligenza artificiale.
Siamo passati dalla scrittura del codice carattere per carattere all'orchestrazione guidata dagli intenti.
Gli agenti AI non sono più solo strumenti di autocompletamento, ma collaboratori attivi.

---

# Il Problema: "Vibe Coding"
L'interazione naturale con gli LLM ha generato una pratica definita "vibe coding".
Consiste nel fornire istruzioni informali e non strutturate all'agente in una finestra di chat, sperando che l'output corrisponda all'idea originale.

---

# I Sintomi del Vibe Coding
Questo approccio non strutturato porta rapidamente a:
* Allucinazioni architetturali.
* Scelte di librerie non coerenti con il progetto.
* Difficoltà estreme nell'effettuare una code review sensata.

---

# La Perdita del Contesto
Nel vibe coding, i requisiti vivono esclusivamente nella cronologia della chat.
Una volta chiusa la sessione, il contesto evapora. Non esiste alcuna documentazione persistente delle decisioni prese.

---

# Il Limite della Finestra di Contesto
Più le conversazioni diventano lunghe, più gli agenti AI soffrono di "amnesia".
I dettagli iniziali dei requisiti vengono dimenticati o alterati, degradando drasticamente le prestazioni e l'accuratezza del codice generato.

---

# Deriva dei Requisiti (Drift)
L'agente interpreta un prompt vago e aggiunge funzionalità non richieste ("mentre ci sono, ottimizzo questo").
Senza confini chiari, il progetto accumula funzionalità superflue e deviazioni dalla logica di business.

---

# Il Debito Tecnico Nascosto
L'output del vibe coding genera un codice che funziona al momento, ma di cui nessuno (nemmeno l'agente futuro) conosce i presupposti esatti.
Il debito tecnico diventa difficilmente tracciabile e manutenibile nel tempo.

---

# Un Nuovo Approccio: Spec-Driven Development
La Spec-Driven Development (SDD) inverte il paradigma: **la struttura prima del codice**.
L'intento deve essere formalizzato in specifiche chiare e leggibili dalle macchine prima che venga scritta una singola riga di codice.
Il punto non e' generare piu' codice con l'AI, ma rendere l'intento esplicito, portabile e verificabile fin dall'inizio.

---

# Spec-Driven Development (SDD): l'inversione della fonte della verita'

| **Approccio Tradizionale (Chat-Driven)** | **OpenSpec (Spec-Driven)** |
| --- | --- |
| **Focus**<br>Output immediato (codice come verita'). | **Focus**<br>Definizione strutturata dell'intento (design come verita'). |
| **Ruolo della documentazione**<br>Onere post-sviluppo, spesso obsoleto prima del rilascio. | **Ruolo della documentazione**<br>Istruzioni primarie ed eseguibili per l'AI. Guardrail architetturico. |
| **Risultato**<br>Due fonti di verita' divergenti: ticket e codice. | **Risultato**<br>Il codice viene derivato in modo deterministico dalle specifiche. |

In OpenSpec, la documentazione non rincorre il codice: lo precede e lo vincola.

---

# Cos'è OpenSpec?
OpenSpec è un framework open-source progettato per la Spec-Driven Development.
Non richiede paywall o API key proprietarie per esistere come metodo, non e' vincolato a un IDE specifico o a un singolo vendor AI.
E' un sistema basato su file Markdown che funge da "controllo di versione per l'intento": **zero lock-in**, specifiche portabili, valore che resta nel repository.

---

# OpenSpec: i tre pilastri

<div class="pillar-grid">
  <div class="pillar-card">
    <h2>Pilastro 1: Brownfield-First (1→n)</h2>
    <p>Ottimizzato per l'evoluzione di codebase esistenti, non solo per prototipi greenfield (0→1).</p>
    <p>Permette di modificare logiche complesse in sicurezza, senza riscrivere tutto da zero.</p>
  </div>
  <div class="pillar-card">
    <h2>Pilastro 2: Architettura Leggera</h2>
    <p>Markdown + Git come base operativa: niente infrastruttura pesante, niente database complessi.</p>
    <p>Il metodo resta trasparente, versionabile e vicino al flusso reale del team.</p>
  </div>
  <div class="pillar-card">
    <h2>Pilastro 3: Agnosticismo Totale</h2>
    <p>Zero lock-in verso IDE, modelli o vendor: il valore vive nelle specifiche, non nella piattaforma.</p>
    <p>Se cambi agente o ambiente, il processo resta intatto perche' l'intento rimane nel repository.</p>
  </div>
</div>

---

# La Filosofia di OpenSpec
L'idea centrale è che la specifica sia la "fonte della verità", non il codice.
I documenti fungono da istruzioni eseguibili e vincolanti per gli agenti AI, non solo come suggerimenti o linee guida.
Il risultato non nasce da un'interpretazione libera: con OpenSpec c'e' **solo intento deterministico**, espresso in un contratto scritto che l'agente deve seguire.

---

# Living Documentation
Le specifiche sono mantenute in Git accanto al codice sorgente.
Non diventano mai obsolete perché si evolvono in parallelo al sistema, rendendo la documentazione un prodotto vivo dello sviluppo.

---

# OpenSpec vs Tool di Project Management
I ticket nei sistemi tradizionali (come Jira o Linear) sono ottimi per gli umani, ma difficili da consultare in tempo reale dagli agenti AI.
OpenSpec porta le specifiche direttamente nel repository, dove l'agente opera.

---

# Indipendenza dagli Strumenti AI
OpenSpec è universale. Supporta decine di agenti e ambienti di sviluppo diversi senza legarsi a un ecosistema proprietario.
Se un team decide di cambiare modello AI, estensione IDE o piattaforma, processi e specifiche rimangono intatti e validi.
Le specifiche vivono in Git: il valore resta tuo, non del vendor.

---

# Approccio "Brownfield-First"
Molti framework AI sono ottimizzati per progetti nuovi (greenfield, 0→1).
OpenSpec brilla nei progetti esistenti (brownfield, 1→n), dove l'integrazione di nuove funzionalità senza rompere le vecchie è cruciale.

---

# L'Architettura del Framework
Tutto risiede in una singola directory radice all'interno del progetto: `openspec/`.
Questa directory agisce come la memoria a lungo termine dell'agente AI.

---

# La Separazione dello Stato
Il framework separa fisicamente:
1. La descrizione dello stato attuale del sistema.
2. Le proposte per le modifiche future.
Questa distinzione garantisce transizioni sicure e modifiche parallele.

---

# Il Cuore: La Directory `specs/`
Contiene la documentazione consolidata del comportamento attuale del software.
È la **"Source of Truth"** a cui l'agente deve attenersi prima di proporre o scrivere codice.

---

# Organizzazione per Domini
I file in `specs/` sono organizzati per domini logici (es. `auth/`, `payments/`, `ui/`).
Ogni cartella ospita un file `spec.md` che descrive esattamente le capacità di quel comparto.

---

# Il Workspace: La Directory `changes/`
Ospita le proposte di modifica. Ogni nuova feature o bug fix ottiene una propria cartella isolata.
Questo permette al team di preparare modifiche architetturali in modo pulito e strutturato.

---

# Isolamento delle Modifiche
Lavorare in `changes/` previene i conflitti. 
Più sviluppatori (e più agenti AI) possono preparare funzionalità diverse simultaneamente, senza inquinare la logica base finché non sono pronti.

---

# Configurazione: Il File `config.yaml`
Funziona come la "costituzione" tecnica del progetto.
Sostituisce configurazioni frammentate fornendo un set di regole chiare, stack tecnologici e convenzioni di sviluppo.

---

# Iniezione Attiva del Contesto
A differenza di un normale `README`, il contenuto di `config.yaml` viene **iniettato attivamente** nella finestra di contesto dell'agente in ogni interazione di pianificazione.
Garantisce che l'agente non dimentichi mai lo stack del team.

---

# Gli Artefatti della Pianificazione
Una cartella di modifica genera sempre un set standard di artefatti Markdown:
* `proposal.md`
* `design.md`
* `tasks.md`
* Le Delta Specs

---

# L'Artefatto 1: `proposal.md`
Cattura l'intento strategico. Risponde alle domande "perché stiamo facendo questa modifica?" e "qual è lo scopo principale?".
È il punto di allineamento iniziale tra umano e macchina.

---

# L'Artefatto 2: `design.md`
È l'ancora tecnica. Delinea scelte di database, flussi di dati e specifiche librerie da utilizzare.
Impedisce all'agente di deviare dai pattern stabiliti "immaginando" soluzioni creative ma errate.

---

# L'Artefatto 3: `tasks.md`
Una checklist numerata di azioni da compiere.
Funge da registro di avanzamento. L'agente aggiorna le spunte in tempo reale mentre scrive il codice, garantendo totale trasparenza.

---

# L'Importanza dei Task Atomici
I task in `tasks.md` devono essere sufficientemente piccoli da essere implementati dall'agente in autonomia, senza richiedere costanti chiarimenti o interventi dell'utente.

---

# L'Artefatto 4: Delta Specs
La vera innovazione di OpenSpec. Invece di riscrivere l'intera specifica di sistema, l'agente crea una specifica "differenziale" (Delta) che mostra solo cosa cambierà.

---

# Perché usare le Delta Specs?
In codebase enormi, rigenerare tutta la documentazione consumerebbe troppi token e tempo.
Le Delta Specs si focalizzano solo sull'incremento funzionale, ottimizzando i costi e mantenendo alta l'accuratezza.

---

# Anatomia di una Delta Spec
Le Delta Specs utilizzano intestazioni chiare per istruire il processo di fusione futuro:
1. `ADDED Requirements`
2. `MODIFIED Requirements`
3. `REMOVED Requirements`

---

# Delta Tags: ADDED
Definisce comportamenti completamente nuovi.
Esempio: L'aggiunta di un sistema di autenticazione a due fattori in un progetto che prima aveva solo login base.

---

# Delta Tags: MODIFIED
Descrive l'alterazione di comportamenti esistenti.
Richiede di riscrivere l'intero requisito aggiornato, garantendo che nessuna regola pregressa venga persa per distrazione dell'agente.

---

# Delta Tags: REMOVED
Segnala funzionalità deprecate o da rimuovere.
Garantisce che il codice morto venga eliminato e che i vecchi test associati vengano disattivati correttamente.

---

# Scrivere Specifiche Efficaci
Le specifiche non devono essere istruzioni di programmazione step-by-step.
Devono descrivere il comportamento osservabile del sistema dall'esterno. Sono contratti di business, non tutorial di codice.

---

# Sintassi EARS
OpenSpec adotta l'approccio EARS (Easy Approach to Requirements Syntax).
L'obiettivo è minimizzare l'ambiguità utilizzando parole chiave vincolanti per definire i livelli di obbligazione.

---

# Le parole chiave: SHALL e MUST
Rappresentano comportamenti obbligatori e non negoziabili.
Se un test fallisce su un requisito `SHALL`, l'agente sa che l'implementazione è categoricamente errata.

---

# La parola chiave: SHOULD
Indica una raccomandazione o un comportamento desiderato, ma con margini di flessibilità.
Permette all'agente di adattarsi a vincoli tecnici imprevisti durante la scrittura del codice.

---

# Scenari Verificabili
Ogni requisito deve essere accompagnato da scenari pratici derivati dal Behavior-Driven Development (BDD).
Forniscono all'agente esempi inequivocabili di successo e fallimento.

---

# Il Modello GIVEN / WHEN / THEN
* **GIVEN:** Il contesto iniziale (es. "Dato un utente non autenticato").
* **WHEN:** L'azione scatenante (es. "Quando visita la dashboard").
* **THEN:** Il risultato atteso (es. "Allora viene reindirizzato al login").

---

# Dalla Specifica ai Test
Con una struttura GIVEN/WHEN/THEN chiara, l'agente AI è in grado di generare automaticamente i test unitari o e2e corrispondenti, chiudendo il ciclo della qualità del software.

---

# Il Ciclo Operativo (Workflow)
OpenSpec definisce un ciclo di vita immutabile a tre fasi per ogni modifica:
1. Propose
2. Apply
3. Archive

---

# Fase 1: Proposta (Propose)
L'agente non scrive codice. Analizza la richiesta dell'umano e genera la cartella in `changes/` con la proposta, i task e le Delta Specs.

---

# La Revisione dell'Intento
Questo è il momento chiave per lo sviluppatore umano.
Modificare un file Markdown errato richiede pochi secondi. Correggere un'architettura software errata dopo che è stata scritta richiede giorni.

---

# Fase 2: Implementazione (Apply)
Solo quando gli artefatti sono approvati, l'agente inizia l'implementazione vera e propria.
Legge i compiti in `tasks.md` e produce il codice rigorosamente entro i confini stabiliti nel `design.md`.

---

# L'Esecuzione dell'Agente
Durante l'Apply, l'agente AI si trasforma in un mero esecutore.
Smette di indovinare le intenzioni e si limita a tradurre specifiche perfette in codice funzionante.

---

# Gestione della Qualità
Prima di considerare chiusa la fase di implementazione, l'agente verifica il codice prodotto rispetto alle specifiche stabilite, correggendo autonomamente eventuali deviazioni dai requisiti MUST/SHALL.

---

# Fase 3: Archiviazione (Archive)
Una volta che il codice funziona ed è stato testato, la modifica viene conclusa.
Questo è il momento in cui l'intento temporaneo diventa documentazione permanente.

---

# La Fusione della Verità
Il sistema unisce automaticamente le Delta Specs nei file originali della cartella `specs/`.
Il sistema si aggiorna: la nuova funzionalità fa ora ufficialmente parte della "Source of Truth" del progetto.

---

# L'Archivio Storico
La cartella originale della modifica viene spostata in un archivio storico (es. ordinato per data).
Si preserva così l'audit trail delle decisioni architetturali per i futuri sviluppatori.

---

# Funzionalità Avanzate: Schemi Personalizzati
Team diversi hanno processi diversi. OpenSpec permette di definire schemi personalizzati per generare artefatti specifici (es. audit di sicurezza obbligatori) prima dell'implementazione.

---

# Sviluppo in Parallelo
In team numerosi, la SDD scala brillantemente.
La separazione in cartelle di modifica (`changes/`) consente di gestire backlog complessi senza corrompere la specifica di base del sistema.

---

# Integrazione con Git Worktrees
OpenSpec si abbina perfettamente a Git Worktrees, permettendo agli agenti AI di testare modifiche isolate in rami paralleli prima di integrarle e archiviarle nella specifica principale.

---

# Il Problema del Codice Legacy
Come si introduce OpenSpec in un progetto esistente di 100.000 righe di codice senza documentazione?
**Non riscrivendo tutto da zero.**

---

# Adozione Incrementale
La strategia suggerita è documentare solo ciò che si tocca.
Se si deve modificare il modulo di pagamento, si documenta solo quello. Nel tempo, la documentazione crescerà organicamente.

---

# Reverse Engineering delle Specifiche
L'uso di tool di supporto (come motori di `spec-gen`) permette di analizzare staticamente il codice sorgente esistente per generare architetture OpenSpec di base tramite AI, accelerando l'adozione.

---

# Anti-Pattern 1: Debito Speculativo
Il più grave errore è dimenticarsi di completare la fase di `Archive`.
Creare modifiche che rimangono perennemente in sospeso distrugge l'affidabilità della "Source of Truth", riportando il team al caos.

---

# Anti-Pattern 2: Eccesso di Dettagli
Scrivere 100 righe di requisiti per cambiare un colore CSS è uno spreco.
Le specifiche devono essere "leggere" (progressive rigor). L'obiettivo è la chiarezza, non l'enciclopedia.

---

# Sincronizzazione con il Project Management
A livello enterprise, OpenSpec può dialogare (es. tramite protocolli MCP) con strumenti di ticket (come Linear/Jira), mantenendo allineato il backlog aziendale con l'esecuzione del codice.

---

# L'Impatto Strategico
La SDD trasforma l'incertezza dei prompt in un processo ingegneristico prevedibile.
* Accuratezza al primo tentativo elevatissima.
* Protezione del know-how aziendale.
* Scalabilità del team.

---

# Conclusione
OpenSpec non riguarda lo scrivere meno codice, ma garantire che il codice generato dalle intelligenze artificiali sia **esattamente quello necessario**.
L'arte di definire l'intento è la competenza più preziosa del futuro.

---

<!-- _backgroundImage: url('img/qea.webp') -->

---

# Contatti

![bg right:35%](img/matteo-baccan.jpg)

## Grazie

**<https://www.baccan.it>**

> "Smetti di chattare, inizia a governare."

---

# Slide e link

<div class="qr-grid">
  <div class="qr-card">
    <img src="img/baccan.it.png" alt="QR code per baccan.it" />
    <strong>baccan.it</strong>
    <p><https://www.baccan.it></p>
  </div>
  <div class="qr-card">
    <img src="img/xxxxx.png" alt="QR code per il repository GitHub delle slide" />
    <strong>Repo GitHub</strong>
    <p><https://github.com/matteobaccan/xxxxx></p>
  </div>
</div>

---

# Chi devo ringraziare per queste slide?

- Gemini: per la riformattazione
- Nano Banana Pro: per le immagini
- NotebookLM: per la prima scaletta e i riassunti dei podcast e video
- VSCode: per gestire il progetto GitHub
- Marp: per la presentazione
