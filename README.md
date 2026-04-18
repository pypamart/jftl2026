
# Gherkin: Old vs New (v6+)

**JFTL 2026 — Conference Talk Slide Deck**

This repository contains the Slidev presentation for the JFTL 2026 talk:
**"Gherkin: Old vs New (v6+)"**

## Overview

This talk compares the old Gherkin syntax with the new Gherkin v6+ syntax, highlighting key changes and their impact on writing `.feature` files for tools like Cucumber, SpecFlow, Behave, and Reqnroll.

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

Edit the main slides in [slides.md](./slides.md).

Legacy or template slides are in [oldslides.md](./oldslides.md).

## Deployment

- **Netlify**: See `netlify.toml` for configuration
- **Vercel**: See `vercel.json` for configuration

## Tech Stack
- [Slidev](https://sli.dev/) (Vue 3, Markdown-based slides)
- [Shiki](https://shiki.matsu.io/) for code highlighting
- [UnoCSS](https://uno.antfu.me/) for styling

## License

This project is for conference/demo purposes. See individual files for license details if needed.
