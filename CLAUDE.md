# CLAUDE.md - Rules & Guidelines for TOEIC Vault

This repository is a structured **Digital Garden & Knowledge Vault** for TOEIC preparation and English grammar mastery, optimized for **Obsidian** and **GitHub Flavored Markdown (GFM)**.

---

## 🎯 Architecture & Principles

- **MOC-centric Design**: Navigation relies on Map of Content files (`TOEIC MOC.md`, `English Grammar in Use MOC.md`). Always maintain bidirectional links (`[[Note Name]]`).
- **Unit Split Pattern**: Every unit in `English Grammar in Use/` must be divided into exactly two companion files:
  1. `Unit XX - [Topic Name].md`: Core theory, comparison tables, Mermaid diagrams, TOEIC Part 5/6 pitfalls.
  2. `Unit XX - [Topic Name] - Exercises.md`: Practice drills with collapsible explanations.
- **Vocabulary Integration**: High-frequency business/TOEIC terms from grammar units should be integrated into `Vocabulary/TOEIC Core Vocabulary.md`.

---

## 📝 Markdown & Obsidian Formatting Standards

### 1. Frontmatter (YAML)
Every note must begin with clean YAML frontmatter:
```yaml
---
title: "Unit XX - Title"
date: YYYY-MM-DD
tags:
  - grammar
  - toeic
  - unit-xx
---
```

### 2. Callouts
Use standard Obsidian callouts for visual hierarchy:
- `> [!abstract]` for high-level overviews or unit objectives.
- `> [!tip]` for TOEIC test-taking strategies or quick recognition signals.
- `> [!caution]` for common traps and distractors in Parts 5 & 6.
- `> [!success]- 🔑 Answer Key & Explanations` (collapsed by default `-`) for exercise solutions with step-by-step reasoning.

### 3. Visuals & Diagrams
- Use `mermaid` fenced blocks (`timeline`, `graph TD`, `mindmap`) for tense timelines and conceptual models.
- Always quote labels containing special characters in Mermaid nodes (e.g., `id["Subject + Verb"]`).

### 4. Language & Tone
- **Theory & Explanations**: Vietnamese (clear, concise, exam-oriented).
- **Examples & Drills**: English (accurate business/everyday context reflecting ETS TOEIC style).

---

## 🚫 What NOT to Do
- Do NOT commit `.obsidian/workspace.json` or OS-generated files (keep `.gitignore` clean).
- Do NOT use HTML markup when native GFM/Obsidian syntax suffices.
- Do NOT create standalone grammar notes without linking them back to `English Grammar in Use MOC.md` and `TOEIC MOC.md`.
