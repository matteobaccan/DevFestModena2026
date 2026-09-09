---
name: condensing-presentations
description: Use when deriving a shorter talk from an existing slide deck — a time slot changed, an "N-minute version" is requested, or a deck must be cut to fit (e.g. a 30-minute version of a full Marp/PowerPoint presentation)
---

# Condensing Presentations

## Overview

Derive a reduced deck from a full one at a pace of **one slide per minute**: an N-minute slot gets N slides, title, dividers and closing included. The result is not a shorter copy — it is a deck where every slide serves the single take-home message.

## Process

1. **Inventory** — read the full deck; list every slide with a one-line summary. Mark duplicates: long decks restate the same concept across multiple slides (an overview slide plus one slide per detail, a grid plus one slide per cell). Restatements are the first cut.
2. **Fil rouge** — state in one sentence what the audience should take home and apply to their own work. Ask the speaker if it isn't given. Every slide kept must serve it.
3. **Budget** — total slides = minutes. Reserve fixed slots (see Quick reference); the remainder is content, split across chapters roughly in proportion to their weight in the original.
4. **Select and merge** — prefer merging 2–3 related slides into one dense slide (comparison table, card grid, example block) over dropping a concept; delete pure restatements outright. Keep the strongest existing slide of each concept as the merge base. Never invent content that is not in the source deck.
5. **Preserve identity** — create a new file next to the original (e.g. `presentation30min.md`); copy the original front-matter/theme/CSS verbatim. Do not redesign, restyle, or rename classes.
6. **Land the takeaway** — end the content with one synthesis slide of 3–5 concrete actions the audience can start applying to their own work, phrased imperatively, sourced from the deck.
7. **Verify** — render the reduced deck (e.g. `marp --images png`), count the slides (must equal the budget), and inspect every merged slide for overflow. Update build tooling (CI workflow, README build commands) so the reduced deck is rendered alongside the original — a deck the pipeline ignores will silently drift.

## Quick reference

| Slot | Slides |
|---|---|
| Title | 1 |
| Agenda | 1 |
| Chapter dividers | 1 per chapter (keep the chapter structure) |
| Take-home synthesis | 1 |
| Q&A / contacts | 1 (merge them) |
| Content | remainder |

## Common mistakes

- Cutting whole chapters instead of merging within them — the narrative arc breaks; the agenda no longer matches.
- Shrinking typography to cram three slides of prose into one — merging means selecting content, not compressing font sizes.
- Rewriting the speaker's message while condensing — tighten wording, keep intent, terminology and language.
- Dropping the closing takeaway to save a slide — it is the reason the reduced deck exists.
- Forgetting the pipeline: if CI renders only the original, the reduced deck drifts unnoticed.
