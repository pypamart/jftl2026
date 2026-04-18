# JFTL 2026 — Slide Architecture

## Narrative Flow

| # | File | Title | Techniques | Est. Slides |
|---|------|-------|------------|-------------|
| 01 | `01-opening.md` | Opening & Hook | — | 5 |
| 02 | `02-the-sabotage-frame.md` | Technique #0: Distort the Meaning | #0 | 2 |
| 03 | `03-vibe-coding-vs-sdd.md` | Confusion #1: Vibe Coding vs SDD | #1 | 3 |
| 04 | `04-requirement-vs-specification.md` | Confusion #2: Requirement ≠ Specification | #2 | 2 |
| 05 | `05-sabotaging-bdd.md` | Sabotaging BDD + Scoreboard | #3, #4 | 7 |
| 06 | `06-the-missing-piece-design.md` | The Great Missing Piece: Design | #5 | 3 |
| 07 | `07-sabotaging-the-tools.md` | Sabotaging Example Mapping & Gherkin | #6, #7 | 5 |
| 08 | `08-bdd-atdd-tdd-confusion.md` | Flatten BDD/ATDD/TDD + Fake TDD | #8, #9 | 5 |
| 09 | `09-making-agents-fail.md` | How to Make Agents Fail | #10 | 3 |
| 10 | `10-conclusion.md` | Our Role Tomorrow + Thank You | — | 3 |

**Total: ~38 slides** (+ 1 French cover in root = 39)

## Technique Numbering

- **#0** Distort the meaning *(meta-technique)*
- **#1** Confuse Vibe Coding & SDD
- **#2** Confuse Requirement & Specification
- **#3** Don't know what BDD is
- **#4** Reduce BDD to testing
- **#5** Skip design
- **#6** Sabotage Example Mapping
- **#7** Write hollow Gherkin
- **#8** Flatten BDD / ATDD / TDD
- **#9** Sell fake TDD
- **#10** Feed garbage to agents

## Custom Layouts

| Layout | Purpose |
|--------|---------|
| `technique-card` | Cinematic chapter card for each technique (prop: `number`) |
| `big-statement` | Single powerful centered sentence |
| `two-cols-compare` | Bad vs Good comparison (slots: default, left, right) |
| `scoreboard` | Sabotage progress tracker (prop: `done`) |
| `section-intro` | Act/section opener |
| `reveal-moment` | Dramatic "aha" reveal |
| `end-credits` | Warm closing slide |

## Existing Layouts

| Layout | Purpose |
|--------|---------|
| `jftl-cover` | JFTL branded cover slide |
| `caution` | Warning/hazard stripes |
| `disclaimer` | Info disclaimer card |
| `disclaimer-cinema` | Film grain vintage disclaimer |
| `disclaimer-warning` | Warning-style disclaimer |
