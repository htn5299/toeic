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
│   ├── English Grammar in Use MOC.md  # Grammar table of contents
│   └── <NN Section Name>/             # Sections following the book's contents
│       ├── Unit XX - <Topic>.md           # Theory note
│       └── Unit XX - Exercises (<Topic>).md
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

## Study Plan

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

Grammar notes target **TOEIC Part 5 (Incomplete Sentences)** and **Part 6 (Text Completion)**.
Units follow the book's section order and use a consistent two-file pattern:

- **Theory note:** concepts, comparison tables, Mermaid models, and common TOEIC traps.
- **Exercise workbook:** focused drills, collapsible explanations, and a Part 5 mini-drill.

See `English Grammar in Use/English Grammar in Use MOC.md` for the current unit index.

### 2. Pronunciation System (*English Pronunciation in Use*)

Pronunciation notes cover sounds, stress, connected speech, rhythm, intonation, and listening
practice. See `English Pronunciation in Use/English Pronunciation in Use MOC.md` for the current
note index.

### 3. Targeted Vocabulary Bank

* **TOEIC Core Vocabulary:** Iteratively expanded vocabulary companion linking terms encountered in each Grammar unit, complete with British/American IPA transcription, part of speech, contextual definitions, corporate/business usage examples, and derivative word families (*synonyms / antonyms*).
* **600 Essential Words for TOEIC:** Lesson-by-lesson headword lists (Lesson 1-50) sourced directly from the *600 Essential Words for the TOEIC Test* book, one lesson per business/office topic (Contracts, Marketing, Conferences, Computers, Job Advertising, Interviewing, and more).

---

## AI Agent

Agent instructions live in one canonical file:

| File | Read by |
| :--- | :--- |
| `AGENTS.md` | **Canonical source of truth** |
| `.github/copilot-instructions.md` | Thin adapter that points to `AGENTS.md` (what omp loads) |

`AGENTS.md` documents the repository structure, content conventions, source handling, and
verification rules. Progress is intentionally kept out of both `README.md` and `AGENTS.md`; use the
MOCs, study plan, daily log, and `Today.md` as the current sources of truth.

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

## Study Workflow

- `Study Plan/Study Plan MOC.md` links to the roadmap and source references.
- `Today.md` points to the active daily dashboard.
- `Daily/Daily Log MOC.md` records session history and completion status.
- `TOEIC MOC.md` is the central content index.

---

## License

Content curated for personal academic study and test preparation under the [MIT License](LICENSE).
