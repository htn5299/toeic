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
├── .github/copilot-instructions.md    # Thin adapter that points to AGENTS.md
├── README.md                          # This file
├── Today.md                           # Thin pointer to today's file in Daily/
├── Daily/                             # One permanent dashboard file per session day
│   ├── Daily Log MOC.md               # History table of every day + real completion status
│   └── YYYY-MM-DD.md                  # Today's/a past day's lesson, exercise, vocab, checklist
├── TOEIC MOC.md                       # Central Map of Content (book list & Part roadmap)
├── English Grammar in Use/            # Core grammar mastery for TOEIC Parts 5 & 6
│   ├── English Grammar in Use MOC.md  # Grammar table of contents (Units 01-25)
│   ├── 01 Present and Past/           # Units 01-06
│   ├── 02 Present Perfect and Past/   # Units 07-18
│   ├── 03 Future/                     # Units 19-25
│   │   ├── Unit XX - <Topic>.md           # Theory note
│   │   └── Unit XX - Exercises (<Topic>).md
├── English Pronunciation in Use/      # Pronunciation, stress, connected speech, intonation
│   ├── English Pronunciation in Use MOC.md
│   └── <Topic> - <Vietnamese gloss>.md      # single-file theory + practice note
├── Vocabulary/
│   ├── TOEIC Core Vocabulary.md             # Words linked to each Grammar Unit
│   └── 600 Essential Words for TOEIC.md     # One section per book Lesson (1-50)
├── Study Plan/                        # Study plan, 100% Markdown (replaces the old .xlsm)
│   ├── Study Plan MOC.md
│   ├── Tong quan lo trinh.md
│   ├── Lo trinh 65 buoi.md
│   ├── Ban do ngu phap.md
│   └── Nguon tai lieu.md
└── books/                             # Source books, PDFs & audio (local only, not in git)
```

---

## Study Plan (13 weeks / 65+ sessions)

The roadmap lives entirely in `Study Plan/` as plain Markdown - no Excel, no binary workbook to open.

| File | Purpose |
| :--- | :--- |
| `Study Plan MOC.md` | Hub linking the three files below |
| `Tong quan lo trinh.md` | Phase (Chặng) goals, target scores, required outputs |
| `Lo trinh 65 buoi.md` | The session-by-session schedule, one table per week, with book, unit, focus content, output and a single status column |
| `Ban do ngu phap.md` | Weekly grammar map, kept consistent with the unit ranges in the plan |
| `Nguon tai lieu.md` | Source/Drive links for every book and audio set |

> The original `Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm` is superseded and kept only as an
> untouched personal backup (git-ignored) - agents never open it anymore.

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

* **Vowel Sounds:** spelling-to-sound mismatch, `/iː/` vs `/ɪ/` and other core short/long vowel pairs, common diphthongs.
* **Consonant Sounds:** confusable consonant pairs (`/p/-/b/`, `/f/-/v/`, `/θ/-/ð/`, `/r/-/l/`...), word-initial/final consonant clusters.
* **Word Stress:** two-syllable words (noun/adjective vs. verb stress), long words and stress-shifting suffixes, compound words, phrasal verbs, and the `-teen` vs. `-ty` listening trap.
* **Syllables and Connected Speech:** syllable counting, schwa `/ə/`, chunking and linking, sentence rhythm and weak forms, contractions, and the three pronunciations of `-s`/`-ed` endings.
* **Intonation and Active Listening:** marking old vs. new information, statement/question intonation, and a storytelling/shadowing practice method for TOEIC Part 3 & 4.

### 3. Targeted Vocabulary Bank

* **TOEIC Core Vocabulary:** Iteratively expanded vocabulary companion linking terms encountered in each Grammar unit, complete with British/American IPA transcription, part of speech, contextual definitions, corporate/business usage examples, and derivative word families (*synonyms / antonyms*).
* **600 Essential Words for TOEIC:** Lesson-by-lesson headword lists (Lesson 1-50) sourced directly from the *600 Essential Words for the TOEIC Test* book, one lesson per business/office topic (Contracts, Marketing, Conferences, Computers, Job Advertising, Interviewing, and more).

---

## AI Agent

This repository is maintained with **omp** as the sole coding agent. Rules live in one file:

| File | Read by |
| :--- | :--- |
| `AGENTS.md` | **Canonical source of truth** |
| `.github/copilot-instructions.md` | Thin adapter that points to `AGENTS.md` (what omp loads) |

`AGENTS.md` documents the repository map, the two-file unit pattern, naming rules, the note and
exercise templates, vocabulary integration, the `Daily/` per-day dashboard convention, how to edit
the study-plan workbook safely, where the source books are, the verification checklist, and the
current progress. Change the rules there first, then keep the adapter pointing to it.

> Convention: `README.md` is written **without emoji**; unit notes and `Daily/` files keep their
> emoji headings and callouts.

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

The plan is a **13-week / 65+-session** schedule (Monday-Friday) running from **14/09/2026 to 11/12/2026**, split into four phases (Chặng). This table mirrors `Study Plan/Tong quan lo trinh.md` - the Markdown plan is the source of truth (no more `.xlsm`). Each session day gets its own permanent file in `Daily/` (e.g. `Daily/2026-09-29.md`): today's grammar unit, vocabulary lesson and exercise links in one place. `Today.md` (root) always points at the current day's file, and `Daily/Daily Log MOC.md` tracks real completion status so a missed day is never lost.

| Phase | Weeks | Dates | Score milestone | Focus books | Tactics / ETS | Main goal | Required output |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Chặng 1 - Nền tảng** (Foundation) | Weeks 1–3 | 14/09–02/10/2026 | 0 → ~250/300 | English Grammar in Use · 600 Essential Words · Pronunciation Elementary | No Tactics yet; basic pre-TOEIC only | Build the tense, modal and word-class foundation; first 12 vocabulary lessons; basic sounds, stress, linking, intonation | Weekly mini quiz >= 80%; short-sentence reading; numbers, dates and times by ear; Error Log started |
| **Chặng 2 - Làm quen TOEIC** (Getting to know TOEIC) | Weeks 4–6 | 05/10–23/10/2026 | ~250/300 → ~350/400 | EGIU + 600 Words · Pronunciation Intermediate · Tactics for TOEIC L&R | Tactics U1–U12 · ETS mini set at the end of the phase | Study Tactics unit by unit; cover Parts 1–7 once; sharpen connected-speech reflexes | Tactics U1–U12 done; mini sets for Parts 1–3 and 5–6; fewer repeated grammar mistakes |
| **Chặng 3 - Phát triển kỹ năng** (Skill building) | Weeks 7–9 | 26/10–13/11/2026 | ~350/400 → ~450/500 | Tactics + Pronunciation Intermediate · 600 Words + EGIU by error | Tactics U13–U24 · ETS half tests | Second Tactics round; paraphrase, inference and scanning; LC/RC timing per part | Tactics U13–U24 done; 1 half Listening + 1 half Reading; vocabulary notebook in active use |
| **Chặng 4 - Luyện ETS & tăng tốc** (ETS practice & acceleration) | Weeks 10–13 | 16/11–11/12/2026 | ~450/500 → ~550/600 (stretch 650) | ETS Official as the core · Tactics repair · selected Pronunciation Advanced | Tactics U25–U28 + review · ETS Full Tests 1–5 | Finish Tactics; shift the focus to ETS, timing, error analysis and data-driven repair | 5 full tests; 100% of errors reviewed; grammar cheat sheet; Error Log and vocabulary notebook complete |

### Grammar notes written to the vault

- [x] **Units 01–25** - theory and exercises for every unit (Present and past, Present perfect and past, have/have got, used to, Future forms)
- [ ] **Units 26–145** - Modals, Passive, Reported speech, Questions, `-ing` and `to`, Articles and nouns, Pronouns and determiners, Relative clauses, Adjectives and adverbs, Conjunctions, Prepositions, Phrasal verbs

---

## License

Content curated for personal academic study and test preparation under the [MIT License](LICENSE).
