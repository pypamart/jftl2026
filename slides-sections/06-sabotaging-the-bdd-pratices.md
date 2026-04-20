---
layout: technique-card
number: 5
transition: fade
---

Sabotage Example Mapping

<!--
## 🇫🇷 Script (30–60 s)
Si l'équipe commence à faire du bon travail et à faire de l'Example Mapping, il faut cibler cette session. C'est là que la spécification se construit concrètement. Et c'est là qu'on peut faire le plus de dégâts.

- - -

## 🇬🇧 Script (30–60 s)
If the team starts doing good work and running Example Mapping sessions, we need to target that session. It is where the specification is concretely built. And it is where we can do the most damage.

- - -

## 🎯 One-sentence message
**A failed Example Mapping session creates anemic specifications and therefore fragile implementations.**

## 🎭 Slide objective
Target the discovery workshop directly — the session where real quality is built or lost.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #6
- "Sabotage Example Mapping"

- - -

## 🎨 AI Image Prompt
Top-down view of colored index cards (yellow, blue, green, red) arranged on a dark surface in an Example Mapping pattern — but one corner of the arrangement is deliberately scattered into disorder. Single warm overhead light source, dramatic cast shadows. Style: workshop photography, clean overhead composition, no text, 16:9.
-->

---
clicks: 2
---

# What is Example Mapping?

<div class="relative h-[78%] mt-4">

  <!-- Divider: reveals once thumbnails appear in col 1 -->
  <div
    class="absolute top-0 bottom-0 border-l border-white/10 transition-opacity duration-700"
    style="left: 33%;"
    :style="{ opacity: $clicks >= 1 ? 1 : 0 }"
  />

  <!-- bddbooks-bdd-what-is-bdd.png — starts full in col 2, glides to col 1 (centered alone at click 1, top half at click 2) -->
  <img
    src="/bddbooks-bdd-what-is-bdd.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    :style="{
      left:   $clicks >= 1 ? '0%'  : '33%',
      top:    $clicks >= 2 ? '3%'  : ($clicks >= 1 ? '28%' : '13%'),
      width:  $clicks >= 1 ? '31%' : '67%',
      height: $clicks >= 1 ? '44%' : '74%',
    }"
  />

  <!-- bdd-discovery-process.png — fades in at col 2 on click 1, glides to col 1 bottom at click 2 -->
  <img
    src="/bdd-discovery-process.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    :style="{
      left:    $clicks >= 2 ? '0%'  : '33%',
      top:     $clicks >= 2 ? '53%' : '13%',
      width:   $clicks >= 2 ? '31%' : '67%',
      height:  $clicks >= 2 ? '44%' : '74%',
      opacity: $clicks >= 1 ? 1 : 0,
    }"
  />

  <!-- bddbooks-bdd-final-example-mapping.png — fades in at col 2 on click 2 -->
  <img
    src="/bddbooks-bdd-final-example-mapping.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    style="left: 33%; top: 13%; width: 67%; height: 74%;"
    :style="{ opacity: $clicks >= 2 ? 1 : 0 }"
  />

  <!-- Citation: Fig. 5 — visible at click 0 only (image 1 is large) -->
  <p
    class="absolute transition-opacity duration-500 text-[0.58rem] leading-snug text-white/40 italic"
    style="left: 35%; bottom: 0; width: 63%;"
    :style="{ opacity: $clicks < 1 ? 1 : 0 }"
  >
    Rose, S. &amp; Nagy, G. (2020). <em>Discovery: Explore Behaviour Using Examples</em>. Leanpub. Fig. 5 — BDD practices.
  </p>

  <!-- Citation: Fig. 14 — visible from click 2 -->
  <p
    class="absolute transition-opacity duration-500 text-[0.58rem] leading-snug text-white/40 italic"
    style="left: 35%; bottom: 0; width: 63%;"
    :style="{ opacity: $clicks >= 2 ? 1 : 0 }"
  >
    Rose, S. &amp; Nagy, G. (2020). <em>Discovery: Explore Behaviour Using Examples</em>. Leanpub. Figure 14 — The final example map.
  </p>

</div>

<!--
## 🇫🇷 Script (30–60 s)

### Affichage initial — les trois pratiques BDD
Le BDD se décompose en trois pratiques : Discovery, Formulation, Automation. L'Example Mapping est l'un des ateliers centraux de la phase Discovery.

### Clic 1 — Domain Storytelling / Example Mapping en action
L'Example Mapping, c'est un atelier structuré inventé par Matt Wynne. On prend une user story et on la décompose collectivement en règles métier illustrées par des exemples. Chaque carte couleur a un rôle précis : jaune pour la story, bleu pour les règles, vert pour les exemples, rouge pour les questions ouvertes.

### Clic 2 — La carte d'Example Mapping finale
Voilà ce à quoi ressemble une carte d'Example Mapping complète et bien conduite. C'est un artefact visuel qui capture la compréhension partagée de toute l'équipe avant d'écrire une seule ligne de code ou de Gherkin.

- - -

## 🇬🇧 Script (30–60 s)

### Initial display — the three BDD practices
BDD breaks down into three practices: Discovery, Formulation, Automation. Example Mapping is one of the core workshops of the Discovery phase.

### Click 1 — Domain Storytelling / Example Mapping in action
Example Mapping is a structured workshop invented by Matt Wynne. You take a user story and collaboratively break it down into business rules illustrated by examples. Each card colour has a precise role: yellow for the story, blue for rules, green for examples, red for open questions.

### Click 2 — The final example map
This is what a complete, well-run Example Mapping card looks like. It is a visual artefact that captures the shared understanding of the whole team before a single line of code or Gherkin is written.

- - -

## 🎯 One-sentence message
**Example Mapping is the Discovery workshop where the team builds shared understanding through structured business rules and concrete examples.**

## 🎭 Slide objective
Ground the audience in what Example Mapping actually is before showing how to sabotage it.

## 🖥️ What to put on screen
- BDD practices diagram (bddbooks-bdd-what-is-bdd.png) → Example Mapping discovery process (bdd-discovery-process.png) → Final example map (bddbooks-bdd-final-example-mapping.png)

- - -

## 🎨 AI Image Prompt
Top-down view of a clean table covered in four types of colored index cards arranged in clear columns — yellow, blue, green, red — each stack precisely aligned, single warm overhead spotlight creating long soft shadows. Style: workshop still life, overhead photography, no text, 16:9.
-->

---
clicks: 9
---

# How to ruin an Example Mapping session

<div class="flex gap-6 mt-3 h-[80%]">

<!-- Left column: checklist -->
<div class="flex flex-col flex-1 gap-2">

<ul class="space-y-[0.35em] text-[0.75em] list-none pl-0">
  <li v-click>🎭 <strong>Destroy the Three Amigos</strong>
    <ul class="ml-5 mt-1 space-y-[0.25em] text-[0.82em] text-white/65 list-disc pl-4">
      <li>🏢 Without business experts (BA or domain expert) — only QA &amp; devs</li>
      <li>📥 QA + BA only — requirements dumped straight to the backlog board, no devs</li>
      <li>👨‍💻 Developers only — no QA, no domain expertise at all</li>
    </ul>
  </li>
  <li v-click>🔮 Forget critical business rules</li>
  <li v-click>😊 Cover happy paths only — ignore all edge cases</li>
  <li v-click>💬 Write vague, unrealistic examples</li>
  <li v-click>🗣️ Abandon business language — go full technical</li>
  <li v-click>🤖 Use AI alone — with zero domain context</li>
  <li v-click>💣 Let the machine fill gaps with <em>plausible guesses</em></li>
  <li v-click>⚙️ Express scenarios as <strong>technical solutions</strong>, not business behaviours</li>
</ul>

<v-click>
<div class="mt-3 px-3 py-2 rounded-lg bg-red-900/20 border border-red-500/20 text-xs">
  ⚠️ Plausible-but-wrong material is <strong>excellent fuel for failure</strong>.
</div>
</v-click>

</div>

<!-- Right column: image (fades in + slides up on first click) -->
<div
  class="w-[40%] flex flex-col items-center justify-center gap-2 transition-all duration-700 ease-in-out"
  :style="{ opacity: $clicks >= 1 ? 1 : 0, transform: $clicks >= 1 ? 'translateY(0)' : 'translateY(14px)' }"
>
  <img
    src="/bddbooks-bdd-final-example-mapping.png"
    class="object-contain w-full rounded-lg"
  />
  <p class="text-[0.55rem] leading-snug text-white/40 italic text-center">
    Rose, S. &amp; Nagy, G. (2020). <em>Discovery: Explore Behaviour Using Examples</em>. Leanpub. Figure 14 — The final example map.
  </p>
</div>

</div>

<!--
## 🇫🇷 Script (30–60 s)

### Clic 1 — Détruire les Trois Amigos
Le premier levier de sabotage, c'est de ne jamais réunir les bonnes personnes. Les Trois Amigos, ce sont : un représentant du métier, un QA, et un développeur. Supprimez n'importe lequel de ces trois piliers et la session s'effondre. Sans le métier, on spécifie dans le vide. Sans les devs, les stories atterrissent dans le backlog sans discussion. Sans les QA, personne ne pense aux cas limites.

### Clics 2–7 — La checklist de sabotage
On peut aussi oublier des règles importantes, couvrir uniquement les happy paths, écrire de mauvais exemples, ou abandonner complètement le langage métier. Et surtout, lancer la session avec l'IA seule sans contexte métier — dans ce cas, le système comble les trous avec des suppositions plausibles. Du matériel plausible-mais-faux, c'est un excellent carburant pour l'échec.

- - -

## 🇬🇧 Script (30–60 s)

### Click 1 — Destroy the Three Amigos
The first sabotage lever is to never bring the right people together. The Three Amigos are: a business representative, a QA, and a developer. Remove any one of those three pillars and the session collapses. No business expert — you're specifying in a vacuum. No devs — stories land in the backlog undiscussed. No QA — nobody thinks about edge cases.

### Clicks 2–7 — The sabotage checklist
You can also forget important rules, cover only happy paths, write bad examples, or abandon business language completely. And above all, run the session with AI alone and no domain context — the system will fill the gaps with plausible guesses. Plausible-but-wrong material is excellent fuel for failure.

- - -

## 🎯 One-sentence message
**A failed Example Mapping session starts with the wrong people in the room — and ends with plausible-but-wrong specifications.**

## 🎭 Slide objective
Elevate the checklist with a structural point (Three Amigos) before the tactical failures, with the final example map visible as the contrast artefact.

## 🖥️ What to put on screen
- Left: Three Amigos breakdown + 6 sabotage tactics + warning box
- Right: Figure 14 — The final example map (fades in at first click)

- - -

## 🎨 AI Image Prompt
A pristine white checklist paper artifact with every checkbox marked by a bold crimson (#BB3949) X — the paper slightly crumpled at one corner, sitting on a deep dark matte surface. Strong single directional light from the right, long shadow. Style: editorial still life, dramatic contrast, no text, 16:9.
-->

---
layout: technique-card
number: 6
transition: fade
---

Write anemic Gherkin

<!--
## 🇫🇷 Script (30–60 s)
Une fois l'Example Mapping fait, on peut saboter le Gherkin. Tout ce qu'il faut, c'est le réduire à une coquille vide. Et puisqu'on a un exemple, montrons la différence.

- - -

## 🇬🇧 Script (30–60 s)
Once Example Mapping is done, we can sabotage Gherkin. All we need to do is reduce it to a shell. And since we have an example, let's show the difference.

- - -

## 🎯 One-sentence message
**Gherkin becomes useless as soon as it is written like an empty shell.**

## 🎭 Slide objective
Show that the problem is less the tool than its impoverished use — and set up the good vs bad contrast.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #7
- "Write anemic Gherkin"

- - -

## 🎨 AI Image Prompt
Two identical transparent vessels on a dark surface — one is a beautiful but completely empty crystal shell, the other is identical in form but filled with luminous blue (#0F9ED5) content that glows from within. Deep dark background (#02111B), bilateral symmetry, dramatic backlight. Style: conceptual product photography, no text, 16:9.
-->

---
clicks: 2
---

# What is Formulation?

<div class="relative h-[78%] mt-4">

  <!-- Divider: reveals at click 1 -->
  <div
    class="absolute top-0 bottom-0 border-l border-white/10 transition-opacity duration-700"
    style="left: 33%;"
    :style="{ opacity: $clicks >= 1 ? 1 : 0 }"
  />

  <!-- bddbooks-bdd-what-is-bdd.png — starts full in col 2, centered alone at click 1, top thumbnail at click 2 -->
  <img
    src="/bddbooks-bdd-what-is-bdd.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    :style="{
      left:   $clicks >= 1 ? '0%'  : '33%',
      top:    $clicks >= 2 ? '3%'  : ($clicks >= 1 ? '28%' : '13%'),
      width:  $clicks >= 1 ? '31%' : '67%',
      height: $clicks >= 1 ? '44%' : '74%',
    }"
  />

  <!-- bdd-formulate-process.png — fades in full right at click 1, glides to bottom thumbnail at click 2 -->
  <img
    src="/bdd-formulate-process.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    :style="{
      left:   $clicks >= 2 ? '0%'  : '33%',
      top:    $clicks >= 2 ? '53%' : '13%',
      width:  $clicks >= 2 ? '31%' : '67%',
      height: $clicks >= 2 ? '44%' : '74%',
      opacity: $clicks >= 1 ? 1 : 0,
    }"
  />

  <!-- loyalty-discount.feature — visible at click 2 -->
  <div
    class="absolute overflow-y-auto rounded-lg [&_pre]:!text-[0.30em] [&_pre]:!leading-snug [&_pre]:!m-0"
    style="left: 34%; top: 0; width: 65%; height: 100%; background: #1e1e2e;"
    v-show="$clicks >= 2"
  >

<<< @/public/loyalty-discount.feature

  </div>

  <!-- Citation: Fig. 5 — visible at click 0 only -->
  <p
    class="absolute transition-opacity duration-500 text-[0.58rem] leading-snug text-white/40 italic"
    style="left: 35%; bottom: 0; width: 63%;"
    :style="{ opacity: $clicks < 1 ? 1 : 0 }"
  >
    Rose, S. &amp; Nagy, G. (2020). <em>Discovery: Explore Behaviour Using Examples</em>. Leanpub. Fig. 5 — BDD practices.
  </p>

</div>

<!--
## 🇫🇷 Script (30–60 s)

### Affichage initial — les trois pratiques BDD
Rappel rapide : le BDD se décompose en trois pratiques — Discovery, Formulation, Automation. On vient de voir la Discovery avec l'Example Mapping. Passons maintenant à la Formulation.

### Clic 1 — Le processus de Formulation
La Formulation, c'est l'étape où l'équipe traduit les exemples issus de l'Example Mapping en artefacts écrits et exploitables. Le format le plus répandu aujourd'hui : le Gherkin. Et ce qui est essentiel, c'est que le Gherkin bien écrit n'est pas juste un script de test — c'est une spécification vivante, compréhensible à la fois par les humains et par l'IA.

- - -

## 🇬🇧 Script (30–60 s)

### Initial display — the three BDD practices
Quick reminder: BDD breaks down into three practices — Discovery, Formulation, Automation. We've just seen Discovery with Example Mapping. Now let's move to Formulation.

### Click 1 — The Formulation process
Formulation is the step where the team translates the examples from Example Mapping into written, actionable artefacts. The most common format today: Gherkin. And what's essential is that well-written Gherkin isn't just a test script — it's a living specification, usable by both humans and AI.

- - -

## 🎯 One-sentence message
**Formulation is where shared understanding becomes a written, living artefact — the specification.**

## 🎭 Slide objective
Transition from Discovery (Example Mapping) to Formulation, setting up the contrast between anemic and rich Gherkin.

## 🖥️ What to put on screen
- BDD practices diagram → Formulation process diagram

- - -

## 🎨 AI Image Prompt
A blank index card being carefully written on with a precise ink pen — the card sits on a dark surface, other blank cards visible in the background. Single overhead spotlight, clean shadows. Style: editorial still life, no text, 16:9.
-->

---
layout: two-cols-compare
---

# Gherkin: anemic vs. rich

::left::

## Anemic Gherkin

<div class="overflow-y-auto max-h-[55vh]">

<<< @/public/loyalty-discount-bad.feature

</div>

*No context, no rules, no tags, solution-oriented wording*

::right::

## Rich Gherkin

<div class="overflow-y-auto max-h-[55vh]">

<<< @/public/loyalty-discount.feature

</div>

*Tags, refs, business language, business rules, meaningful scenarios*

<!--
## 🇫🇷 Script (30–60 s)
À gauche, un Gherkin creux : du wording technique orienté solution, sans contexte, sans tags, sans commentaires, sans liens vers la documentation de référence. On a l'apparence de la rigueur — mais pas la substance. À droite, un bon Gherkin moderne qui peut devenir un véritable artefact de travail. Des commentaires, des tags, des liens vers la doc de référence, des scénarios cohérents et des exemples pertinents. Ce n'est plus un brouillon de test. C'est une spécification exploitable — à la fois par l'équipe et par l'IA.

- - -

## 🇬🇧 Script (30–60 s)
On the left, anemic Gherkin: solution-oriented technical wording, no context, no tags, no comments, no links to reference documentation. We have the appearance of rigor — but not the substance. On the right, good modern Gherkin that can become a real working artifact: comments, tags, reference links, coherent scenarios, relevant examples. At that point, you no longer have a rough testing draft. You have a specification the team can actually use — and that AI can also exploit effectively.

- - -

## 🎯 One-sentence message
**Good Gherkin is not an empty test script — it is a working artifact useful to both humans and AI.**

## 🎭 Slide objective
Make the qualitative difference visceral with a real before/after code example the audience can feel.

## 🖥️ What to put on screen
- Left (anemic): solution-oriented Gherkin with no context, no tags, no comments
- Right (rich): feature with tags, comments, business language, reference, meaningful scenario

- - -

## 🎨 AI Image Prompt
Split composition — left side shows a thin, fragile wireframe structure with empty voids visible through it (anemic), right side shows the same form but richly filled with glowing interconnected nodes and data streams. Deep navy (#2D354B) background, left desaturated, right vibrant blue (#0F9ED5). Style: abstract architectural comparison, no text, 16:9.
-->
