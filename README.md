# OpenSpec: Spec-Driven Development nell'era degli Agenti AI

Repository della presentazione di Matteo Baccan dedicata a OpenSpec e allo Spec-Driven Development come approccio operativo per lavorare con agenti AI in modo rigoroso, ripetibile e verificabile.

L'idea centrale e' semplice: il problema non e' "usare l'AI per scrivere codice", ma evitare che il codice venga generato a partire da prompt vaghi, contesto volatile e decisioni non tracciate. OpenSpec propone di spostare il baricentro su specifiche versionate, leggibili sia dagli umani sia dagli agenti.

## Abstract

La presentazione parte dai limiti del vibe coding: richieste informali in chat, perdita del contesto, deriva dei requisiti, allucinazioni architetturali e debito tecnico difficile da ricostruire.

La risposta proposta e' lo Spec-Driven Development: prima si formalizza l'intento, poi si implementa. In questo modello le specifiche diventano la source of truth del progetto, mentre l'agente AI opera entro confini chiari, verificabili e persistenti.

## Cosa racconta la presentazione

Il deck copre quattro temi principali:

1. Perche' il vibe coding non scala.
   Quando i requisiti esistono solo nella cronologia della chat, la qualita' decade rapidamente: l'agente dimentica, interpreta, inventa e devia.

2. Cos'e' OpenSpec.
   OpenSpec e' un framework open source basato su file Markdown e Git, pensato per mantenere l'intento sotto controllo di versione e trasformarlo in istruzioni operative per gli agenti AI.

3. Come funziona il workflow.
   Il modello operativo e' diviso in tre fasi: Propose, Apply, Archive. Prima si definisce la modifica, poi la si implementa, infine si consolida la nuova verita' nella documentazione di progetto.

4. Perche' e' utile anche su sistemi esistenti.
   L'approccio e' brownfield-first: non richiede di riscrivere tutto da zero e puo' essere adottato in modo incrementale, documentando e strutturando solo cio' che viene toccato.

## Concetti chiave di OpenSpec

- `specs/`: descrive il comportamento corrente del sistema ed e' la source of truth.
- `changes/`: ospita le modifiche proposte in modo isolato.
- `config.yaml`: raccoglie stack, regole e convenzioni da iniettare nel contesto dell'agente.
- `proposal.md`: spiega il perche' della modifica.
- `design.md`: definisce i vincoli tecnici.
- `tasks.md`: spezza il lavoro in task atomici e verificabili.
- Delta Specs: esprimono cosa viene aggiunto, modificato o rimosso senza rigenerare tutta la documentazione.

## Struttura del repository

- `presentation.md`: sorgente Marp della presentazione completa.
- `presentation.pdf`: export PDF gia' generato.
- `img/`: immagini e asset grafici usati nelle slide.
- `generate_pdf.bat`: script batch per rigenerare il PDF con Marp.
- `2del/`: materiale di lavoro non incluso nel flusso principale della presentazione.

## Generazione delle slide

Per rigenerare il PDF e' sufficiente avere Node.js disponibile e lanciare:

```bat
generate_pdf.bat
```

Lo script usa `npx @marp-team/marp-cli presentation.md --pdf --allow-local-files`.

## Posizionamento del messaggio

La tesi della presentazione non e' che gli agenti AI sostituiranno lo sviluppo tradizionale, ma che senza specifiche solide il loro contributo resta fragile.

OpenSpec viene presentato come un modo per trasformare prompt effimeri in artefatti stabili, auditabili e riusabili: meno improvvisazione, meno context rot, piu' controllo sull'intento e sul risultato.

## Crediti

Materiali e strumenti citati nelle slide:

- Gemini per la riformattazione.
- Nano Banana Pro per le immagini.
- NotebookLM per scaletta e sintesi dei materiali di partenza.
- VS Code per la gestione del repository.
- Marp per la generazione della presentazione.

## Autore

Matteo Baccan  
Sito: <https://www.baccan.it>

> "Smetti di chattare, inizia a governare."
