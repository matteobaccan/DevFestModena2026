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

  .dual-grid {
    display: flex;
    gap: 22px;
    margin-top: 0.9em;
    align-items: stretch;
  }
  .dual-card {
    flex: 1 1 0;
    padding: 0;
    border-radius: 16px;
    background: rgba(255,255,255,0.94);
    box-shadow: 0 8px 22px rgba(0,34,68,0.10);
    overflow: hidden;
    border: 2px solid rgba(0,34,68,0.14);
  }
  .dual-card.teal {
    border-color: rgba(0,150,170,0.70);
  }
  .dual-card.gold {
    border-color: rgba(214,158,46,0.78);
  }
  .dual-head {
    padding: 14px 18px;
    font-size: 1.7em;
    font-weight: 800;
    color: #24384b;
    text-align: center;
    border-bottom: 2px solid rgba(0,34,68,0.10);
  }
  .dual-card.teal .dual-head {
    background: rgba(0,150,170,0.08);
    border-bottom-color: rgba(0,150,170,0.40);
  }
  .dual-card.gold .dual-head {
    background: rgba(214,158,46,0.08);
    border-bottom-color: rgba(214,158,46,0.40);
  }
  .dual-sub {
    padding: 10px 18px 0 18px;
    text-align: center;
    font-size: 1em;
    font-weight: 700;
    color: #1a1a2e;
  }
  .dual-body {
    padding: 16px 18px 18px 18px;
  }
  .dual-note {
    margin: 0 0 0.9em 0;
    padding: 12px 14px;
    border-radius: 12px;
    background: rgba(255,255,255,0.98);
    border: 1px solid rgba(0,34,68,0.18);
    font-size: 0.86em;
    line-height: 1.28;
    box-shadow: 0 4px 10px rgba(0,0,0,0.06);
  }
  .dual-list {
    margin: 0;
    padding-left: 1.1em;
    font-size: 0.84em;
    line-height: 1.3;
  }
  .dual-flow {
    margin-top: 0.8em;
    text-align: center;
    font-size: 0.92em;
    font-weight: 700;
    color: #245d73;
  }

  .risk-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 18px;
    margin-top: 0.8em;
  }
  .risk-card {
    padding: 16px 18px;
    border-radius: 14px;
    background: rgba(255,255,255,0.95);
    border: 2px solid rgba(204,140,33,0.55);
    box-shadow: 0 6px 18px rgba(0,34,68,0.10);
  }
  .risk-card h2 {
    margin-top: 0;
    margin-bottom: 0.45em;
    font-size: 1em;
    line-height: 1.2;
  }
  .risk-card p {
    margin: 0 0 0.55em 0;
    font-size: 0.84em;
    line-height: 1.3;
  }
  .risk-card p:last-child {
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
Il punto non è generare più codice con l'AI, ma rendere l'intento esplicito, portabile e verificabile fin dall'inizio.

---

# Spec-Driven Development (SDD): l'inversione della fonte della verità

| **Approccio Tradizionale (Chat-Driven)** | **OpenSpec (Spec-Driven)** |
| --- | --- |
| **Focus**<br>Output immediato (codice come verità). | **Focus**<br>Definizione strutturata dell'intento (design come verità). |
| **Ruolo della documentazione**<br>Onere post-sviluppo, spesso obsoleto prima del rilascio. | **Ruolo della documentazione**<br>Istruzioni primarie ed eseguibili per l'AI. Guardrail architetturico. |
| **Risultato**<br>Due fonti di verità divergenti: ticket e codice. | **Risultato**<br>Il codice viene derivato in modo deterministico dalle specifiche. |

In OpenSpec, la documentazione non rincorre il codice: lo precede e lo vincola.

---

# Cos'è OpenSpec?
OpenSpec è un framework open-source progettato per la Spec-Driven Development.
Non richiede paywall o API key proprietarie per esistere come metodo, non è vincolato a un IDE specifico o a un singolo vendor AI.
È un sistema basato su file Markdown che funge da "controllo di versione per l'intento": **zero lock-in**, specifiche portabili, valore che resta nel repository.

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
    <p>Se cambi agente o ambiente, il processo resta intatto perché l'intento rimane nel repository.</p>
  </div>
</div>

---

# La Filosofia di OpenSpec
L'idea centrale è che la specifica sia la "fonte della verità", non il codice.
I documenti fungono da istruzioni eseguibili e vincolanti per gli agenti AI, non solo come suggerimenti o linee guida.
Il risultato non nasce da un'interpretazione libera: con OpenSpec c'è **solo intento deterministico**, espresso in un contratto scritto che l'agente deve seguire.

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

# Ecosistema agnostico: zero lock-in come scelta strategica

| Nodo centrale | Ecosistema collegabile |
| --- | --- |
| **OpenSpec** come livello stabile di intento e governance nel repository | Kilo Code, Cursor, Claude Code, Windsurf, GitHub Copilot e altri agenti compatibili |

| Capacità | Impatto operativo |
| --- | --- |
| **Integrazioni intensive** | Uso tramite CLI e slash commands nativi nei principali IDE/LLM, senza riscrivere le specifiche |
| **Supporto universale (`AGENTS.md`)** | Le istruzioni restano leggibili da assistenti diversi (anche futuri), preservando storico e coerenza del processo |

**Risultato:** cambi strumento quando vuoi, senza perdere memoria progettuale né controllo sull'intento.

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

# L'architettura a due cartelle

<div class="dual-grid">
  <div class="dual-card teal">
    <div class="dual-head">L'Essere</div>
    <div class="dual-sub">openspec/specs/</div>
    <div class="dual-body">
      <p class="dual-note"><strong>The Source of Truth.</strong> La documentazione del comportamento attuale, organizzata per domini logici.</p>
      <ul class="dual-list">
        <li><code>specs/auth/spec.md</code></li>
        <li><code>specs/payments/spec.md</code></li>
        <li><code>specs/ui/spec.md</code></li>
      </ul>
    </div>
  </div>
  <div class="dual-card gold">
    <div class="dual-head">Il Divenire</div>
    <div class="dual-sub">openspec/changes/</div>
    <div class="dual-body">
      <p class="dual-note"><strong>The Change Workspace.</strong> Il laboratorio isolato per le modifiche. Nessun conflitto con le specifiche principali finché non si archivia.</p>
      <ul class="dual-list">
        <li><code>changes/add-oauth-login/</code></li>
        <li><code>proposal.md</code></li>
        <li><code>specs/...</code></li>
      </ul>
    </div>
  </div>
</div>

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

# Governance attiva: come `config.yaml` guida ogni richiesta

| Blocco in `config.yaml` | Funzione | Effetto sull'agente |
| --- | --- | --- |
| `schema` | Definisce workflow e struttura degli artefatti attesi | L'agente non improvvisa formati: produce output conformi |
| `context` | Fornisce architettura globale, stack, standard tecnici | Ogni piano parte dagli stessi vincoli di progetto |
| `rules` | Impone guardrail granulari per fase e artefatto | Riduce deviazioni, allucinazioni e scelte fuori policy |

**Risultato operativo:** il file non resta passivo nel repository, viene iniettato nel prompt di pianificazione e rende la conformità tecnica sistematica.

---

# Gli Artefatti della Pianificazione
Una cartella di modifica genera sempre un set standard di artefatti Markdown:
* `proposal.md`
* `design.md`
* `tasks.md`
* Le Delta Specs

---

# Anatomia end-to-end di una proposta

| Fase | File | Domanda chiave | Ruolo operativo |
| --- | --- | --- | --- |
| 1 | `proposal.md` | Perché / Cosa stiamo cambiando? | Definisce intento strategico e ambito lavori (business case iniziale). |
| 2 | `design.md` | Come lo realizziamo? | Fissa decisioni tecniche: architettura, flussi dati, librerie e vincoli. |
| 3 | `tasks.md` | Come eseguiamo in modo verificabile? | Scompone in task atomici e sequenziali, eseguibili dall'agente senza ambiguità. |
| 4 | Delta Specs | Cosa cambia nella Source of Truth? | Applica patch ai requisiti con sezioni `ADDED`, `MODIFIED`, `REMOVED`. |

**Flusso completo:** `proposal.md` -> `design.md` -> `tasks.md` -> Delta Specs -> consolidamento in `specs/`.

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

# Il linguaggio dell'intento: EARS + BDD

| Asse | EARS (obbligazione) | BDD (esecuzione) |
| --- | --- | --- |
| Scopo | Ridurre ambiguità nei requisiti | Rendere verificabili i comportamenti |
| Forma | Parole chiave normative: `SHALL`, `MUST`, `SHOULD` | Struttura scenario: `GIVEN`, `WHEN`, `THEN` |
| Domanda a cui risponde | "Cosa è obbligatorio?" | "Come si osserva il risultato?" |
| Esito pratico | Contratti chiari per l'agente | Test di accettazione derivabili |

**Regola operativa:** prima definiamo il vincolo con EARS, poi ne proviamo l'esecuzione con BDD.

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
OpenSpec definisce una macchina a stati immutabile a tre fasi per ogni modifica:
1. Propose
2. Apply
3. Archive
Ogni transizione ha un output verificabile e impedisce di passare alla fase successiva senza allineamento.

---

# La macchina a stati di OpenSpec: Propose → Apply → Archive

| Fase | Obiettivo | Output della fase | Gate di passaggio |
| --- | --- | --- | --- |
| Propose | Allineare intento e ambito prima del codice | Cartella in `changes/` con `proposal.md`, `design.md`, `tasks.md`, Delta Specs | Revisione umana dell'intento |
| Apply | Implementare senza deviazioni dai vincoli | Codice + test aderenti a `design.md` e `tasks.md` | Verifica qualità su MUST/SHALL |
| Archive | Consolidare la modifica nella verità di sistema | Fusione Delta Specs in `specs/` + archivio storico della change | Stato aggiornato e audit trail persistente |

**Logica del ciclo:** cattura presto il disallineamento (Propose), esegui in modo deterministico (Apply), consolida nella Source of Truth (Archive).

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

# Scalabilità per team complessi: parallelismo e sincronizzazione

| Sviluppo parallelo (Git Worktrees) | Integrazione MCP (Model Context Protocol) |
| --- | --- |
| Branch multipli isolati sulla stessa codebase, senza contaminare la Source of Truth principale. | Collegamento tra stato OpenSpec e strumenti di tracking (es. Linear/Jira) tramite connettori MCP. |
| Orchestrazione di attività su feature diverse in contemporanea, con merge guidato dal ciclo `Propose -> Apply -> Archive`. | Backlog e stato reale del codice possono restare allineati, riducendo disallineamenti operativi. |
| Consolidamento finale nella Source of Truth con audit trail delle decisioni. | Aggiornamenti dei ticket più automatici e meno overhead amministrativo per il team. |

**Messaggio chiave:** OpenSpec scala sia orizzontalmente (più stream di sviluppo in parallelo) sia verticalmente (sincronizzazione governance/prodotto con gli strumenti aziendali).

---

# Il Problema del Codice Legacy
Come si introduce OpenSpec in un progetto esistente di 100.000 righe di codice senza documentazione?
**Non riscrivendo tutto da zero.**

---

# Brownfield: adozione incrementale nei sistemi legacy

| La scala dell'adozione | `spec-gen` (reverse engineering) |
| --- | --- |
| **1. Non fermare il mondo**<br>Nessun bisogno di produrre specifiche upfront per milioni di righe. | Motore opzionale per accelerare la partenza su moduli complessi o poco documentati. |
| **2. Sviluppo just-in-time**<br>Usa OpenSpec sulla prossima feature o sul bug critico, dove stai già intervenendo. | Analisi statica + pipeline LLM per estrarre regole di business dal codice esistente. |
| **3. Accumulo organico**<br>La Source of Truth cresce naturalmente ad ogni ciclo `Propose -> Apply -> Archive`. | Generazione assistita di file `spec.md` retroattivi, da rifinire e validare con il team. |

**Principio guida:** l'adozione parte dal lavoro reale di oggi; `spec-gen` è un acceleratore, non un prerequisito.

---

# Adozione Incrementale
La strategia suggerita è documentare solo ciò che si tocca.
Se si deve modificare il modulo di pagamento, si documenta solo quello. Nel tempo, la documentazione crescerà organicamente.

---

# Reverse Engineering delle Specifiche
L'uso di tool di supporto (come motori di `spec-gen`) permette di analizzare staticamente il codice sorgente esistente per generare architetture OpenSpec di base tramite AI, accelerando l'adozione.

---

# Mitigazione dei rischi: 4 anti-pattern da evitare

<div class="risk-grid">
  <div class="risk-card">
    <h2>Il cimitero delle proposte</h2>
    <p><strong>Problema:</strong> dimenticare `Archive` e lasciare change mai consolidate.</p>
    <p><strong>Fix:</strong> integrare l'archiviazione nel workflow operativo e nei controlli di qualità.</p>
  </div>
  <div class="risk-card">
    <h2>Il micro-management dell'AI</h2>
    <p><strong>Problema:</strong> scrivere dettagli implementativi nelle specifiche principali.</p>
    <p><strong>Fix:</strong> tenere il comportamento nelle spec e spostare il "come" in `design.md`.</p>
  </div>
  <div class="risk-card">
    <h2>Burocrazia per modifiche banali</h2>
    <p><strong>Problema:</strong> usare una SDD completa per un cambio minimo e non rischioso.</p>
    <p><strong>Fix:</strong> applicare progressive rigor e mantenere un approccio lightweight.</p>
  </div>
  <div class="risk-card">
    <h2>Ignorare la formattazione Delta</h2>
    <p><strong>Problema:</strong> non usare `ADDED`, `MODIFIED`, `REMOVED` in modo strutturato.</p>
    <p><strong>Fix:</strong> rispettare i metadati Delta per merge puliti e consolidamento affidabile.</p>
  </div>
</div>

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

# Impatto strategico: qualità del software e scalabilità umano-AI

## Determinismo nell'esecuzione + Resilienza dell'intento = Scalabilità umano-AI

| Precisione | Resilienza | Evoluzione del ruolo |
| --- | --- | --- |
| L'esecuzione guidata da specifiche aumenta la first-try accuracy e riduce rilavorazioni e regressioni. | La conoscenza architetturale non muore nella chat: entra nel patrimonio del team e resiste al turnover. | Il valore umano si sposta dal "scrivere tutto" al garantire che il codice generato sia esattamente quello necessario. |

**Sintesi:** quando l'implementazione è deterministica e l'intento rimane persistente, il sistema scala senza perdere qualità.

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

# Installazione su Windows

Per installare OpenSpec su Windows serve prima di tutto **Node.js 20.19.0 o superiore**.

```powershell
node --version
npm install -g @fission-ai/openspec@latest
openspec --version
```

```powershell
cd your-project
openspec init
```

Link ufficiali:
- Installazione: <https://github.com/Fission-AI/OpenSpec/blob/main/docs/installation.md>
- Documentazione generale: <https://github.com/Fission-AI/OpenSpec/tree/main/docs>

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


