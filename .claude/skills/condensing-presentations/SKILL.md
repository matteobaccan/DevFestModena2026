---
name: condensing-presentations
description: Use when deriving a shorter talk from an existing slide deck: a time slot changed, an "N-minute version" is requested, or a deck must be cut to fit (e.g. a 30-minute version of a full Marp/PowerPoint presentation)
---

# Condensing Presentations

## Overview

Cutting to fit is the constraint, not the goal. The goal is that the audience walks out able to name one thing they will do differently, and able to actually do it.

Budget: one slide per minute. An N-minute slot gets N slides, title, dividers and closing included.

A reduced deck that fits the slot perfectly and teaches nothing has failed. Judge the result by what the audience can now do, never by whether it fits.

## Process

1. **Inventory** - read the full deck; list every slide with a one-line summary. Mark duplicates: long decks restate the same concept across multiple slides (an overview slide plus one slide per detail, a grid plus one slide per cell). Restatements are the first cut.

2. **Write the takeaway first** - before cutting anything, write the 3 to 5 concrete actions the audience should be able to apply to their own work: imperative, specific enough to act on without notes, each sourced from the full deck. This list is the selection criterion for every step that follows, not a closing slide to fill in at the end.
   State the fil rouge too, in one sentence: what they should take home. Ask the speaker if it is not given.
   If the source deck cannot support concrete actions (claims and principles, but no examples, commands or named artifacts), say so to the speaker before cutting. A reduced deck cannot create value the original does not have, and the fix belongs in the full deck.

3. **Budget** - total slides = minutes. Reserve the fixed slots (see Quick reference); the remainder is content, split across chapters roughly in proportion to their weight in the original.

4. **Select against the takeaway** - every slide kept must either earn one of the actions or carry the narrative towards it.
   When the budget forces a choice, **protect the concrete and cut the abstract**: keep the code block, the real file names, the before/after table, the command to type, the worked example. Cut the slides that restate why the topic matters. They are short, so they survive a naive cut easily, and they are exactly the ones that teach nothing.
   Prefer merging 2 to 3 related slides into one dense slide (comparison table, card grid, example block) over dropping a concept; delete pure restatements outright. Keep the strongest existing slide of each concept as the merge base. Never invent content that is not in the source deck.

5. **Preserve identity** - create a new file next to the original (e.g. `presentation30min.md`); copy the original front matter, theme and CSS verbatim. Do not redesign, restyle, or rename classes.

6. **Land the takeaway** - the last content slide is the list from step 2. Change it only if selection proved an action unsupportable, and in that case fix the selection first.

7. **Verify form** - render the reduced deck (e.g. `marp --images png`), count the slides (must equal the budget), and inspect every merged slide for overflow. Update build tooling (CI workflow, README build commands) so the reduced deck is rendered alongside the original: a deck the pipeline ignores will silently drift.

8. **Verify substance** - the check that decides whether the deck was worth making:
   - every action on the takeaway slide traces to a kept slide that shows **how**, not merely that it matters;
   - every chapter leaves at least one concrete artifact: an example, a command, a named file, a rule the audience can reuse. A closing chapter whose job is rationale may be served by the take-home slide that follows it; no other chapter gets that exemption;
   - the agenda still matches the chapters;
   - read the kept titles in order; they should read as an argument, not as a list of topics.

   Report every action you could not trace back to a kept slide instead of quietly shipping it.

## Quick reference

| Slot | Slides |
|---|---|
| Title | 1 |
| Agenda | 1 |
| Chapter dividers | 1 per chapter (keep the chapter structure) |
| Take-home synthesis | 1 |
| Closing (Q&A or AMA, merged with contacts) | 1 |
| Content | remainder |

## Common mistakes

- Treating the takeaway as a slot to fill at the end rather than the criterion that drives selection. Written last, it can only summarise whatever happened to survive.
- Keeping the abstract and cutting the concrete. The "why this matters" slides are short and read like summaries, so they survive the cut; the worked example that made the idea usable does not.
- Cutting whole chapters instead of merging within them: the narrative arc breaks and the agenda no longer matches.
- Shrinking typography to cram three slides of prose into one. Merging means selecting content, not compressing font sizes.
- Rewriting the speaker's message while condensing: tighten the wording, keep the intent, the terminology and the language.
- Forgetting the pipeline: if CI renders only the original, the reduced deck drifts unnoticed.
