
# JFTL 2026 — Conference Talk Slide Deck

This repository contains the Slidev presentation for the JFTL 2026 talk by **Pierre-Yves PAMART**:

> *Un développeur infiltré chez les testeurs : comment faire échouer le BDD, l'ATDD & le TDD — surtout à l'ère du Spec-Driven Development*

## Overview

This talk explores, through a satirical "saboteur's guide" framing, the most common ways BDD, ATDD and TDD are misunderstood and misapplied — especially in the age of AI-assisted, spec-driven development.

The narrative is structured around **10 sabotage techniques**, from distorting the meaning of BDD to making AI agents fail by feeding them hollow specifications.

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

## Deployment

- **Netlify**: See [netlify.toml](./netlify.toml) for configuration
- **Vercel**: See [vercel.json](./vercel.json) for configuration

## Tech Stack
- [Slidev](https://sli.dev/) (Vue 3, Markdown-based slides)
- [Shiki](https://shiki.matsu.io/) for code highlighting
- [UnoCSS](https://uno.antfu.me/) for styling

## License

This project is for conference/demo purposes. See individual files for license details if needed.
