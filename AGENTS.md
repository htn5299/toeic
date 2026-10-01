# AGENTS.md - Working Guide for AI Agents (TOEIC Vault)

This file is the **single source of truth** for every AI assistant working in this repository
(currently: omp / oh-my-pi as the sole coding agent).

Last updated: 2026-10-01

---

## 1. What this project is

- A personal **TOEIC preparation vault** (digital garden) written in **Obsidian-flavoured Markdown**
  and readable on **GitHub (GFM)**.
- The learner is a **Vietnamese speaker** targeting **TOEIC Listening & Reading**.
  - **Theory / explanations: Vietnamese** (concise, exam-oriented).
  - **Examples, sentences, drills, options: English** (business / office context, ETS TOEIC style).
- There is **no build system, no tests, no package manager, no CI**. The Markdown content *is* the product.

Main assets:

| Asset | Source book | Location |
| :--- | :--- | :--- |
| Grammar notes | *English Grammar in Use* (Murphy, 5th ed., Units 1-145) | `English Grammar in Use/` |
| Pronunciation notes | *English Pronunciation in Use* (Elementary / Intermediate / Advanced) | `English Pronunciation in Use/` |
| Vocabulary bank (by grammar unit) | words linked to each Grammar Unit | `Vocabulary/TOEIC Core Vocabulary.md` |
| Vocabulary bank (by book lesson) | *600 Essential Words for the TOEIC* (Lesson 1-50) | `Vocabulary/600 Essential Words for TOEIC.md` |
| Study plan | Markdown, converted from the learner's original workbook | `Study Plan/` |

---

## 2. Repository map

```text
TOEIC Vault/
├── AGENTS.md                          # THIS FILE - canonical AI instructions
├── .github/copilot-instructions.md    # thin adapter (points here)
├── README.md                          # human-facing overview (no emoji)
├── Today.md                           # thin pointer: one link to Daily/<today's date>.md
├── Daily/
│   ├── Daily Log MOC.md                # history table of every session day + status
│   └── YYYY-MM-DD.md                   # one permanent dashboard file per session day
├── Study Plan/
│   ├── Study Plan MOC.md               # hub for the 4 files below
│   ├── Tong quan lo trinh.md           # phase goals (was sheet "Tổng quan")
│   ├── Lo trinh 65 buoi.md             # the session-by-session schedule (was sheet "Lộ trình 65 buổi")
│   ├── Ban do ngu phap.md              # weekly grammar unit map (was sheet "Bản đồ ngữ pháp")
│   └── Nguon tai lieu.md               # source/Drive links (was sheet "File")
├── TOEIC MOC.md                       # central Map of Content (book list + Part roadmap)
├── English Grammar in Use/
│   ├── English Grammar in Use MOC.md  # grammar table of contents (Units 01-34 so far)
│   ├── <NN Section Name>/             # grouped by Murphy's own book sections (see 3.2b)
│   │   ├── Unit XX - <Topic>.md           # theory note
│   │   └── Unit XX - Exercises (<Topic>).md  # exercise workbook
├── English Pronunciation in Use/
│   ├── English Pronunciation in Use MOC.md  # pronunciation table of contents
│   └── <Topic> - <Vietnamese gloss>.md      # single-file theory + practice note (no separate exercise file)
├── Vocabulary/
│   ├── TOEIC Core Vocabulary.md             # one section per Grammar Unit group
│   └── 600 Essential Words for TOEIC.md     # one section per book Lesson (1-50)
├── Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm   # superseded by Study Plan/ - do not open (NOT in git)
├── books/                             # source PDFs + audio (NOT in git, local only)
└── .obsidian/                         # editor config (shared parts are tracked)
```

---

### 2.1 Setup and working workflow

This is a content-only Obsidian vault, not a software project.

- **Setup:** clone the repository and open its root as an Obsidian vault. No dependencies,
  environment variables, database or package-manager install are required.
- **Development:** edit the Markdown source directly. Use Obsidian for interactive reading/editing
  or any text editor for agent work.
- **Build / run / deploy:** none. GitHub renders the Markdown; Obsidian reads the same files locally.
- **Tests / CI:** none. Run the manual checks in section 7 for every touched file.
- **Source priority:** use `Study Plan/` for scheduling, the readable local PDFs listed in section 6
  for book-derived content, and existing notes as formatting references.
- Do not add a build system, package manager, formatter or test framework for this vault.

---

## 3. Content conventions (must follow)

### 3.1 The two-file unit pattern (mandatory)

Every grammar unit lives in **exactly two** companion files:

1. `Unit XX - <Topic>.md` - theory: comparison tables, Mermaid diagrams, TOEIC Part 5/6 traps.
2. `Unit XX - Exercises (<Topic>).md` - drills with collapsible answer keys.

Never create one without the other, and never create a standalone grammar note
without linking it from **both** `English Grammar in Use MOC.md` and `TOEIC MOC.md`.

### 3.2 File naming (match the existing files exactly)

- Zero-padded unit numbers: `Unit 09`, `Unit 13` (not `Unit 9`).
- Topic text follows the book's printed unit title, e.g.
  `Unit 15 - Past Perfect (I had done).md`,
  `Unit 18 - used to (do).md`.
- Exercise files keep a short topic in brackets, e.g. `Unit 15 - Exercises (Past Perfect).md`.
- Keep accents and parentheses as-is; Obsidian links are case-sensitive.

### 3.2b Section subfolders (grouping)

Units are grouped into subfolders under `English Grammar in Use/` that mirror the book's own
**Contents** page (see `pdftotext` output of the source PDF for exact ranges), not an invented
grouping:

- `01 Present and Past/` - Units 1-6
- `02 Present Perfect and Past/` - Units 7-18
- `03 Future/` - Units 19-25
- `04 Modals/` - Units 26-37 (Units 26-34 written; Units 35-37 pending)
- further sections follow the same `NN <Book section title>` pattern as new units are added
  (`if and wish` 38-41, `Passive` 42-46, `Reported speech` 47-48, `Questions and auxiliary verbs`
  49-52, `-ing and to ...` 53-68, `Articles and nouns` 69-81, `Pronouns and determiners` 82-91,
  `Relative clauses` 92-97, `Adjectives and adverbs` 98-112, `Conjunctions and prepositions`
  113-120, `Prepositions` 121-136, `Phrasal verbs` 137-145).
- Moving a file into a subfolder does not touch its `[[wiki-link]]`s (Obsidian resolves by file
  name, not path) - never rewrite links just because a folder changed.
- `English Grammar in Use MOC.md` itself stays directly under `English Grammar in Use/`, not
  inside a subfolder.

### 3.3 Theory note template

```yaml
---
title: "Unit XX: <Book title> (<Vietnamese gloss>)"
date: YYYY-MM-DD
tags:
  - english
  - grammar
  - english-grammar-in-use
  - unit-xx
  - toeic-part5
---
```

Required structure (see `Unit 09`/`Unit 15` as reference implementations):

1. `# <emoji> Unit XX: <Title>` - one H1.
2. `> [!abstract] Trọng tâm Part 5 TOEIC` - 4-5 bullets.
3. `## A.`, `## B.`, `## C.` sections - comparison tables, timelines, at least one `mermaid` block.
4. `> [!caution]` - common traps written as `~~wrong~~ → **right**`.
5. `> [!tip]` - a fast exam shortcut.
6. `## 🎯 Dấu hiệu nhận biết trong đề thi TOEIC Part 5 & 6` - numbered, business examples.
7. `## 📎 Liên kết trong hệ thống` - wiki-links to neighbouring units.
8. Final line: `Trở về: [[English Grammar in Use MOC]] | [[TOEIC MOC]] | Bài tập: [[<exercise file>]]`.

### 3.4 Exercise note template

- Frontmatter tags add `exercises` and drop `toeic-part5` → `..., toeic`.
- Open with `> [!info] Hướng dẫn làm bài` (how to use the collapsible keys).
- Exercises numbered `XX.1`, `XX.2`, `XX.3` (+ `XX.4` if useful); the **last one must be
  `TOEIC Part 5 Mini-drill`** with 5 multiple-choice questions using options `(A)-(D)`.
- **Blank placeholders are plain empty brackets `[]`** (no space inside) so the learner can type in them.
- After **every** exercise, a **collapsed** callout:
  `> [!success]- 🔑 Đáp án & Giải thích XX.Y` with the answers plus short Vietnamese reasoning.
- Close with a `## 🧠 Error Log` table and the back-links footer.

### 3.5 Linking duties

- Adding a unit ⇒ update `English Grammar in Use MOC.md` (correct section, `- [ ]` / `- [x]`
  status, theory link + exercise link) **and** `TOEIC MOC.md` if a new book/section appears.
- Every `[[wiki-link]]` must resolve to an existing file name (no path, no `.md`).
- Keep the two directions of every link: note → MOC and MOC → note.

### 3.6 Vocabulary integration

There are **two separate** vocabulary files — never merge them:

- `Vocabulary/TOEIC Core Vocabulary.md` - one section per **Grammar Unit group**. When a Grammar
  Unit introduces business/TOEIC vocabulary, append it here.
- `Vocabulary/600 Essential Words for TOEIC.md` - one section per **book Lesson** (1-50), sourced
  from `books/600 Essential Words For The TOEIC Test/600_tu_vung_toeic_co_dich_tieng_viet.pdf`
  (has a real text layer via `pdftotext -layout`; the plain scan `600 est_.pdf` does not). When the
  study plan advances to a new Lesson, extract its real headword list from that PDF - never invent
  words - and append a new `## 📌 Lesson N: <Title>` section.

Both use the same 5-column table:

`Từ vựng / Cụm từ` · `Loại từ & Phiên âm` · `Nghĩa tiếng Việt` · `Câu ví dụ ngữ cảnh (Context)` · `Điểm cần nhớ trong TOEIC`

Include IPA, part of speech and a real TOEIC-flavoured example sentence (your own, not copied from
the source book - the book PDF has no example sentences).

---

## 4. Daily dashboard (`Daily/<date>.md` + `Today.md` pointer)

Every session day gets its **own permanent file** `Daily/YYYY-MM-DD.md` (ISO date) - never
overwritten, never deleted, so a missed day stays visible and re-openable for makeup study. Root
`Today.md` is a **thin pointer only** (one link + a `[!tip]` callout) to the current day's file;
it replaces "open the plan, then two MOCs, then hunt the unit file" down to one click.

- Source of truth for the content is the **matching date row in `Study Plan/Lo trinh 65 buoi.md`**
  - plain Markdown, no Excel serial dates, no spreadsheet tool needed.
- On a new session day:
  1. Create `Daily/<YYYY-MM-DD>.md` from the template below (never edit a past day's file).
  2. Append a row to `Daily/Daily Log MOC.md`'s table, copying `Trạng thái` verbatim from
     `Study Plan/Lo trinh 65 buoi.md` - never invent a status, and never mark a day done yourself.
  3. Update the single link in root `Today.md` to point at the new file.
- Template for `Daily/<date>.md`, in order:
  1. `# 📅 <dd/mm/yyyy> (Thứ X - Tuần Y - <Chặng>)`
  2. `## 🎯 Trọng tâm` - the `Nội dung trọng tâm` cell, verbatim (one bullet per line).
  3. `## 📖 Học` - checkbox wiki-links to that day's grammar theory unit(s) + vocabulary lesson
     (in `600 Essential Words for TOEIC` or `TOEIC Core Vocabulary`, whichever the plan names)
     + pronunciation topic (link straight to the relevant note, with a `#Section heading` anchor
     when the note covers several sessions' worth of content in one file, e.g.
     `[[Syllables and Connected Speech - Am tiet va noi lien tu#B. Chunking...|label]]`).
  4. `## ✍️ Bài tập` - checkbox wiki-links to that day's exercise file(s) + the plan's generic
     `Bài tập / Đầu ra` text as a final checkbox.
  5. `## 🧠 Ghi chú lỗi hôm nay` - one empty bullet for the learner to fill in during the session.
  6. Footer: `Trở về: [[Daily Log MOC]] | [[TOEIC MOC]] | [[English Grammar in Use MOC]]`.
- If a unit/lesson referenced by the plan row does not have its note written yet, say so explicitly
  (`⚠️ Unit XX chưa được viết` / `⚠️ <Book> — sách scan, chưa có note`) instead of linking to a
  non-existent file - see rule 6's read/skip table before deciding a source is unusable.
- Never touch a past day's checkboxes on the learner's behalf.

---

## 5. The study plan (`Study Plan/`)

**Fully Markdown - the `.xlsm` workbook is superseded and must never be opened, read, or edited
again.** `Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm` still exists on disk (untouched, the
learner's original backup) but is dead weight from the agent's perspective: no `zipfile`, no
`openpyxl`, no lock-file checks, no cell-patching - all of that machinery is gone.

- `Study Plan/Study Plan MOC.md` - hub linking the three files below.
- `Study Plan/Tong quan lo trinh.md` - phase (Chặng) goals and score milestones.
- `Study Plan/Lo trinh 65 buoi.md` - **the** schedule, one `## Tuần N` section per week, each with
  a plain Markdown table (`Ngày · Thứ · Sách 1 · Sách 2 · Nội dung trọng tâm · Bài tập / Đầu ra ·
  Trạng thái`). Only **one** status column - the workbook's duplicate `Trạng thái (E)` column was
  dropped as redundant.
- `Study Plan/Ban do ngu phap.md` - weekly Grammar Unit range map.
- `Study Plan/Nguon tai lieu.md` - source/Drive links per book.
- **Treat the plan as frozen.** Redistribute/pacing changes only when the user explicitly asks -
  edit the Markdown table directly, like any other note (no lock files, no cell coordinates, no
  style preservation - it is just a table now).
- `Ban do ngu phap.md` should stay consistent with the Grammar Unit ranges written in
  `Lo trinh 65 buoi.md`'s `Sách 1` column.
- The original workbook's data only went through **Tuần 12 (04/12/2026)**; `Tuần 13` is missing
  from the source and was **not** fabricated - flag it to the user instead of inventing content
  when the plan reaches that week.
- Never touch the learner's personal `Trạng thái` values in `Lo trinh 65 buoi.md` on your own
  initiative - only the learner (or an explicit instruction) flips a day to done.


---

## 6. Source material - read the table below, never probe blind

Local books live in `books/` (git-ignored, present only on the owner's machine). **Text-layer
status below was verified once** (`pdfinfo` page count + `pdftotext | wc -c` per file) - do not
re-run that probe every session, just follow the table. If a listed file is later replaced with a
different edition, re-verify only that file.

| Path | Text layer? | Agent action |
| :--- | :--- | :--- |
| `English_Grammar_in_Use_Intermediate_2019_5th-Ed.pdf` | Full (all pages) | Read with `pdftotext`. |
| `600 Essential Words For The TOEIC Test/600_tu_vung_toeic_co_dich_tieng_viet.pdf` | Full (all pages) | Read with `pdftotext -layout`; parse `Bài N ... LN <Title>` headers for real headword lists. |
| `English Pronunciation In Use/Advanced/Advanced_English_Pronunciation_in_Use.pdf` | Full (all 191 pages, ~377k chars) | Read with `pdftotext`. Extracted text has odd letter-spacing artifacts from the embedded font (e.g. `Th i n k` for `Think`) - visually re-check any string before quoting it verbatim. |
| `English Pronunciation In Use/Intermediate/English Pronunciation in Use - Intermediate_.pdf` | **Partial** - only front matter/contents (pages 2-9) and the index (pages 162-164) have text; all unit content pages are scanned images | Only read pages 2-9 and 162-164 if you need the table of contents or index. **Never** attempt the unit content pages - they are 0 chars, always will be. |
| `English Pronunciation In Use/Elementary/Marks - English Pronunciation in Use - Elementary.pdf` | **None** (full scan) | Skip entirely. Do not run `pdftotext` on it again. |
| `600 Essential Words For The TOEIC Test/600 est_.pdf` | **None** (full scan) | Skip entirely - use the Vietnamese-gloss edition above instead. |
| `Tactics for TOEIC/*.pdf` (Book, Practice Test 1-2, Answer Key) | **None** (full scan, all 0 chars) | Skip entirely. |
| `ETS /2026/*.pdf`, `ETS /2024/*.pdf` (Listening, Reading, Transcript, key, LC/RC sets) | **None** (full scan, all 0 chars) | Skip entirely. |
| Any audio file/folder anywhere under `books/` (`*.mp3`, `CD*`, `Audio/`) | N/A | **Never open, transcribe, or otherwise process audio.** It is a listening companion for the human learner only; reference it in a note by name at most (e.g. "nghe kèm audio CD1"), never read its content. |

No OCR engine (`tesseract`, `ocrmypdf`) is installed in this environment, so "no text layer" above
is final for now, not "try harder." For the Elementary/Intermediate Pronunciation gap specifically,
pronunciation notes synthesize standard, accurate phonetics content (real IPA, real minimal pairs)
and cite the book's Unit range only as a topic label, never as a verbatim transcription - see the
`Word Stress` note for the established pattern.

**Rule:** never invent unit titles, lesson word lists or page numbers. For any path marked "None"
or outside the "Partial" ranges above, do not call `pdftotext`/`pdfinfo` on it "just to check" -
the table already answers that; spending a tool call to re-probe a known-scanned file is wasted
usage. If a genuinely new source file appears that isn't in this table, probe it once, then add a
row here so the next agent doesn't have to.

---

## 7. Verification before you finish

There is no automated test suite. Review `git diff --check` warnings (two trailing spaces may be
intentional Markdown line breaks), then verify by hand; a short Python script is usually the fastest
way:

1. **Wiki-links** - every `[[link]]` in the files you touched resolves to an existing `*.md` file name.
2. **Two-file pattern** - each new unit has both the theory and the exercise file, cross-linked.
3. **MOC coverage** - new notes are reachable from `English Grammar in Use MOC.md`.
4. **Subfolder consistency** - a unit's theory/exercise pair lives in the same `NN <Section>/`
   subfolder matching its number range (see 3.2b).
5. **Study plan consistency** - a new `Daily/<date>.md` matches its row in
   `Study Plan/Lo trinh 65 buoi.md`, and `Ban do ngu phap.md` stays consistent with `Lo trinh 65
   buoi.md`'s Grammar Unit ranges.
6. **Markdown sanity** - tables pipe-consistent, Obsidian callout blocks contiguous (no stray `>`),
   `mermaid` fences balanced.
7. **Daily file freshness** - `Today.md`'s single link points at a `Daily/<date>.md` matching the
   actual current date, that file exists, and `Daily Log MOC.md` has a row for it with status
   copied verbatim from `Study Plan/Lo trinh 65 buoi.md`.

---

## 8. Do NOT

- Do NOT use **emoji in `README.md`** (plain-text headings only).
  Emoji inside unit notes, callouts, MOCs and `Daily/` files are expected and should be kept.
- Do NOT commit `.obsidian/workspace.json`, OS files, `*.bak*`, `*.tmp`, `.~lock.*#`,
  `*.xlsm` or anything under `books/`.
- `.agents/skills/`, `.claude/` and `skills-lock.json` are local agent tooling: keep them
  git-ignored and never commit them.
- Do NOT use HTML markup when native GFM / Obsidian syntax suffices.
- Do NOT create standalone grammar notes without linking them from both MOCs.
- Do NOT rewrite or "improve" the approved study plan on your own initiative.
- Do NOT open, read, or edit `Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm` - it is superseded by
  `Study Plan/`; leave it untouched on disk as the learner's personal backup.
- Do NOT claim you read a file or a PDF that you did not actually open.
- Do NOT let `Today.md`'s pointer go stale across day boundaries - update the link, never leave it
  pointing at yesterday's `Daily/<date>.md`.
- Do NOT overwrite or delete a past day's file under `Daily/` - it is a permanent record, not a
  scratch buffer; a "missed" day must stay openable for makeup study.

---

## 9. Current state (as of 2026-10-01)

- **Grammar:** Units **01-34** complete (theory + exercises for each), grouped into
  `01 Present and Past/` (1-6), `02 Present Perfect and Past/` (7-18), `03 Future/` (19-25),
  `04 Modals/` (26-34 so far), and listed in `English Grammar in Use MOC.md`. Unit titles follow
  Murphy 5th ed.
- **Pronunciation:** 6 notes, all listed in `English Pronunciation in Use MOC.md` - `Vowel Sounds`,
  `Consonant Sounds`, `Word Stress`, `Syllables and Connected Speech`, `Intonation and Active
  Listening`, `Sentence Stress and Functional Intonation`. Covers every topic through the study
  plan's session 19 (01/10/2026).
- **Vocabulary:** two files - `TOEIC Core Vocabulary.md` (by Grammar Unit, sections through Units
  31-34) and `600 Essential Words for TOEIC.md` (by book Lesson, Lesson 1-14 done, sourced from
  the Vietnamese-gloss PDF's real text layer).
- **Study plan:** fully migrated to `Study Plan/` (Markdown); the `.xlsm` is no longer read.
  Chặng 1-4, 68 sessions found in source (Tuần 1-12; Tuần 13 missing from source, not fabricated).
  Today's session (Thứ 5, 01/10/2026, Tuần 3) = EGIU **U31-34** + *600 Essential Words*
  **Lesson 13-14**.
- **Daily dashboard:** `Daily/2026-09-14.md` through `Daily/2026-10-01.md` available (14 session
  days) with plan status in `Daily Log MOC.md`; `Today.md` points at `2026-10-01`. The plan marks
  22-25/09 and 28/09-01/10 as not studied.
- **Local agent tooling:** `.agents/skills/`, `.claude/` and `skills-lock.json` stay local and must
  remain git-ignored.
- **Next to write:** Grammar Units **35+** (*Modals* section continues through U37);
  Vocabulary Lesson **15+**; Pronunciation topics beyond session 19 as the plan advances.
