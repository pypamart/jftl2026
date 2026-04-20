---
layout: technique-card
number: 1
transition: fade
---

Confuse Vibe Coding & SDD

<!--
## 🇫🇷 Script (30–60 s)
Notre équipe veut utiliser l'IA. C'est une bonne idée. Donc si on veut qu'elle échoue, il faut la saboter le plus tôt possible. Le meilleur coup : leur faire croire que le vibe coding et le Spec-Driven Development, c'est à peu près la même chose. Ce n'est pas le cas. Ce sont deux logiques radicalement différentes.

- - -

## 🇬🇧 Script (30–60 s)
Our team wants to use AI. And that is a good idea. So if we want them to fail, we need to sabotage them as early as possible. The best move is to make them believe that vibe coding and Spec-Driven Development are basically the same thing. They are not. These are two radically different approaches.

- - -

## 🎯 One-sentence message
**If you confuse vibe coding and Spec-Driven Development, you sabotage the project before it even begins.**

## 🎭 Slide objective
Introduce the first structural confusion — one that poisons every downstream activity.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #1
- "Confuse Vibe Coding & SDD"

- - -

## 🎨 AI Image Prompt
Two parallel pathways diverging from a single bright point — one path is fluid and organic with warm amber tones, the other is structured and geometric with cool blue (#0F9ED5) precision. Deep navy (#2D354B) background, clean separation, symmetrical composition. Style: abstract infographic art, no text, 16:9.
-->



---
layout: two-cols-compare
---

# Two very different approaches

::left::

## Vibe Coding

- **Intention** → implementation → correction
- Delegate as much as possible
- Fast iteration on small scope
- Great for **prototyping**
- Limits: large systems, legacy, architecture

<img src="/vibe-coding-workflow.png" class="flex-1 min-h-0 w-full object-contain object-top" style="min-height:0" />

::right::

## Spec-Driven Development

<!-- - **Requirements** → specify → plan → slice → implement → verify  -->
- Differents levels of AI delegation: spec-first, spec-anchored, spec-as-source, etc.
- Structured, traceable progression
- AI exploits well-formed material
- Built for **complex systems**

<img src="/sdd-process.png" class="flex-1 min-h-0 w-full object-contain object-top" style="min-height:0" />

<!--
## 🇫🇷 Script (30–60 s)
Avec l'AI-DLC, on délègue de plus en plus d'activités aux outils ou aux agents. Le vibe coding pousse cette logique très loin : vous donnez une intention, parfois même un énoncé de solution, et ensuite vous itérez jusqu'à ce que le résultat semble acceptable. Ça peut très bien fonctionner pour des petits projets ou des prototypes. Mais dès qu'on est face à des systèmes complexes, du legacy ou des défis de design, ce n'est pas suffisant. Le Spec-Driven Development suit une autre logique : construire du matériel exploitable d'abord, puis déléguer à partir de ça.

- - -

## 🇬🇧 Script (30–60 s)
With AIDLC, we are delegating more and more activities to tools or agents. Vibe coding pushes that logic very far: you provide an intention, sometimes even a solution statement, and then iterate until the result looks acceptable. That can work very well for small projects or prototypes. But once you are dealing with complex systems, legacy, or design challenges, it is not enough. Spec-Driven Development follows another logic: build usable material first, then delegate from that.

- - -

## 🎯 One-sentence message
**Vibe coding delegates as much as possible; SDD delegates from rich specifications.**

## 🎭 Slide objective
Make the difference in nature between the two approaches visible with a crisp side-by-side.

## 🖥️ What to put on screen
- Two columns: Vibe Coding (intention → production → correction, prototyping) vs SDD (specify → plan → build → verify → validate, complex systems)

- - -

## 🎨 AI Image Prompt
Split-screen diptych — left half shows an impressionistic fluid paint flow in warm tones (intuition, vibe), right half shows a precise architectural blueprint grid in cool blue (#0F9ED5). Sharp clean vertical division line in the center, deep dark background. Style: conceptual diptych, balanced visual weight, no text, 16:9.
-->

---
layout: big-statement
---

Vibe coding works for prototyping.

SDD is for *systems that need to survive reality*.

<v-click>

| Context                     | Recommended Approach           | Level of Specification                 | Example                     |
|-----------------------------|--------------------------------|----------------------------------------|-----------------------------|
| Prototype / exploration     | Vibe coding                    | Minimal (direct prompt)                | Internal POC, hackathon     |
| Feature on existing codebase| Lightweight SDD                | Spec.md + tests                        | API endpoint addition       |
| Production / team           | Full SDD                       | Architecture + Spec + Plan + Tasks     | Payment system              |
| Critical system             | Full SDD + formal verification | ↑ + Proofs + Mutation Testing          | Financial infrastructure   |

</v-click>

<!--
## 🇫🇷 Script (30–60 s)
Ce ne sont pas les mêmes rigueurs, ce ne sont pas les mêmes problèmes. Les confondre, c'est saboter le projet avant même qu'il ne commence. L'équipe pensera déléguer efficacement alors qu'elle livrera en réalité du matériel incomplet à ses agents. Et le reste suivra.

- - -

## 🇬🇧 Script (30–60 s)
They do not require the same rigor, and they do not solve the same problems. Confusing them means sabotaging the project before it even starts. The team will think it is delegating effectively while actually handing over incomplete material to its agents. And everything else will follow.

- - -

## 🎯 One-sentence message
**Vibe coding works for prototyping; SDD is for systems that need to survive reality.**

## 🎭 Slide objective
Anchor the contrast with a memorable closing statement before moving to the next confusion.

## 🖥️ What to put on screen
- "Vibe coding works for prototyping."
- "SDD is for systems that need to survive reality."

- - -

## 🎨 AI Image Prompt
A delicate glass prototype sculpture sitting next to a massive reinforced steel architectural model — both beautiful, clearly built for different purposes. Dark studio lighting against navy (#2D354B) background, single directional spotlight, dramatic material contrast. Style: product photography aesthetic, minimal, no text, 16:9.
-->
