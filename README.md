# TOEIC Preparation & English Grammar Knowledge Vault

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Notes](https://img.shields.io/badge/Notes-Obsidian-purple.svg)](https://obsidian.md/)
[![Grammar](https://img.shields.io/badge/Grammar-English%20Grammar%20in%20Use-blue.svg)](https://www.cambridge.org)

> A structured, comprehensive study vault and digital garden designed for mastering **TOEIC Reading & Listening**, focusing on high-frequency grammar patterns (*English Grammar in Use - Raymond Murphy*, 5th edition, Units 1-145), pronunciation (*English Pronunciation in Use*), systematic exercises with detailed explanations, and a curated business vocabulary handbook. Optimized for both **Obsidian** and **GitHub**.

---

## Repository Architecture

```text
TOEIC Vault
├── AGENTS.md                          # Canonical instructions for AI agents (source of truth)
├── CLAUDE.md / GEMINI.md              # Thin AI adapters that point to AGENTS.md
├── .github/copilot-instructions.md    # GitHub Copilot adapter
├── .cursor/rules/toeic-vault.mdc      # Cursor adapter
├── .agy/rules/toeic-vault-rules.md    # Antigravity adapter
├── README.md                          # This file
├── TOEIC MOC.md                       # Central Map of Content (book list & Part roadmap)
├── English Grammar in Use/            # Core grammar mastery for TOEIC Parts 5 & 6
│   ├── English Grammar in Use MOC.md  # Grammar table of contents (Units 01-18)
│   ├── Unit XX - <Topic>.md           # Theory note
│   └── Unit XX - Exercises (<Topic>).md
├── English Pronunciation in Use/      # Pronunciation & word stress notes
├── Vocabulary/
│   └── TOEIC Core Vocabulary.md       # High-frequency words, IPA, collocations & word families
├── Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm   # Approved study plan (local only, not in git)
└── books/                             # Source books, PDFs & audio (local only, not in git)
```

---

## Study Plan (13 weeks / 65 sessions)

The roadmap lives in `Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm` and drives every unit written into the vault.

| Sheet | Purpose |
| :--- | :--- |
| `Tổng quan` | Phase (Chặng) goals, target scores, required outputs |
| `Lộ trình 65 buổi` | The 65 sessions, Mon-Fri, with book, unit, focus content, output and status |
| `Bản đồ ngữ pháp` | Weekly grammar map, kept consistent with the unit ranges in the plan |
| `File` | Source links for every book and audio set |

> The workbook is **git-ignored** (`*.xlsm`), so it is never restored by git. Back it up before editing, and keep the `Bản đồ ngữ pháp` sheet aligned with column `F` of `Lộ trình 65 buổi`.

---

## Syllabus & Content Breakdown

### 1. Core Grammar System (*English Grammar in Use*)

Designed specifically to tackle **TOEIC Part 5 (Incomplete Sentences)** and **Part 6 (Text Completion)**:

* **Unit 01: Present Continuous (`I am doing`)**
  * Actions in progress at the moment of speaking vs. trends around now.
  * Expressing continuous changes and economic trends (`getting`, `increasing`, `rising`, `changing`).
* **Unit 02: Present Simple (`I do`)**
  * Universal truths, routines, permanent states, and adverbs of frequency.
  * Subject-verb agreement nuances and performative verbs (`promise`, `suggest`, `apologise`).
* **Unit 03: Present Continuous vs. Present Simple 1**
  * Comprehensive comparison matrix: Temporary vs. Permanent situations.
  * Nuances of `always + V-ing` (complaints/annoyances) vs. `always + V` (habits).
* **Unit 04: Present Continuous vs. Present Simple 2**
  * Stative verbs that reject continuous forms (`like`, `want`, `know`, `understand`, `belong`, `consist`).
  * Dual-meaning verbs: `think of` (consider) vs. `think` (believe); sensory verbs (`smell`, `taste`, `see`).
  * Behavioral nuance: `am/is/are being + Adj` (temporary conduct) vs. `am/is/are + Adj` (inherent trait).
* **Unit 05: Past Simple (`I did`)**
  * Regular (`-ed`) and irregular verb forms, negative/interrogative auxiliary inversion (`did / didn't + V-inf`).
  * TOEIC Part 5 timeline signal markers: `yesterday`, `last...`, `... ago`, `in [past year]`, `when-clause`.
* **Unit 06: Past Continuous (`I was doing`)**
  * Actions in progress at a specific past point vs. completed actions (`was doing` vs. `did`).
  * Interrupting actions (`when` + Past Simple, `while` + Past Continuous) and non-continuous verbs.
* **Unit 07: Present Perfect 1 (`I have done`)**
  * Past actions with connection/result at present; announcing news/new information.
  * Crucial TOEIC distinctions: `been to` vs. `gone to`; high-frequency adverbs `just`, `already`, `yet`.
* **Unit 08: Present Perfect 2 (`I have done`)**
  * Life experiences (`ever`, `never`), unfinished periods of time (`today`, `this week/year`).
  * Continuous periods up to now (`recently`, `so far`, `since`) and special patterns (`It's the first time...`).
* **Unit 09: Present Perfect Continuous (`I have been doing`)**
  * Activities running up to now or just stopped, leaving present evidence (`She's been running`).
  * `for / since / how long` + the stative-verb trap (`I have known`, not `have been knowing`).
* **Unit 10: Present Perfect Continuous and Simple**
  * The core contrast: process/activity (`have been doing`) vs. result/completion (`have done`).
  * Reading the second half of the sentence to decide which form the exam wants.
* **Unit 11: how long have you (been) ... ?**
  * Asking about duration; answers require the present perfect (simple or continuous).
  * `How long are you staying?` (temporary plan) vs. `How long have you been staying?`
* **Unit 12: for and since (`when ... ?` and `how long ... ?`)**
  * `for` + period vs. `since` + starting point; `since` + clause.
  * `When did you ...?` (past simple) vs. `How long have you ...?` (present perfect).
* **Unit 13: Present Perfect and Past 1**
  * A finished time expression (`yesterday`, `last week`, `in 2019`, `ago`) forces the past simple.
  * Present perfect when the result still matters now; `just / already / yet`.
* **Unit 14: Present Perfect and Past 2**
  * No present perfect with a finished time; `What time did you get up?`
  * Life experience vs. a specific occasion; announcing news then giving details.
* **Unit 15: Past Perfect (`I had done`)**
  * The earlier of two past events; `by the time`, `before`, `after`, `already`, `never`.
  * Reported speech, `It was the first time...`, third conditional.
* **Unit 16: Past Perfect Continuous (`I had been doing`)**
  * Duration before a past point; activity vs. result contrast with the past perfect simple.
  * Stative verbs stay simple (`I had known her for years`).
* **Unit 17: have and have got**
  * Possession, relationships, illness; British vs. American question/negative forms.
  * `have + noun` actions (`have breakfast`, `have a meeting`) where `have got` is impossible.
* **Unit 18: used to (do)**
  * Past habits and past states that are no longer true; `didn't use to`, `Did you use to ...?`.
  * The three-way contrast: `used to + V` vs. `be used to + V-ing` vs. `be used to + V` (passive purpose).

> Every unit is split into two complementary files:
> - **Theory Note:** Synthesized concepts, Mermaid mental models, comparison tables, and TOEIC exam traps.
> - **Exercise Workbook:** Direct drills adapted from Cambridge, featuring collapsible `Answer Key & Explanations` callout blocks and a five-question Part 5 mini-drill.

### 2. Pronunciation System (*English Pronunciation in Use*)

* **Word Stress:** two-syllable words (noun/adjective vs. verb stress), long words and stress-shifting suffixes, compound words, phrasal verbs, and the `-teen` vs. `-ty` listening trap.

### 3. Targeted Vocabulary Bank

* **TOEIC Core Vocabulary:** Iteratively expanded vocabulary companion linking terms encountered in each unit, complete with British/American IPA transcription, part of speech, contextual definitions, corporate/business usage examples, and derivative word families (*synonyms / antonyms*).

---

## AI Agents & Automation

This repository is used by several AI assistants, so the rules live in one tool-agnostic file:

| File | Read by |
| :--- | :--- |
| `AGENTS.md` | **Canonical source of truth** - Codex, Cursor, Windsurf, Jules, Devin, Amp and others |
| `CLAUDE.md` | Claude Code (imports `AGENTS.md`) |
| `GEMINI.md` | Gemini CLI |
| `.github/copilot-instructions.md` | GitHub Copilot |
| `.cursor/rules/toeic-vault.mdc` | Cursor |
| `.agy/rules/toeic-vault-rules.md` | Antigravity |

`AGENTS.md` documents the repository map, the two-file unit pattern, naming rules, the note and exercise templates, vocabulary integration, how to edit the study-plan workbook safely, where the source books are, the verification checklist, and the current progress. Change the rules there first, then keep the adapters pointing to it.

> Convention: `README.md` and `CLAUDE.md` are written **without emoji**; unit notes keep their emoji headings and callouts.

---

## Tooling & Recommended Environment

This repository is crafted to deliver the best reading and interactive experience when paired with:

* **[Obsidian](https://obsidian.md/)**:
  * Native bidirectional linking (`[[Internal Link]]`) between theory, exercises, and vocabulary.
  * Interactive callout blocks (`> [!abstract]`, `> [!tip]`, `> [!caution]`, and collapsible `> [!success]-`).
  * Rendered **Mermaid.js** mindmaps and timeline charts.
* **GitHub Flavored Markdown (GFM)**: Clean tables, task lists (`- [x]`), math formulas, and code block formatting viewable natively on GitHub.

---

## Study Roadmap

- [x] **Phase 1: Present & Past Tenses Foundation** (Units 1-6)
- [x] **Phase 2: Perfect Tenses & Aspectual Distinctions** (Units 7-18)
- [ ] **Phase 3: High-Yield TOEIC Structural Modules** (Units 19-145)
  - [ ] Future forms and Modals
  - [ ] Passive Voice & Causative Verbs
  - [ ] Relative Clauses & Reduced Relative Clauses
  - [ ] Conditionals, Subjunctives, and Inversion
  - [ ] Participles, Gerunds & Infinitives (`to-V` vs. `V-ing`)
  - [ ] Prepositions, Conjunctions & Transition Adverbs
- [ ] **Phase 4: ETS TOEIC Test Bank Practice & Part 7 Reading Drills**

---

## License

Content curated for personal academic study and test preparation under the [MIT License](LICENSE).
