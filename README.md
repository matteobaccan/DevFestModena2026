# OpenSpec: Spec-Driven Development nell'era degli Agenti AI

Repository della presentazione di Matteo Baccan dedicata a OpenSpec e allo Spec-Driven Development come approccio operativo per lavorare con agenti AI in modo rigoroso, ripetibile e verificabile.

L'idea centrale e' semplice: il problema non e' "usare l'AI per scrivere codice", ma evitare che il codice venga generato da prompt vaghi, contesto volatile e decisioni non tracciate. OpenSpec sposta il baricentro su specifiche versionate, leggibili dagli umani e vincolanti per gli agenti.

## Tesi

La presentazione sostiene che il vero salto non sia la velocita' di generazione del codice, ma il controllo dell'intento.

OpenSpec viene presentato come un sistema che trasforma conversazioni effimere in artefatti persistenti:

- nessuna dipendenza da paywall o API key proprietarie come metodo di lavoro;
- zero lock-in verso IDE, modelli o vendor AI;
- solo intento deterministico, espresso in specifiche che l'agente deve seguire.

## Cosa racconta la presentazione

Il deck si sviluppa in sei blocchi principali:

1. Dal problema al metodo.
   Vibe coding, perdita del contesto, deriva dei requisiti e debito tecnico nascosto mostrano perche' un approccio puramente conversazionale non scala.

2. Che cos'e' OpenSpec.
   OpenSpec e' un framework open source basato su Markdown e Git, pensato per mantenere l'intento sotto controllo di versione e renderlo eseguibile dagli agenti.

3. La meccanica del framework.
   La separazione tra `specs/` e `changes/`, l'uso di `config.yaml` e gli artefatti di pianificazione costruiscono la memoria operativa del progetto.

4. Il linguaggio dell'intento.
   EARS definisce l'obbligazione (`SHALL`, `MUST`, `SHOULD`), BDD ne definisce la verifica (`GIVEN`, `WHEN`, `THEN`).

5. Il ciclo di esecuzione.
   OpenSpec viene descritto come una macchina a stati: `Propose -> Apply -> Archive`, con gate chiari tra allineamento, implementazione e consolidamento.

6. Scala, rischi e impatto.
   Il deck chiude su brownfield adoption, sviluppo parallelo, sincronizzazione con tool aziendali, anti-pattern e impatto strategico su qualita' e scalabilita' umano-AI.

## I tre pilastri

- `Brownfield-First`: OpenSpec e' pensato per evolvere sistemi esistenti, non solo per prototipi greenfield.
- `Architettura Leggera`: Markdown + Git, senza infrastruttura pesante e senza database complessi.
- `Agnosticismo Totale`: le specifiche restano nel repository e sopravvivono al cambio di strumento, modello o ambiente.

## Concetti chiave di OpenSpec

- `specs/`: descrive il comportamento corrente del sistema ed e' la Source of Truth.
- `changes/`: ospita le modifiche proposte in modo isolato, senza contaminare lo stato consolidato.
- `config.yaml`: raccoglie workflow, contesto e regole da iniettare nel prompt di pianificazione.
- `proposal.md`: chiarisce perche' e cosa si sta cambiando.
- `design.md`: fissa il come tecnico, i vincoli e le scelte architetturali.
- `tasks.md`: spezza il lavoro in task atomici, verificabili ed eseguibili.
- Delta Specs: formalizzano `ADDED`, `MODIFIED`, `REMOVED` per consolidare le modifiche nella Source of Truth.

## Workflow operativo

OpenSpec definisce un ciclo immutabile a tre fasi:

1. `Propose`
   L'agente allinea l'intento e produce la cartella di modifica con proposal, design, tasks e Delta Specs.

2. `Apply`
   L'agente implementa solo dopo approvazione, restando nei confini definiti da `design.md` e `tasks.md`.

3. `Archive`
   Le Delta Specs vengono fuse in `specs/` e la modifica entra nell'archivio storico del progetto.

## Perche' e' adatto ai sistemi legacy

Il deck insiste su un punto: OpenSpec non richiede di riscrivere o documentare tutto upfront.

L'adozione puo' essere incrementale:

- si documenta solo cio' che si tocca;
- la Source of Truth cresce organicamente nel tempo;
- `spec-gen` puo' accelerare il reverse engineering, ma non e' un prerequisito per partire.

## Rischi e anti-pattern

La presentazione evidenzia quattro errori da evitare:

- il cimitero delle proposte: dimenticare la fase di `Archive`;
- il micro-management dell'AI: scrivere pseudo-codice nelle specifiche principali;
- la burocrazia per modifiche banali: usare troppa struttura dove non serve;
- ignorare la formattazione Delta: rompere il consolidamento strutturale.

## Impatto strategico

La tesi finale della presentazione e' che:

`determinismo nell'esecuzione` + `resilienza dell'intento` = `scalabilita' umano-AI`

Tradotto in pratica:

- maggiore accuratezza al primo tentativo;
- protezione del know-how architetturale;
- un nuovo ruolo per lo sviluppatore, piu' orientato a governare l'intento che a micro-guidare il codice.

## Struttura del repository

- `presentation.md`: sorgente Marp della presentazione completa.
- `presentation.pdf`: export PDF della presentazione.
- `img/`: immagini e asset grafici usati nelle slide.
- `.github/`: metadati del repository.

## Generazione delle slide

Per rigenerare il PDF e' sufficiente avere Node.js disponibile e lanciare:

```powershell
npx @marp-team/marp-cli presentation.md --pdf --allow-local-files
```

## Installazione di OpenSpec su Windows

Per installare OpenSpec su Windows servono Node.js `20.19.0` o superiore e un package manager supportato.

Comandi principali:

```powershell
node --version
npm install -g @fission-ai/openspec@latest
openspec --version
cd your-project
openspec init
```

Documentazione ufficiale:

- Installazione: <https://github.com/Fission-AI/OpenSpec/blob/main/docs/installation.md>
- Documentazione generale: <https://github.com/Fission-AI/OpenSpec/tree/main/docs>
- Repository OpenSpec upstream: <https://github.com/Fission-AI/OpenSpec>

## Crediti

Materiali e strumenti citati nelle slide:

- Gemini per la riformattazione.
- Nano Banana Pro per le immagini.
- NotebookLM per la prima scaletta e i riassunti dei podcast e video.
- VS Code per la gestione del repository.
- Marp per la generazione della presentazione.

## Autore

Matteo Baccan  
Sito: <https://www.baccan.it>

> "Smetti di chattare, inizia a governare."
