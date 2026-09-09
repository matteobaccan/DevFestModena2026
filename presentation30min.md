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
    border-collapse: separate;
    border-spacing: 0;
    width: 100%;
    margin-top: 0.6em;
    font-size: 0.92em;
    background-color: #ffffff;
    text-align: left;
    border: 2px solid var(--df-ink);
    border-radius: 14px;
    overflow: hidden;
    box-shadow: none;
  }
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

  /* Slide di sezione: numero grande + titolo nella card */
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

Non richiede paywall o API key proprietarie, non è vincolato a un IDE specifico o a un singolo vendor AI.

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

# La specifica è la fonte della verità

I documenti sono **istruzioni eseguibili e vincolanti** per gli agenti AI, non suggerimenti: solo intento deterministico, espresso in un contratto scritto.

* **Living documentation**: le specifiche vivono in Git accanto al codice e si evolvono col sistema, senza diventare obsolete
* A differenza dei ticket (Jira, Linear), stanno dove l'agente opera: **nel repository**
* Supporta oltre 30 strumenti: cambi modello, IDE o vendor e il processo resta intatto

---

<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">02</span>

# La Meccanica di OpenSpec

## Directory, artefatti e Delta Specs: l'anatomia del framework

---

# Un'unica directory: la memoria dell'agente

Tutto risiede in `openspec/`, la memoria a lungo termine dell'agente AI, con due anime separate:

| Cartella | Ruolo | Contenuto |
| --- | --- | --- |
| **`specs/` (l'Essere)** | La Source of Truth | Comportamento attuale del sistema, per domini logici (`auth/`, `payments/`, `ui/`) |
| **`changes/` (il Divenire)** | Il workspace di modifica | Una cartella isolata per ogni feature o bug fix, senza conflitti finché non si archivia |

Questa distinzione garantisce transizioni sicure e modifiche parallele.

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

# L'intento in pratica: `proposal.md`

Cattura l'intento strategico: "perché stiamo facendo questa modifica?". È il punto di allineamento iniziale tra umano e macchina.

```markdown
## Why
Gli utenti abbandonano la registrazione: serve il login social.

## What Changes
- Aggiunta autenticazione OAuth (Google) al flusso di login
- Nessun impatto sul login email/password esistente
```

---

# L'esecuzione in pratica: `tasks.md`

Una checklist di azioni atomiche: l'agente aggiorna le spunte in tempo reale mentre scrive il codice, garantendo totale trasparenza.

```markdown
## 1. Backend
- [x] 1.1 Aggiungere endpoint GET /auth/google
- [x] 1.2 Gestire il callback e creare l'utente
- [ ] 1.3 Test di integrazione del flusso completo
```

---

# Delta Specs: patch per i requisiti

La vera innovazione: invece di riscrivere l'intera specifica, l'agente descrive solo cosa cambia: meno token, più accuratezza.

* `ADDED Requirements`: comportamenti completamente nuovi
* `MODIFIED Requirements`: requisiti riscritti per intero, senza perdere regole pregresse
* `REMOVED Requirements`: funzionalità deprecate, con motivo e migrazione

```markdown
## MODIFIED Requirements
### Requirement: Session Duration
The system SHALL scadere la sessione dopo 30 minuti di
inattività (prima: 24 ore).
```

---

<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">03</span>

# Il Linguaggio dell'Intento

## EARS + BDD: specifiche che l'agente non può fraintendere

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

# Dallo scenario al test

Le specifiche descrivono il comportamento osservabile, non i passi di implementazione: sono contratti di business, non tutorial di codice.

* **GIVEN:** Il contesto iniziale (es. "Dato un utente non autenticato").
* **WHEN:** L'azione scatenante (es. "Quando visita la dashboard").
* **THEN:** Il risultato atteso (es. "Allora viene reindirizzato al login").

Con scenari così strutturati, l'agente genera automaticamente i test unitari o e2e corrispondenti, chiudendo il ciclo della qualità.

---

<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">04</span>

# Il Ciclo di Esecuzione

## Propose → Apply → Archive: la macchina a stati delle modifiche

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

# Focalizzazione: il 100% su un compito alla volta

Nel vibe coding il modello divide l'attenzione fra business, architettura e sintassi. Con OpenSpec ogni fase riceve l'intera capacità del modello:

| Fase | Focus dell'agente |
| --- | --- |
| **Propose** | 100% sull'architettura e le decisioni di design |
| **Apply** | 100% sulla correttezza e completezza del codice |
| **Archive** | 100% sulla coerenza documentale e la Source of Truth |

**Più focus su un compito → Meno errori → Meno cicli di correzione**

---

# OpenSpec scala col team

* **Orizzontale (branch paralleli):** più agenti su feature diverse, ognuno con la propria cartella `changes/`; il ciclo guida il merge ordinato
* **Verticale (Project Management):** via MCP dialoga con Linear/Jira, il backlog resta allineato allo stato reale del codice
* **Multi-agente:** un Architetto pianifica, un Orchestratore delega, team di agenti specializzati eseguono in parallelo i task atomici

---

<!-- _class: section-title -->
<!-- _backgroundImage: url('img/devfest-frame-section.png') -->

<span class="section-num">05</span>

# Dal Team al Legacy

## Adozione incrementale sul brownfield e anti-pattern da evitare

---

# Brownfield: adottare senza fermare il mondo

Come si introduce OpenSpec in 100.000 righe di codice senza documentazione? **Non riscrivendo tutto da zero.**

* **Sviluppo just-in-time:** documenta solo ciò che tocchi, partendo dalla prossima feature o dal prossimo bug critico
* **Accumulo organico:** la Source of Truth cresce ad ogni ciclo `Propose → Apply → Archive`
* **Reverse engineering:** `/opsx:onboard` analizza il codice esistente e genera specifiche retroattive da validare col team (opzionale, non un prerequisito)

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

Un ingegnere di sistemi agentici che padroneggia la progettazione del contesto, la segmentazione in task atomici e il coordinamento di collaboratori sintetici specializzati.

OpenSpec non riguarda lo scrivere meno codice, ma garantire che il codice generato sia **esattamente quello necessario**.

**Il codice è l'output. La specifica è la competenza.**

---

# Cosa porti a casa da domani

* **Installa:** `npm install -g @fission-ai/openspec`, poi `openspec init` nel tuo progetto esistente
* **Parti piccolo:** documenta solo la prossima feature o il prossimo bug critico, niente Big Bang documentale
* **Scrivi per l'agente:** requisiti EARS (`SHALL`/`SHOULD`) + scenari `GIVEN`/`WHEN`/`THEN` verificabili
* **Separa le fasi:** prima rivedi la proposta (secondi), poi lascia scrivere il codice (l'architettura sbagliata costa giorni)
* **Archivia sempre:** le Delta Specs fuse in `specs/` sono la tua Source of Truth, non la chat

---

# Grazie! Domande? Parliamone.

<div class="contact-grid">
  <img class="contact-photo" src="img/matteo-baccan.jpg" alt="Matteo Baccan" />
  <div class="qr-card">
    <img src="img/baccan.it.png" alt="QR code per baccan.it" />
    <p>https://www.baccan.it</p>
  </div>
</div>

<p class="tagline"><strong>"Smetti di chattare, inizia a governare."</strong></p>
