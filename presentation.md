---
marp: true
theme: default
paginate: true
header: 'OpenSpec'
footer: 'OpenSpec | Matteo Baccan | DevFest Modena 2026 | ultimo aggiornamento del %date% %time%'
backgroundImage: url('img/devfest-frame-content.png')
style: |
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&family=Roboto+Mono:wght@100;300;400;500;700&family=JetBrains+Mono:wght@100;300&display=swap');

  /* Palette e tipografia ricavate dal template ufficiale
     "DevFest Modena 2026 - Speaker Presentation Template":
     sfondo #f0f0f0, card bianca con bordo #1e1e1e, headline Google Sans Bold,
     subhead/etichette Roboto Mono Light, pastelli Google. */
  :root {
    --df-ink: #1e1e1e;
    --df-paper: #f0f0f0;
    --df-blue: #4285f4;
    --df-green: #34a853;
    --df-yellow: #f9ab00;
    --df-red: #d93025;
    --df-blue-pastel: #c3ecf6;
    --df-yellow-pastel: #ffe7a5;
    --df-green-pastel: #ccf6c5;
    --df-red-pastel: #f8d8d8;
    --df-pink-pastel: #fce8e6;
    --df-grey: #e6e6e4;
    --df-muted: #5f6368;
    --df-sans: 'Google Sans Display', 'Google Sans', 'Product Sans', 'Poppins', 'Segoe UI', sans-serif;
    --df-mono: 'Roboto Mono', 'Google Sans Mono', 'Cascadia Code', 'Consolas', monospace;
  }

  section {
    font-family: var(--df-sans);
    font-size: 23px;
    /* padding calibrato per restare dentro la card bianca del frame */
    padding: 88px 104px 76px 96px;
    color: var(--df-ink);
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    line-height: 1.5;
    letter-spacing: 0.01em;
    /* l'interno della card nei PNG del frame è trasparente:
       il bianco della section diventa il bianco della card */
    background-color: #ffffff;
  }

  h1 {
    color: var(--df-ink);
    font-size: 1.7em;
    margin-top: 0;
    margin-bottom: 0.55em;
    font-weight: 700;
    letter-spacing: -0.01em;
    line-height: 1.15;
    border-bottom: none;
  }
  h2 {
    font-family: var(--df-mono);
    color: var(--df-ink);
    font-size: 1.05em;
    margin-bottom: 0.5em;
    font-weight: 300;
    letter-spacing: 0;
    line-height: 1.35;
  }

  ul, ol {
    margin-left: 0.6em;
    text-align: left;
    padding-left: 0.6em;
  }
  li {
    margin-bottom: 0.4em;
    color: var(--df-ink);
    text-align: left;
    line-height: 1.5;
  }
  li::marker {
    color: var(--df-ink);
    font-weight: 700;
    font-size: 1.25em;
  }

  strong {
    color: var(--df-ink);
    font-weight: 700;
  }
  em {
    color: var(--df-muted);
    font-style: italic;
  }

  pre {
    /* i blocchi di codice staccano dalla card bianca col grigio della palette */
    background: var(--df-grey);
    border: 2px solid var(--df-ink);
    border-radius: 16px;
    padding: 18px 22px;
    box-shadow: none;
    text-align: left;
    margin: 0.8em 0;
  }
  code {
    font-family: var(--df-mono);
    color: var(--df-ink);
    background-color: var(--df-yellow-pastel);
    padding: 2px 7px;
    border-radius: 6px;
    border: none;
    font-size: 0.9em;
    font-weight: 500;
  }
  pre code {
    color: var(--df-ink);
    background-color: transparent;
    padding: 0;
    border: none;
    font-size: 0.88em;
    font-weight: 400;
    line-height: 1.55;
  }

  blockquote {
    background: var(--df-blue-pastel);
    border: 2px solid var(--df-ink);
    border-radius: 16px;
    margin: 1.2em 0;
    padding: 0.9em 24px;
    font-style: normal;
    color: var(--df-ink);
    font-size: 0.95em;
    font-weight: 500;
    text-align: left;
  }

  table {
    /* Marp applica display:block + width:max-content alla tabella: senza questo
       il 100% finisce sul box esterno e le colonne non si distendono */
    display: table;
    overflow: visible;
    border-collapse: separate;
    border-spacing: 0;
    width: 100%;
    margin-top: 0.6em;
    font-size: 0.92em;
    background-color: #ffffff;
    text-align: left;
    border: 2px solid var(--df-ink);
    border-radius: 14px;
    box-shadow: none;
  }

  /* angoli arrotondati senza overflow:hidden, che renderebbe la tabella un
     contenitore di scorrimento impedendo alle colonne di distendersi al 100% */
  th:first-child { border-top-left-radius: 12px; }
  th:last-child { border-top-right-radius: 12px; }
  tr:last-child td:first-child { border-bottom-left-radius: 12px; }
  tr:last-child td:last-child { border-bottom-right-radius: 12px; }
  th {
    background: var(--df-ink);
    color: #ffffff;
    padding: 10px 14px;
    text-align: left;
    border: none;
    font-weight: 700;
    font-size: 0.95em;
    letter-spacing: 0.02em;
  }
  th strong {
    color: inherit;
    font-weight: 700;
  }
  th code {
    color: #ffffff;
    background-color: rgba(255,255,255,0.16);
    font-weight: 500;
  }
  td {
    border-bottom: 1px solid var(--df-grey);
    border-right: none;
    border-left: none;
    padding: 10px 14px;
    color: var(--df-ink);
    text-align: left;
    height: 1px;
  }
  tr:nth-child(even) {
    background-color: #f7f7f5;
  }
  tr:last-child td {
    border-bottom: none;
  }

  /* Etichette fuori dalla card, in Roboto Mono come nel template */
  header {
    top: 16px;
    left: 100px;
    right: auto;
    color: var(--df-muted);
    font-family: var(--df-mono);
    font-size: 13px;
    font-weight: 500;
    border-bottom: none;
    padding: 0;
    letter-spacing: 0.14em;
    text-transform: uppercase;
    background: none;
  }
  footer {
    bottom: 14px;
    left: 100px;
    right: 460px;
    color: var(--df-muted);
    font-family: var(--df-mono);
    font-size: 12px;
    font-weight: 400;
    border-top: none;
    padding: 0;
    text-align: left;
  }

  section::after {
    font-family: var(--df-mono);
    font-size: 13px;
    font-weight: 500;
    color: var(--df-muted);
    position: absolute;
    top: 14px;
    right: 26px;
    bottom: auto;
  }

  /* Slide titolo: frame ufficiale con logo { DevFest } e pill della città */
  section.lead {
    justify-content: flex-start;
    text-align: left;
    padding: 240px 130px 90px 112px;
  }
  section.lead::before {
    /* scrive "Modena" nella pill vuota del logo DevFest del frame */
    content: 'Modena';
    position: absolute;
    left: 114px;
    top: 130px;
    width: 222px;
    height: 32px;
    line-height: 32px;
    text-align: center;
    font-family: var(--df-sans);
    font-size: 19px;
    font-weight: 700;
    color: var(--df-ink);
  }
  section.lead h1 {
    color: var(--df-ink);
    font-size: 2.05em;
    line-height: 1.12;
    font-weight: 700;
    letter-spacing: -0.015em;
    margin-bottom: 0.4em;
  }
  section.lead h2 {
    font-family: var(--df-sans);
    color: var(--df-muted);
    font-size: 1.1em;
    font-weight: 500;
    line-height: 1.4;
    margin-top: 0.2em;
  }
  section.lead p {
    font-size: 0.95em;
    color: var(--df-ink);
    margin-top: 0.6em;
  }
  section.lead .speaker {
    margin-top: auto;
    font-family: var(--df-mono);
    font-size: 0.72em;
    font-weight: 400;
    line-height: 1.7;
    color: var(--df-ink);
  }
  section.lead header,
  section.lead footer {
    display: none;
  }
  section.lead::after {
    display: none;
  }

  /* Slide di sezione: numero grande Roboto Mono Thin + titolo nella card */
  section.section-title {
    justify-content: flex-start;
    text-align: left;
    /* dal template pptx: il titolo visibile parte a ~181px dall'alto */
    padding: 180px 120px 80px 460px;
  }
  section.section-title .section-num {
    /* box coincidente con la linguetta bianca del frame (misurata sul PNG):
       il numero viene centrato dal flex, non posizionato a mano */
    position: absolute;
    left: 53px;
    top: 54px;
    width: 331px;
    height: 153px;
    display: flex;
    align-items: center;
    justify-content: center;
    /* 61pt del template (base 405pt) = ~108px sulla slide Marp da 720px.
       JetBrains Mono Thin: zero col puntino come il Google Sans Mono del template */
    font-family: 'JetBrains Mono', 'Roboto Mono', monospace;
    font-weight: 100;
    font-size: 108px;
    letter-spacing: 0;
    line-height: 1;
    color: var(--df-ink);
  }
  section.section-title h1 {
    color: var(--df-ink);
    /* template: Google Sans Bold 45pt (~80px), interlinea 90%;
       qui 3em (~69px) per dare respiro ai titoli su due righe */
    font-size: 3em;
    line-height: 1.08;
    margin: 0;
  }
  section.section-title h2 {
    font-family: var(--df-mono);
    font-weight: 300;
    /* template: subhead Roboto Mono Light 18pt (~32px) a ~321px dall'alto */
    font-size: 1.35em;
    line-height: 1.45;
    margin-top: 56px;
    color: var(--df-ink);
  }
  section.section-title header,
  section.section-title footer {
    display: none;
  }

  /* Slide molto dense: corpo ridotto per restare dentro la card del frame */
  section.dense {
    font-size: 20px;
    padding-top: 80px;
    padding-bottom: 70px;
  }
  section.dense h1 {
    font-size: 1.75em;
  }

  /* Slide AMA: contenuto centrato verticalmente nella card */
  section.ama {
    /* il blocco deve restare sopra la tacca in basso a destra della cornice */
    justify-content: flex-start;
    padding-top: 245px;
    padding-bottom: 90px;
  }
  /* la AMA eredita da .lead la rimozione del numero: qui lo riattiva */
  section.ama::after {
    display: block;
  }
  section.ama h1 {
    font-size: 2.8em;
    margin-bottom: 0.2em;
  }
  section.ama h2 {
    font-family: var(--df-mono);
    font-weight: 300;
    font-size: 1.2em;
    color: var(--df-ink);
  }
  section.ama .pillar-card p {
    font-size: 1.05em;
    line-height: 1.3;
  }

  .contact-grid {
    display: flex;
    gap: 36px;
    margin-top: 0.4em;
    align-items: center;
  }
  .contact-photo {
    height: 330px;
    width: auto;
    border-radius: 16px;
    border: 2px solid var(--df-ink);
  }
  .contact-grid .qr-card {
    flex: 0 1 380px;
  }
  .contact-info {
    flex: 1 1 0;
    display: flex;
    flex-direction: column;
    gap: 0.4em;
  }
  .contact-info strong {
    font-size: 1.35em;
    line-height: 1.2;
  }
  .contact-info span {
    font-family: var(--df-mono);
    font-weight: 300;
    font-size: 0.8em;
    line-height: 1.45;
    color: var(--df-muted);
  }

  /* Slide di chiusura BeeAPro: riproduce la slide ufficiale del corner BeeAPro Lab.
     Geometria ricavata dal pptx (9144000x5143500 EMU) e riscalata su 1280x720px. */
  section.beeapro {
    padding: 0;
  }
  section.beeapro header,
  section.beeapro footer {
    display: none;
  }
  section.beeapro::after {
    display: none;
  }
  .beeapro-city,
  .beeapro-year {
    position: absolute;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--df-ink);
  }
  .beeapro-city {
    left: 116px;
    top: 125px;
    width: 232px;
    height: 45px;
    font-family: var(--df-sans);
    font-size: 17px;
    font-weight: 700;
  }
  .beeapro-year {
    left: 931px;
    top: 67px;
    width: 273px;
    height: 137px;
    font-family: 'Roboto Mono', var(--df-mono);
    font-weight: 200;
    font-size: 80px;
    line-height: 1;
  }
  .beeapro-promo {
    position: absolute;
    left: 180px;
    top: 242px;
    width: 558px;
    height: 385px;
  }
  .beeapro-qr {
    position: absolute;
    left: 920px;
    top: 223px;
    width: 273px;
    height: 273px;
  }

  .qr-grid {
    display: flex;
    gap: 28px;
    margin-top: 0.6em;
    align-items: stretch;
  }
  .qr-card {
    flex: 0 1 470px;
    padding: 16px 18px 12px 18px;
    border-radius: 16px;
    background: #ffffff;
    border: 2px solid var(--df-ink);
    box-shadow: none;
    text-align: center;
  }
  .qr-card img {
    display: block;
    width: 100%;
    max-width: 290px;
    height: auto;
    margin: 0 auto 10px auto;
  }
  .qr-card strong {
    display: block;
    margin-bottom: 0.35em;
  }
  .qr-card p {
    margin: 0;
    font-family: var(--df-mono);
    font-size: 0.72em;
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
    padding: 18px 18px 14px 18px;
    border-radius: 16px;
    background: var(--df-blue-pastel);
    border: 2px solid var(--df-ink);
    box-shadow: none;
  }
  .pillar-card:nth-child(2) {
    background: var(--df-green-pastel);
  }
  .pillar-card:nth-child(3) {
    background: var(--df-yellow-pastel);
  }
  .pillar-card h2 {
    font-family: var(--df-sans);
    margin-top: 0;
    margin-bottom: 0.55em;
    font-size: 1.02em;
    line-height: 1.2;
    font-weight: 700;
    color: var(--df-ink);
  }
  .pillar-card p {
    margin: 0 0 0.7em 0;
    font-size: 0.82em;
    line-height: 1.35;
  }
  .pillar-card p:last-child {
    margin-bottom: 0;
  }
  .pillar-card code {
    background-color: rgba(255,255,255,0.7);
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
    background: var(--df-pink-pastel);
    border: 2px solid var(--df-ink);
    box-shadow: none;
  }
  .risk-card h2 {
    font-family: var(--df-sans);
    margin-top: 0;
    margin-bottom: 0.45em;
    font-size: 0.98em;
    line-height: 1.2;
    font-weight: 700;
    color: var(--df-red);
  }
  .risk-card p {
    margin: 0 0 0.55em 0;
    font-size: 0.82em;
    line-height: 1.32;
  }
  .risk-card code {
    background-color: rgba(255,255,255,0.7);
  }

  .tagline {
    margin-top: 26px;
    font-family: var(--df-mono);
    font-weight: 300;
    font-size: 1em;
    letter-spacing: 0.02em;
    color: var(--df-ink);
  }
  .tagline strong {
    font-weight: 500;
    background-color: var(--df-yellow-pastel);
    padding: 2px 8px;
    border-radius: 6px;
  }

  .agenda {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 26px 44px;
    margin-top: 1.1em;
  }
  .agenda-item {
    display: flex;
    gap: 18px;
    align-items: flex-start;
  }
  .agenda-num {
    font-family: 'JetBrains Mono', var(--df-mono);
    font-weight: 100;
    font-size: 2.1em;
    line-height: 1.05;
    color: var(--df-ink);
  }
  .agenda-item strong {
    display: block;
    font-size: 1em;
    line-height: 1.25;
    margin-bottom: 0.25em;
  }
  .agenda-item span {
    display: block;
    font-family: var(--df-mono);
    font-weight: 300;
    font-size: 0.72em;
    line-height: 1.4;
    color: var(--df-muted);
  }
---

<!-- _class: lead -->
<!-- _backgroundImage: url('img/devfest-frame-title.png') -->

# OpenSpec: Spec-Driven Development nell'era degli Agenti AI

## Un nuovo paradigma per la collaborazione tra Umani e Intelligenza Artificiale

<div class="speaker">
Matteo Baccan<br>
DevFest Modena 2026 - 3/4 Ottobre 2026, Modena<br>
Track: AI &amp; Machine Intelligence
</div>

---

# Di cosa parleremo

<div class="agenda">
  <div class="agenda-item"><span class="agenda-num">01</span><div><strong>Dal Vibe Coding a OpenSpec</strong><span>Perché i prompt improvvisati non scalano e serve una struttura</span></div></div>
  <div class="agenda-item"><span class="agenda-num">02</span><div><strong>La Meccanica di OpenSpec</strong><span>Directory, artefatti e Delta Specs: l'anatomia del framework</span></div></div>
  <div class="agenda-item"><span class="agenda-num">03</span><div><strong>Il Linguaggio dell'Intento</strong><span>EARS + BDD: specifiche che l'agente non può fraintendere</span></div></div>
  <div class="agenda-item"><span class="agenda-num">04</span><div><strong>Il Ciclo di Esecuzione</strong><span>Propose → Apply → Archive: la macchina a stati delle modifiche</span></div></div>
  <div class="agenda-item"><span class="agenda-num">05</span><div><strong>Dal Team al Legacy</strong><span>Adozione incrementale sul brownfield e anti-pattern da evitare</span></div></div>
  <div class="agenda-item"><span class="agenda-num">06</span><div><strong>Perché Tutto Questo Conta</strong><span>Determinismo, intento persistente e il ruolo dell'Agentic Engineer</span></div></div>
</div>

---

<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">01</span>

# Dal Vibe Coding a OpenSpec

## Perché i prompt improvvisati non scalano e serve una struttura

---

# Il Problema: Agenti AI senza struttura

Gli agenti AI sono collaboratori attivi, ma senza struttura generano **vibe coding**: prompt informali, contesto volatile, drift dei requisiti.

* I requisiti vivono solo nella chat: nessuna documentazione persistente
* Allucinazioni architetturali e scelte inconsistenti
* Debito tecnico invisibile e difficilmente tracciabile

---

# La Soluzione: Spec-Driven Development

Lo **Spec-Driven Development** inverte il paradigma: **la struttura prima del codice**.

| | Vibe Coding | Spec-Driven Development |
| --- | --- | --- |
| **Flusso** | Prompt → Codice | Idea → Specifica → Architettura → Task → Codice |
| **Artefatti** | Nessuno (solo chat) | `proposal.md`, `design.md`, `tasks.md`, Delta Specs |
| **Verificabilità** | Impossibile | Ogni fase produce output controllabile |

---

# Cos'è OpenSpec?
OpenSpec è un framework open-source progettato per la Spec-Driven Development.

Non richiede paywall o API key proprietarie per esistere come metodo, non è vincolato a un IDE specifico o a un singolo vendor AI.

È un sistema basato su file Markdown che funge da "controllo di versione per l'intento"

- **Zero lock-in**
- Specifiche portabili
- Valore che resta nel repository.

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

# OpenSpec vs Strumenti di Project Management

I ticket nei sistemi tradizionali (come Jira o Linear) sono ottimi per gli umani, ma difficili da consultare in tempo reale dagli agenti AI.

OpenSpec porta le specifiche direttamente nel repository, dove l'agente opera.

---

<!-- _class: dense -->

# Ecosistema agnostico: zero lock-in come scelta

| Nodo centrale | Ecosistema collegabile |
| --- | --- |
| **OpenSpec** come livello stabile di intento e governance nel repository | Kilo Code, Cursor, Claude Code, Windsurf, GitHub Copilot e oltre 30 strumenti compatibili |

| Capacità | Impatto operativo |
| --- | --- |
| **Integrazioni intensive** | Uso tramite CLI e slash commands nativi nei principali IDE/LLM, senza riscrivere le specifiche |
| **Supporto universale (`AGENTS.md`)** | Le istruzioni restano leggibili da assistenti diversi (anche futuri), preservando storico e coerenza del processo. Sta diventando lo standard de facto: da Claude Code 2.1.277, in mancanza di `CLAUDE.md` viene letto `AGENTS.md` |

**Risultato:** cambi strumento quando vuoi, senza perdere memoria progettuale né controllo sull'intento.

---

# Approccio "Brownfield-First"

Molti framework AI sono ottimizzati per progetti nuovi (greenfield, 0→1).

OpenSpec brilla nei progetti esistenti (brownfield, 1→n), dove l'integrazione di nuove funzionalità senza rompere le vecchie è cruciale.

---

<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">02</span>

# La Meccanica di OpenSpec

## Directory, artefatti e Delta Specs: l'anatomia del framework

---

# L'Architettura del Framework
Tutto risiede in una singola directory radice all'interno del progetto: 

```
openspec
```

Questa directory agisce come la memoria a lungo termine dell'agente AI.

---

# La Separazione dello Stato

Il framework separa fisicamente:

* La descrizione dello stato attuale del sistema.
* Le proposte per le modifiche future.

Questa distinzione garantisce transizioni sicure e modifiche parallele.

---

# L'architettura a due cartelle: `specs/`

**L'Essere**: la fonte della verità.

Documentazione del comportamento attuale del sistema, organizzata per domini logici. L'agente la consulta prima di proporre o scrivere codice.

* `specs/auth/spec.md`
* `specs/payments/spec.md`
* `specs/ui/spec.md`

---

# L'architettura a due cartelle: `changes/`

**Il Divenire**: il workspace di modifica.

Laboratorio isolato per ogni nuova feature o bug fix. Nessun conflitto con le specifiche principali finché non si archivia.

Più sviluppatori (e più agenti AI) possono preparare funzionalità diverse simultaneamente, senza inquinare la logica base.

* `changes/add-oauth-login/`
  * `proposal.md`
  * `design.md`
  * `tasks.md`
  * `specs/...` (Delta)

---

# Configurazione: Il File `config.yaml`

Funziona come la "costituzione" tecnica del progetto.

Sostituisce configurazioni frammentate fornendo un set di regole chiare, stack tecnologici e convenzioni di sviluppo.

---

<!-- _class: dense -->

# Governance attiva: come `config.yaml` guida ogni richiesta

| `config.yaml` | Funzione | Effetto sull'agente |
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

<!-- _class: dense -->

# Anatomia end-to-end di una proposta

| Fase | File | Domanda chiave | Ruolo operativo |
| --- | --- | --- | --- |
| 1 | `proposal.md` | Perché / Cosa stiamo cambiando? | Definisce intento strategico e ambito lavori (business case iniziale). |
| 2 | `design.md` | Come lo realizziamo? | Fissa decisioni tecniche: architettura, flussi dati, librerie e vincoli. |
| 3 | `tasks.md` | Come eseguiamo in modo verificabile? | Scompone in task atomici e sequenziali, eseguibili dall'agente senza ambiguità. |
| 4 | Delta Specs | Cosa cambia nella Source of Truth? | Applica patch ai requisiti con sezioni `ADDED`, `MODIFIED`, `REMOVED`. |

**Flusso completo:** `proposal.md` → `design.md` → `tasks.md` → Delta → consolidamento → `specs/`

---

# L'Artefatto 1: `proposal.md`

Cattura l'intento strategico. Risponde alle domande "perché stiamo facendo questa modifica?" e "qual è lo scopo principale?".

È il punto di allineamento iniziale tra umano e macchina.

```markdown
## Why
Gli utenti abbandonano la registrazione: serve il login social.

## What Changes
- Aggiunta autenticazione OAuth (Google) al flusso di login
- Nessun impatto sul login email/password esistente
```

---

# L'Artefatto 2: `design.md`

È l'ancora tecnica. Delinea scelte di database, flussi di dati e specifiche librerie da utilizzare.
Impedisce all'agente di deviare dai pattern stabiliti "immaginando" soluzioni creative ma errate.

```markdown
## Decisioni tecniche
- Libreria: passport con strategy passport-google-oauth20
- Nel DB solo l'id utente Google: nessun token persistito
- Sessioni: riuso del meccanismo esistente (Redis)
```

---

# L'Artefatto 3: `tasks.md`

Una checklist numerata di azioni da compiere.

Funge da registro di avanzamento. L'agente aggiorna le spunte in tempo reale mentre scrive il codice, garantendo totale trasparenza.

```markdown
## 1. Backend
- [x] 1.1 Aggiungere endpoint GET /auth/google
- [x] 1.2 Gestire il callback e creare l'utente
- [ ] 1.3 Test di integrazione del flusso completo
```

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

* `ADDED Requirements`
* `MODIFIED Requirements`
* `REMOVED Requirements`

---

# Delta Tags: ADDED
Definisce comportamenti completamente nuovi.

Esempio: L'aggiunta di un sistema di autenticazione a due fattori in un progetto che prima aveva solo login base.

```markdown
## ADDED Requirements
### Requirement: Two-Factor Authentication
The system SHALL richiedere un secondo fattore al login.

#### Scenario: Login con 2FA attiva
- WHEN un utente con 2FA invia credenziali valide
- THEN viene richiesto un codice OTP prima di creare la sessione
```

---

# Delta Tags: MODIFIED
Descrive l'alterazione di comportamenti esistenti.

Richiede di riscrivere l'intero requisito aggiornato, garantendo che nessuna regola pregressa venga persa per distrazione dell'agente.

```markdown
## MODIFIED Requirements
### Requirement: Session Duration
The system SHALL scadere la sessione dopo 30 minuti di
inattività (prima: 24 ore), mantenendo il "ricordami"
per i dispositivi fidati.
```

---

# Delta Tags: REMOVED
Segnala funzionalità deprecate o da rimuovere.

Garantisce che il codice morto venga eliminato e che i vecchi test associati vengano disattivati correttamente.

```markdown
## REMOVED Requirements
### Requirement: Legacy XML Export
**Reason**: sostituito dall'export JSON
**Migration**: i client devono passare a /api/export/json
```

---


<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">03</span>

# Il Linguaggio dell'Intento

## EARS + BDD: specifiche che l'agente non può fraintendere

---

# Scrivere Specifiche Efficaci
Le specifiche non devono essere istruzioni di programmazione step-by-step.

Devono descrivere il comportamento osservabile del sistema dall'esterno. Sono contratti di business, non tutorial di codice.

---

<!-- _class: dense -->

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

> **Non nasce nel software.** EARS viene da Rolls-Royce: Alistair Mavin e colleghi la ricavarono analizzando le normative di aeronavigabilità del sistema di controllo di un motore a reazione, e la pubblicarono a IEEE RE'09 nel 2009.

Oggi è adottata da Airbus, Bosch, Honeywell, Intel, NASA e Siemens: la stessa sintassi che tiene in volo un motore ora vincola un agente AI.

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


<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">04</span>

# Il Ciclo di Esecuzione

## Propose → Apply → Archive: la macchina a stati delle modifiche

---

<!-- _class: dense -->

# Il Ciclo Operativo (Workflow)

OpenSpec definisce una macchina a stati immutabile a tre fasi per ogni modifica:

* Propose: `/opsx:propose`
* Apply: `/opsx:apply`
* Archive: `/opsx:archive`

Ogni transizione ha un output verificabile e impedisce di passare alla fase successiva senza allineamento.

**Fase zero opzionale:** `/opsx:explore`, un "thinking partner" senza vincoli che legge il codice e pesa le alternative prima di formalizzare la proposta.

Il profilo esteso aggiunge comandi come `/opsx:verify`, `/opsx:ff`, `/opsx:continue` e `/opsx:onboard`.

---

<!-- _class: dense -->

# La macchina a stati di OpenSpec

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

# La Scissione Cognitiva dell'Agente

Perché separare proposta e implementazione aumenta la qualità del codice generato?

Nel vibe coding il modello divide il proprio **budget di attenzione** tra tre compiti contemporaneamente:

* Risolvere il problema di business
* Progettare l'architettura software
* Scrivere codice sintatticamente corretto

Risultato: precisione ridotta su tutti e tre i fronti, più iterazioni, più errori architetturali.

---

# Focalizzazione: il 100% su un compito alla volta

Con OpenSpec ogni fase riceve l'intera capacità computazionale del modello:

| Fase | Focus dell'agente |
| --- | --- |
| **Propose** | 100% sull'architettura e le decisioni di design |
| **Apply** | 100% sulla correttezza e completezza del codice |
| **Archive** | 100% sulla coerenza documentale e la Source of Truth |

**Più focus su un compito → Meno errori → Meno cicli di correzione**

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

<!-- _class: dense -->

# Parallelismo e sincronizzazione

OpenSpec scala su tre assi:

**Orizzontale: branch paralleli**
Più agenti su feature diverse, ognuno con la propria cartella `changes/`; il ciclo `Propose → Apply → Archive` guida il merge ordinato nella Source of Truth.

**Verticale: Project Management**
Via MCP dialoga con Linear/Jira: il backlog resta allineato allo stato reale del codice.

**Cross-repo: Stores (beta)**
La pianificazione vive in un repository dedicato e condiviso; i repo di codice si allineano dopo.

**Messaggio chiave:** OpenSpec scala in orizzontale, in verticale e tra repository

---

# Orchestrazione Multi-Agente

OpenSpec non è solo un'interfaccia tra umano e LLM.
È un livello di astrazione che permette a **team di agenti specializzati** di collaborare autonomamente su sistemi complessi.

Invece di affidarsi a un singolo agente generico, il supervisore umano coordina ruoli distinti.

---

# I Ruoli nel Sistema Multi-Agente

<div class="pillar-grid">
  <div class="pillar-card">
    <h2>Agente Architetto</h2>
    <p>Consuma <code>config.yaml</code> e produce Record di Decisione Architetturale (ADR).</p>
    <p>Genera la struttura iniziale OpenSpec e pianifica la suddivisione logica del sistema.</p>
  </div>
  <div class="pillar-card">
    <h2>Agente Orchestratore</h2>
    <p>Legge il <code>tasks.md</code> prodotto dall'architetto e delega il lavoro ai team specializzati.</p>
    <p>Supervisiona l'avanzamento senza scrivere codice direttamente.</p>
  </div>
  <div class="pillar-card">
    <h2>Team di Sviluppo AI</h2>
    <p>Agenti iperspecializzati per dominio: Data Access, Business Logic, Frontend.</p>
    <p>Lavorano in parallelo sui propri task atomici, vincolati alle specifiche.</p>
  </div>
</div>

---


<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">05</span>

# Dal Team al Legacy

## Adozione incrementale sul brownfield e anti-pattern da evitare

---

# Il Problema del Codice Legacy

Come si introduce OpenSpec in un progetto esistente di 100.000 righe di codice senza documentazione?

**Non riscrivendo tutto da zero.**

---

# Brownfield adozione incrementale

| La scala dell'adozione | `/opsx:onboard` (reverse engineering) |
| --- | --- |
| **1. Non fermare il mondo**<br>Nessun bisogno di produrre specifiche upfront per milioni di righe. | Comando dedicato per accelerare la partenza su moduli complessi o poco documentati. |
| **2. Sviluppo just-in-time**<br>Usa OpenSpec sulla prossima feature o sul bug critico, dove stai già intervenendo. | L'agente analizza il codice esistente per estrarre le regole di business già implementate. |
| **3. Accumulo organico**<br>La Source of Truth cresce naturalmente ad ogni ciclo `Propose -> Apply -> Archive`. | Generazione assistita di file `spec.md` retroattivi, da rifinire e validare con il team. |

**Non serve documentare tutto prima di iniziare.**

---

<!-- _class: dense -->

# Memoria Episodica per il Codice Legacy

In un contesto brownfield un singolo prompt iniziale non basta.

OpenSpec supporta un'architettura a **memoria episodica** che trasforma i fallimenti in istruzioni correttive persistenti:

| Componente | Funzione |
| --- | --- |
| **Agente Riflettore** | Si attiva ogni N scambi, analizza la cronologia recente, identifica errori architetturali e produce una root-cause analysis |
| **Agente Curatore** | Legge l'analisi del Riflettore e la traduce in mutazioni di regole (aggiunte, aggiornamenti, rimozioni) |
| **Playbook Eseguibile** | Regole salvate in un file JSON di sessione: l'agente costruisce il proprio manuale tattico mentre lavora |

**L'agente impara dai propri errori e non li ripete nella stessa sessione.**

---

<!-- _class: dense -->

# Mitigazione dei rischi: 4 anti-pattern da evitare

<div class="risk-grid">
  <div class="risk-card">
    <h2>Il cimitero delle proposte</h2>
    <p><strong>Problema:</strong> dimenticare <code>Archive</code> e lasciare change mai consolidate.</p>
    <p><strong>Fix:</strong> integrare l'archiviazione nel workflow operativo e nei controlli di qualità.</p>
  </div>
  <div class="risk-card">
    <h2>Il micro-management dell'AI</h2>
    <p><strong>Problema:</strong> scrivere dettagli implementativi nelle specifiche principali.</p>
    <p><strong>Fix:</strong> tenere il comportamento nelle spec e spostare il "come" in <code>design.md</code>.</p>
  </div>
  <div class="risk-card">
    <h2>Burocrazia per modifiche banali</h2>
    <p><strong>Problema:</strong> usare una SDD completa per un cambio minimo e non rischioso.</p>
    <p><strong>Fix:</strong> applicare progressive rigor e mantenere un approccio leggero.</p>
  </div>
  <div class="risk-card">
    <h2>Ignorare la formattazione Delta</h2>
    <p><strong>Problema:</strong> non usare <code>ADDED</code>, <code>MODIFIED</code>, <code>REMOVED</code> in modo strutturato.</p>
    <p><strong>Fix:</strong> rispettare i metadati Delta per merge puliti e consolidamento affidabile.</p>
  </div>
</div>

---


<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">06</span>

# Perché Tutto Questo Conta

## Determinismo, intento persistente e il ruolo dell'Agentic Engineer

---

# Impatto strategico

## Determinismo + intento persistente = scalabilità umano-AI

| Precisione | Resilienza | Evoluzione del ruolo |
| --- | --- | --- |
| Specifiche eseguibili: più accuratezza al primo tentativo, meno rilavorazioni. | La conoscenza architetturale non muore nella chat: resta al team e resiste al turnover. | Il valore umano passa dallo "scrivere tutto" al garantire che il codice sia quello necessario. |

**Sintesi:** quando l'implementazione è deterministica e l'intento rimane persistente, il sistema scala senza perdere qualità.

---

# Il nuovo professionista: l'Agentic Engineer

Lo SDD forma una nuova categoria professionale che va oltre il programmatore tradizionale.

Un **ingegnere di sistemi agentici** che padroneggia:

- La progettazione del contesto per gli agenti
- La segmentazione di carichi di lavoro complessi in task atomici
- La prevenzione della corruzione della memoria episodica
- Il coordinamento tra molteplici collaboratori sintetici specializzati
- La manutenibilità a lungo termine delle infrastrutture software

**Il codice è l'output. La specifica è la competenza.**

---

# Conclusione

OpenSpec non riguarda lo scrivere meno codice, ma garantire che il codice generato dalle intelligenze artificiali sia **esattamente quello necessario**.

L'arte di definire l'intento è la competenza più preziosa del futuro.

---

<!-- _class: lead ama -->
<!-- _backgroundImage: url('img/devfest-frame-title.png') -->

# AMA

## Ask Me Anything: chiedimi quello che vuoi.

<div class="pillar-grid">
  <div class="pillar-card">
    <p>Le mucche dormono in piedi?</p>
  </div>
  <div class="pillar-card">
    <p>Quante uova fa una gallina in un anno?</p>
  </div>
</div>

---

# Contatti

<div class="contact-grid">
  <img class="contact-photo" src="img/matteo-baccan.jpg" alt="Matteo Baccan" />
  <div class="contact-info">
    <strong>Matteo Baccan</strong>
    <span>Rivoluzione Digitale<br>head of development</span>
  </div>
  <div class="qr-card">
    <img src="img/baccan.it.png" alt="QR code per baccan.it" />
    <p>https://www.baccan.it</p>
  </div>
</div>

<p class="tagline"><strong>"Smetti di chattare, inizia a governare."</strong></p>

---

# Chi devo ringraziare per queste slide?

- DevFest Modena: per avermi invitato a parlare qui per la prima volta
- Anthropic: per l'abbonamento Claude Code Max, regalato per i miei contributi al mondo open source
- Claude: per aver convertito il template PowerPoint in un template Marp in markdown
- Nano Banana Pro: per le immagini
- NotebookLM: per la prima scaletta e i riassunti dei podcast e video
- VSCode: per gestire il progetto GitHub
- Marp: per la presentazione

---

<!-- _class: beeapro -->
<!-- _backgroundImage: url('img/devfest-frame-outro.png') -->

<span class="beeapro-city">Modena 2026</span>
<span class="beeapro-year">2026</span>

<img class="beeapro-promo" src="img/beeapro-rivivi-devfest.png" alt="Rivivi il 100% del DevFest: riassunti, interviste e materiale ufficiale di ogni talk, raccolti su BeeAPro" />
<img class="beeapro-qr" src="img/beeapro-qr.jpg" alt="QR code del corner BeeAPro Lab" />
