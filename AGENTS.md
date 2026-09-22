# AGENTS.md - Working Guide for AI Agents (TOEIC Vault)

This file is the **single source of truth** for every AI assistant working in this repository
(Claude Code, Codex, Cursor, Windsurf, GitHub Copilot, Gemini CLI, Antigravity, Devin, ...).

Tool-specific files are thin adapters that point here:

| Tool | Adapter file |
| :--- | :--- |
| Claude Code | `CLAUDE.md` |
| Gemini CLI | `GEMINI.md` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| Cursor | `.cursor/rules/toeic-vault.mdc` |
| Antigravity | `.agy/rules/toeic-vault-rules.md` |

**If you need to change the rules, change `AGENTS.md` first, then keep the adapters in sync.**

Last updated: 2026-09-22

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
| Vocabulary bank | *600 Essential Words for the TOEIC* | `Vocabulary/TOEIC Core Vocabulary.md` |
| Study plan workbook | built by the learner | `Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm` |

---

## 2. Repository map

```text
TOEIC Vault/
├── AGENTS.md                          # THIS FILE - canonical AI instructions
├── CLAUDE.md / GEMINI.md / .github/ / .cursor/ / .agy/   # tool adapters (point here)
├── README.md                          # human-facing overview (no emoji)
├── TOEIC MOC.md                       # central Map of Content (book list + Part roadmap)
├── English Grammar in Use/
│   ├── English Grammar in Use MOC.md  # grammar table of contents (Units 01-18 so far)
│   ├── Unit XX - <Topic>.md           # theory note
│   └── Unit XX - Exercises (<Topic>).md  # exercise workbook
├── English Pronunciation in Use/
│   └── <Topic>.md
├── Vocabulary/
│   └── TOEIC Core Vocabulary.md       # one section per unit group
├── Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm   # approved study plan (NOT in git)
├── books/                             # source PDFs + audio (NOT in git, local only)
└── .obsidian/                         # editor config (shared parts are tracked)
```

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

When a unit introduces business/TOEIC vocabulary, append it to the matching section of
`Vocabulary/TOEIC Core Vocabulary.md` using the existing 5-column table:

`Từ vựng / Cụm từ` · `Loại từ & Phiên âm` · `Nghĩa tiếng Việt` · `Câu ví dụ ngữ cảnh (Context)` · `Điểm cần nhớ trong TOEIC`

Include IPA, part of speech and a real TOEIC-flavoured example sentence.

---

## 4. The study plan workbook (`Lo_trinh_TOEIC_13_tuan_65_buoi_FINAL.xlsm`)

This is the **approved roadmap** - 13 weeks x 5 days = **65 sessions**.

- Sheets: `Tổng quan` (phase goals), `Lộ trình 65 buổi` (the 65 sessions),
  `Bản đồ ngữ pháp` (weekly unit map), `File` (source links).
- Columns of `Lộ trình 65 buổi`: `Tuần · Ngày · Thứ · Chặng · Sách · Unit/Bài · Nội dung trọng tâm ·
  Bài tập / Đầu ra · Thời lượng (phút) · Ghi chú · Trạng thái (H) · Trạng thái (E)`.
- **Treat the plan as frozen.** Redistribute/pacing changes only when the user explicitly asks.
- The `Bản đồ ngữ pháp` sheet must stay consistent with the unit ranges written in column `F`
  of `Lộ trình 65 buổi`.
- The workbook is **not version-controlled** (`*.xlsm` is git-ignored): make a backup copy
  before editing and never assume git can restore it.
- **Before editing, check for a lock file** `.~lock.<name>.xlsm#`. If it exists the user has the
  file open in LibreOffice/OnlyOffice: tell them to close it **without saving**, otherwise their
  app will overwrite your changes.
- Patch **specific cells**; preserve styles, the `Trạng thái` data-validation dropdown,
  hyperlinks, drawings and row heights. Re-verify by unzipping + XML-parsing the file afterwards.
- Never touch the user's personal `Ghi chú` (J) or status (K/L) values.

---

## 5. Source material - read it, never guess

Local books live in `books/` (git-ignored, present only on the owner's machine):

- `books/English_Grammar_in_Use_Intermediate_2019_5th-Ed.pdf` - **has a text layer**;
  use `pdftotext` to read the table of contents (Units 1-145) before quoting unit titles.
- `books/English Pronunciation In Use/{Elementary,Intermediate,Advanced}/` - the Elementary PDF is a
  scan (no text layer); the Intermediate one is partially OCR-readable.
- `books/600 Essential Words For The TOEIC Test/` - the main PDF is a **scan without text layer**;
  `600_tu_vung_toeic_co_dich_tieng_viet.pdf` carries Vietnamese glosses; audio tracks are per lesson.
- `books/Tactics for TOEIC/`, `books/ETS /`.

**Rule:** never invent unit titles, lesson word lists or page numbers. If a source has no text
layer and no OCR tool is available, say so and ask, instead of fabricating content.

---

## 6. Verification before you finish

There is no test suite; verify by hand (a short Python script is usually the fastest way):

1. **Wiki-links** - every `[[link]]` in the files you touched resolves to an existing `*.md` file name.
2. **Two-file pattern** - each new unit has both the theory and the exercise file, cross-linked.
3. **MOC coverage** - new notes are reachable from `English Grammar in Use MOC.md`.
4. **Workbook integrity** - `zipfile.ZipFile(...).testzip()` is `None`, every XML part parses,
   and the sheets you did not touch are byte-identical to the backup.
5. **Markdown sanity** - tables pipe-consistent, Obsidian callout blocks contiguous (no stray `>`),
   `mermaid` fences balanced.

---

## 7. Do NOT

- Do NOT use **emoji in `README.md` and `CLAUDE.md`** (plain-text headings only).
  Emoji inside unit notes, callouts and MOCs are expected and should be kept.
- Do NOT commit `.obsidian/workspace.json`, OS files, `*.bak*`, `*.tmp`, `.~lock.*#`,
  `*.xlsm` or anything under `books/`.
- Do NOT use HTML markup when native GFM / Obsidian syntax suffices.
- Do NOT create standalone grammar notes without linking them from both MOCs.
- Do NOT rewrite or "improve" the approved study plan on your own initiative.
- Do NOT delete or reformat the user's personal notes/status columns in the workbook.
- Do NOT claim you read a file or a PDF that you did not actually open.

---

## 8. Current state (as of 2026-09-22)

- **Grammar:** Units **01-18** complete (theory + exercises for each) and listed in
  `English Grammar in Use MOC.md`. Unit titles follow Murphy 5th ed.
- **Pronunciation:** `English Pronunciation in Use/Word Stress - Quy tac trong am tu.md`.
- **Vocabulary:** `TOEIC Core Vocabulary.md` has sections for Units 2-8, 9-10, 11-12, 13-18.
- **Study plan:** Chặng 1-4, 65 sessions. Today's session (Thứ 3, 22/09/2026, row 12) =
  EGIU **U9-18** (focus U9-10) + *600 Essential Words* **Lesson 6-7** + Pronunciation **U30-32**.
- **Next to write:** Units **19+** (*Future* section: U19-25, then *Modals* U26-37).
