
# JFTL 2026 — Conference Talk Slide Deck

---

## 🎯 View the presentation online

> **[👉 https://pypamart.github.io/jftl2026/](https://pypamart.github.io/jftl2026/)**

---

This repository contains the Slidev presentation for the JFTL 2026 talk by **Pierre-Yves PAMART**:

> *Un développeur infiltré chez les testeurs : comment faire échouer le BDD, l'ATDD & le TDD — surtout à l'ère du Spec-Driven Development*

## Overview

This talk explores, through a satirical "saboteur's guide" framing, the most common ways BDD, ATDD and TDD are misunderstood and misapplied — especially in the age of AI-assisted, spec-driven development.

The narrative is structured around **10 sabotage techniques**, from distorting the meaning of BDD to making AI agents fail by feeding them anemic specifications.

See [slides-sections/README.md](./slides-sections/README.md) for the full slide architecture and technique numbering.

## Getting Started

### Prerequisites
- [Node.js](https://nodejs.org/) (v20 recommended)
- [pnpm](https://pnpm.io/) (or use npm/yarn)

### Install dependencies

```sh
pnpm install
```

### Start the presentation locally

```sh
pnpm dev
# Then open http://localhost:3030 in your browser
```

### Build for production

```sh
pnpm build
# Output will be in the dist/ folder
```

### Export to PDF

```sh
pnpm export
# Generates a PDF version of the slides
```

## Slide Content

The entry point is [slides.md](./slides.md), which imports each section from [slides-sections/](./slides-sections/).

### Sections

| # | Section | Techniques |
|---|---------|------------|
| 01 | Opening & Hook | — |
| 02 | Distort the Meaning | #0 |
| 03 | Vibe Coding vs SDD | #1 |
| 04 | Requirement ≠ Specification | #2 |
| 05 | Sabotaging BDD | #3, #4 |
| 06 | Sabotaging BDD Practices | #5, #6 |
| 07 | Design, ATDD & TDD | #7, #8, #9 |
| 09 | Making Agents Fail | #10 |
| 10 | Our Role Tomorrow | — |

See [slides-sections/README.md](./slides-sections/README.md) for the full slide architecture, technique numbering, and custom layouts.

## Deployment

- **Netlify**: See [netlify.toml](./netlify.toml) for configuration
- **Vercel**: See [vercel.json](./vercel.json) for configuration

## Tech Stack
- [Slidev](https://sli.dev/) (Vue 3, Markdown-based slides)
- [Shiki](https://shiki.matsu.io/) for code highlighting
- [UnoCSS](https://uno.antfu.me/) for styling

## License

<a href="https://github.com/pypamart/jftl2026">JFTL 2026 – Pierre-Yves PAMART - An Undercover Developer Among Testers: How to Fail BDD, ATDD &amp; TDD — Especially in the Age of Spec-Driven Development</a> © 2026 by <a href="https://www.linkedin.com/in/pierre-yves-pamart">Pierre-Yves PAMART</a> is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY-NC-SA 4.0</a><img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/nc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;">
