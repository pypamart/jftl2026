---
layout: technique-card
number: 7
transition: fade
---

Skip design entirely

<!--
## 🇫🇷 Script (30–60 s)
La formulation BDD clôt l'espace problème. On a nos règles métier, nos exemples, notre Gherkin. Maintenant il faut passer à l'espace des solutions. Mais entre les deux, il y a une pièce manquante majeure que beaucoup de talks sur le BDD n'abordent jamais : le design. Et c'est exactement pour ça que c'est une technique de sabotage en or.

- - -

## 🇬🇧 Script (30–60 s)
BDD formulation closes the problem space. We have our business rules, our examples, our Gherkin. Now we need to move to the solution space. But between the two there is a major missing piece that most BDD talks never address: design. And that is exactly why it is a golden sabotage technique.

- - -

## 🎯 One-sentence message
**Between BDD formulation and implementation, there is real design work that AI does not eliminate.**

## 🎭 Slide objective
Pivot from the BDD problem space to the bridge toward the solution space — the expert insight most talks skip entirely.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #7
- "Skip design entirely"

- - -

## 🎨 AI Image Prompt
A magnificent glass building with a gaping void where a critical structural column should be — light spills through the gap, making the absence beautiful but dangerous. Deep dark atmosphere (#02111B), warm interior glow through the void, architectural precision around it. Style: conceptual architecture render, dramatic, no text, 16:9.
-->

---
layout: default
---

# Implement vs. Plan + Construct

<div class="flex items-center justify-center h-[85%]">
  <img src="/implement_vs_construct.png" class="max-h-full max-w-full object-contain" />
</div>

<!--
## 🇫🇷 Script (30–60 s)
- Implémenter et Plan + Construct ne désignent pas deux étapes successives — ce sont deux paradigmes distincts. 
- Implémenter, c'est transformer directement un besoin en code : on part du requirement, on code. 
- Plan + Construct, c'est d'abord concevoir et structurer — l'architecture, les interfaces, les responsabilités — puis construire conformément à ce plan. 
- Dans ce second paradigme, le code n'est pas le point de départ : il est l'aboutissement de la construction. 
- Et c'est précisément cette confusion entre les deux qui crée des systèmes fragiles.
- Et ici c'est comme le bon ou le mauvais chasseur : la phase Automation du BDD commence avec l'écriture d'un test d'acceptation, mais ce n'est pas un test first — c'est du design guidé par les tests.

- - -

## 🇬🇧 Script (30–60 s)
Implement and Plan + Construct are not two successive steps — they are two distinct paradigms. To implement is to transform a requirement directly into code: you take the need, you code it. Plan + Construct means first designing and structuring — the architecture, the interfaces, the responsibilities — then building according to that plan. In this second paradigm, code is not the starting point: it is the outcome of construction. And it is precisely the confusion between the two that creates fragile systems.

- - -

## 🎯 One-sentence message
**Implement = transform a requirement directly into code. Plan + Construct = design and structure first, then build. Code is the outcome, not the starting point.**

## 🎭 Slide objective
Establish Implement vs. Plan + Construct as two mutually exclusive paradigms, and make clear that in Plan + Construct, code is the culmination — not the beginning.

## 🖥️ What to put on screen
- Image: implement_vs_construct.png

- - -

## 🎨 AI Image Prompt
Two parallel workshop stations side by side — the left has a direct hand writing code from a single sticky note; the right has architectural blueprints, models, and structured components being assembled with precision. Deep dark background (#02111B), warm focused lighting on each station. Style: conceptual craft photography, no text, 16:9.
-->

---
clicks: 7
layout: default
---

<div class="flex items-center justify-center h-[100%] w-full">
  <img :src="`/sdlc-process-${$clicks}.png`" class="w-full h-full object-contain" />
</div>

<!--
## 🇫🇷 Script (2–4 min)
Voici le cycle de vie complet du développement logiciel. Je vais vous guider à travers ce diagramme, car c'est ici que tout s'assemble.

On part de l'espace problème — requirements, user stories, BDD formulation. Et on arrive à l'espace solution — le code, les tests, l'infrastructure.

Mais entre les deux, il y a la macro-phase Plan, structurée en trois couches parallèles :

Première couche : Plan Architecture et Plan UX en parallèle. Le modèle C4 de Simon Brown nous aide ici — c'est le niveau Contexte. On décide de la structure globale du système et des grands flux utilisateur en même temps.

Deuxième couche : Plan High Level Design et Design UI en parallèle. C4 niveau Container. On affine les modules, les APIs, les contrats d'interface, et les écrans côté UI.

Troisième couche : Plan Low Level Design. C4 niveau Composant. Et c'est là que quelque chose de crucial se passe — l'écriture ATDD et l'écriture TDD. Ce ne sont pas des activités de "test first". Ce sont des activités de conception de bas niveau. On écrit les tests parce qu'on conçoit — pas parce qu'on code.

Le code, lui, vit dans la phase Construct. Il est l'aboutissement du plan, pas son point de départ.

C'est la différence entre Implement et Plan + Construct. Implement, c'est aller directement du requirement au code. Plan + Construct, c'est traverser ces couches de design avant de construire.

Et c'est précisément ce que le vibe coding et le "test first" naïf ne font pas.

- - -

## 🇬🇧 Script (2–4 min)
This is the complete software development lifecycle. Let me walk you through this diagram — this is where everything comes together.

We start from the problem space: requirements, user stories, BDD formulation. And we arrive at the solution space: code, tests, infrastructure.

But between the two sits the Plan macro-phase, structured in three parallel layers.

First layer: Plan Architecture and Plan UX in parallel. Simon Brown's C4 model helps us here — this is the Context level. We decide the global system structure and the major user flows at the same time.

Second layer: Plan High Level Design and Design UI in parallel. C4 Container level. We refine modules, APIs, interface contracts, and screens on the UI side.

Third layer: Plan Low Level Design. C4 Component level. And this is where something crucial happens — ATDD writing and TDD writing. These are not "test first" activities. They are low level design activities. We write tests because we are designing — not because we are coding.

The code lives in the Construct phase. It is the outcome of the plan, not its starting point.

This is the difference between Implement and Plan + Construct. Implement means going directly from requirement to code. Plan + Construct means traversing these design layers before building.

And that is precisely what vibe coding and naive "test first" do not do.

- - -

## 🎯 One-sentence message
**The SDLC shows exactly where design lives — in the Plan phase, layered from Architecture to Low Level Design — and why code is the outcome, not the starting point.**

## 🎭 Slide objective
Use the SDLC diagram as the master reference to explain all design layers, the C4 parallel, the place of ATDD/TDD writing, and the Implement vs. Plan + Construct distinction — in one guided visual walkthrough.

## 🖥️ What to put on screen
- Image: sdlc-process.png (full height, horizontally scrollable)

- - -

## 🎨 AI Image Prompt
A wide panoramic blueprint of a complete software development lifecycle — from requirements on the left to deployed code on the right, with a central section showing layered design phases in luminous detail. Deep dark background (#02111B), each phase a different ambient color. Style: technical illustration, panoramic, no text, 16:9.
-->

---
layout: technique-card
number: 8
transition: fade
---

Flatten BDD / ATDD / TDD

<!--
## 🇫🇷 Script (30–60 s)
Maintenant qu'on a vu que le design est structuré en couches — comme le modèle C4 — et que l'ATDD et le TDD sont des activités de conception au niveau Composant, regardons la confusion la plus séduisante : présenter BDD, ATDD et TDD comme de simples variantes d'une seule idée — commencer par un test. C'est exactement ce qui arrive quand on saute le design.

- - -

## 🇬🇧 Script (30–60 s)
Now that we have seen that design is layered — like the C4 model — and that ATDD and TDD are design activities at the Component level, let us look at the most seductive confusion: presenting BDD, ATDD, and TDD as just variants of one single idea — start with a test. This is exactly what happens when you skip design.

- - -

## 🎯 One-sentence message
**When you reduce everything to 'test first,' you throw away all the upstream design value.**

## 🎭 Slide objective
Introduce the most modern and seductive confusion — flattening three distinct practices into one — now grounded in the design context we just established.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #8
- "Flatten BDD / ATDD / TDD"

- - -

## 🎨 AI Image Prompt
Three distinct dimensional geological layers being compressed into a single flat plane by invisible force — rich textures and colors being crushed to uniformity. Deep dark background (#02111B), each layer a different shade (blue, green, teal), dramatic pressure visualization from above. Style: abstract geological art, cinematic, no text, 16:9.
-->

---
layout: big-statement
---

<div class="flex flex-col items-center justify-center gap-5">

<div class="flex items-center gap-3 text-xl font-bold">
  <div class="px-3 py-1 rounded-lg bg-blue-900/40 border border-blue-500/30">BDD</div>
  <span class="text-white/25">·</span>
  <div class="px-3 py-1 rounded-lg bg-blue-900/40 border border-blue-500/30">ATDD</div>
  <span class="text-white/25">·</span>
  <div class="px-3 py-1 rounded-lg bg-blue-900/40 border border-blue-500/30">TDD</div>
</div>

<div v-click class="text-white/35 text-base">▼ &nbsp;flatten everything&nbsp; ▼</div>

<div v-click class="text-2xl font-semibold text-white/80 italic">
  "Just start with a test, right?"
</div>

<div v-click class="mt-2 text-sm text-white/40 max-w-lg text-center">
  The moment you skip design, you erase discovery, formulation, architecture, trade-offs, and <em>every C4 design layer we just saw</em>.
</div>

</div>

<!--
## 🇫🇷 Script (30–60 s)
Le moment où on fait ça, on efface toute la phase amont : découverte, formulation, architecture, arbitrages et chaque couche de design C4 qu'on vient de voir. On fonce directement sur le test first — et c'est le moyen parfait pour se planter avec l'ATDD et la double boucle TDD. Ce n'est pas un raccourci innocent. C'est une amputation.

- - -

## 🇬🇧 Script (30–60 s)
The moment you do that, you erase the entire upstream phase: discovery, formulation, architecture, trade-offs, and every design layer we just saw. You rush straight into test first — skipping Context, Container, and Component levels — and that is the perfect recipe for failure with ATDD and the TDD double loop. This is not an innocent shortcut. It is an amputation.

- - -

## 🎯 One-sentence message
**When you reduce everything to 'test first,' you throw away all the upstream design value.**

## 🎭 Slide objective
Make the flattening visible as a deliberate destructive act, now connected to the Plan macro-phase we just showed.

## 🖥️ What to put on screen
- BDD · ATDD · TDD / ▼ flatten everything ▼
- "Just start with a test, right?"
- Consequence: discovery, formulation, architecture, trade-offs, and every C4 design layer disappear

- - -

## 🎨 AI Image Prompt
A massive reducing funnel seen from above — a rich complex colorful landscape enters the wide top and a single thin monochrome line exits at the narrow bottom. Lost complexity visible as fading luminous particles dissolving into the void. Deep navy (#2D354B), subtle warm accents on the vanishing detail. Style: data visualization art, minimal, no text, 16:9.
-->

---

# The double loop

<div class="flex items-center justify-center mt-8">
<div class="relative" style="width: 700px; height: 340px;">

<!-- Outer loop — click 1 -->
<div
  v-click="1"
  class="absolute inset-0 rounded-2xl border-2 border-blue-500/40 bg-blue-900/10"
>
  <div class="absolute top-3 left-4 text-sm font-bold text-blue-400">
    Outer Loop — Acceptance (BDD / ATDD)
  </div>
  <div class="absolute bottom-3 left-4 text-xs text-white/40">
    What should the system do?
  </div>
  <div class="absolute bottom-3 right-4 text-xs text-white/40">
    Validate expected behavior
  </div>
</div>

<!-- Inner loop — click 2 -->
<div
  v-click="2"
  class="absolute rounded-xl border-2 border-green-500/40 bg-green-900/10"
  style="top: 60px; left: 120px; right: 120px; bottom: 50px;"
>
  <div class="absolute top-3 left-4 text-sm font-bold text-green-400">
    Inner Loop — TDD
  </div>
  <div class="flex items-center justify-center h-full gap-6 pt-6">
    <div class="text-center">
      <div class="text-2xl">🔴</div>
      <div class="text-xs text-white/60 mt-1">Red</div>
    </div>
    <div class="text-white/30">→</div>
    <div class="text-center">
      <div class="text-2xl">🟢</div>
      <div class="text-xs text-white/60 mt-1">Green</div>
    </div>
    <div class="text-white/30">→</div>
    <div class="text-center">
      <div class="text-2xl">🔵</div>
      <div class="text-xs text-white/60 mt-1">Refactor</div>
    </div>
  </div>
  <div class="absolute bottom-2 left-4 text-xs text-white/40">
    Build the solution cleanly, one step at a time
  </div>
</div>

<!-- Design annotation — click 3 -->
<div
  v-click="3"
  class="absolute text-xs text-yellow-400/70 font-medium"
  style="bottom: 8px; left: 50%; transform: translateX(-50%);"
>
  ← Both loops are design activities (C4 Level 3 — Component) →
</div>

</div>
</div>

<!--
## 🇫🇷 Script (30–60 s)
Le modèle qui aide vraiment ici, c'est la double boucle. Une boucle externe clarifie ce que le système devrait faire — c'est l'écriture ATDD, une activité de design de bas niveau. Une boucle interne construit la solution proprement, un petit pas à la fois, en utilisant TDD — encore du design de bas niveau. Ce ne sont pas des activités de « test first » : c'est de la conception guidée par les tests.

- - -

## 🇬🇧 Script (30–60 s)
The model that really helps here is the double loop. An outer loop clarifies what the system should do — that is ATDD writing, a low level design activity. An inner loop builds the solution cleanly, one small step at a time, using TDD — again, low level design. These are not "test first" activities: they are test-guided design.

- - -

## 🎯 One-sentence message
**Both loops — ATDD and TDD — are low level design activities, not just 'starting with a test.'**

## 🎭 Slide objective
Give the audience a simple, memorable mental model that corrects the flattening — now explicitly tied to the C4-aligned design layers.

## 🖥️ What to put on screen
- Two concentric loops: Outer = Acceptance/BDD/ATDD (what should the system do?)
- Inner = TDD (Red → Green → Refactor)
- Both loops are design activities (Plan Low Level Design)

- - -

## 🎨 AI Image Prompt
Two concentric glowing orbital rings floating in deep space — the outer ring is large and blue (#0F9ED5) representing acceptance, the inner ring is smaller and green representing TDD. Smooth motion blur trails suggesting continuous cyclic movement. Deep black background, clean luminous paths. Style: orbital space visualization, no text, 16:9.
-->

---
layout: technique-card
number: 9
transition: fade
---

Sell fake TDD

<!--
## 🇫🇷 Script (30–60 s)
Si on veut vraiment faire échouer une équipe, il faut leur vendre du faux TDD. Le faux TDD est attractif parce qu'il est simple. Mais maintenant qu'on sait que TDD est une activité de design, on voit clairement la différence.

- - -

## 🇬🇧 Script (30–60 s)
If you really want a team to fail, you need to sell them fake TDD. Fake TDD is attractive because it is simple. But now that we know TDD is a design activity, we can clearly see the difference.

- - -

## 🎯 One-sentence message
**Red, Green, Refactor is not enough to describe real TDD.**

## 🎭 Slide objective
Deconstruct the most common caricature of TDD before revealing its genuine richness as a design practice.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #9
- "Sell fake TDD"

- - -

## 🎨 AI Image Prompt
A beautifully staged magician's table — a silk top hat and a polished wand resting on dark velvet, suggesting elegant deception. Deep dark stage background (#02111B), single dramatic warm spotlight from above, faint crimson (#BB3949) curtain edge. Style: theatrical still life, minimal, no text, 16:9.
-->

---
layout: two-cols-compare
---

# Fake TDD vs. Real TDD

::left::

## Fake TDD

- 🔴 One red test
- 🟢 One green test
- 🔵 One refactor
- **Done.**

<br>

*Missing:*
- No decomposition
- No micro-goals
- No emergent design
- Tests never refactored

::right::

## Real TDD

- 🎯 Start with an **objective**
- 📋 Break it down into micro-goals
- 🔴🟢 Move in **small steps**
- 📝 Update the plan as you learn
- 🌱 Let design **emerge**
- 🔵 Refactor **code AND tests**

<br>

*Otherwise, it's choreography — not design.*

<!--
## 🇫🇷 Script (30–60 s)
Le faux TDD dit : un test rouge, un test vert, un refactor, terminé. Le vrai TDD est beaucoup plus riche : on part d'un objectif, on le décompose, on avance par petits pas, on met à jour le plan, on laisse le design émerger, et on refactore à la fois le code et les tests. Sinon, ce qu'on obtient c'est de la chorégraphie — pas du design.

- - -

## 🇬🇧 Script (30–60 s)
Fake TDD says: one red test, one green test, one refactor, done. Real TDD is richer: you start with an objective, break it down, move in small steps, update the plan, let design emerge, and refactor both the code and the tests. Otherwise, what you get is choreography — not design.

- - -

## 🎯 One-sentence message
**Real TDD is about decomposition, emergent design, and refactoring both code and tests — not just the red-green-refactor ritual.**

## 🎭 Slide objective
Contrast fake TDD (choreography) with real TDD (design practice) so the audience can recognize which one they're doing.

## 🖥️ What to put on screen
- Left: Fake TDD (one red, one green, one refactor, done)
- Right: Real TDD (objective → decompose → small steps → update plan → emergent design → refactor code AND tests)

- - -

## 🎨 AI Image Prompt
Left: a simple clock with three crude gears — mechanical and basic. Right: a complex Swiss watch mechanism with dozens of intricate interlocking precision parts. Both on a deep dark velvet surface, warm metallic tones, dramatic macro side lighting revealing depth and craftsmanship. Style: mechanical still life comparison, no text, 16:9.
-->

---
layout: scoreboard
done: 10
transition: fade
---

<!--
## 🇫🇷 Script (30–60 s)
Dix techniques sur onze déployées. Il n'en reste plus qu'une. Et celle-là n'est pas abstraite — elle concerne directement les outils que vous utilisez aujourd'hui. Elle concerne les agents.

- - -

## 🇬🇧 Script (30–60 s)
Ten techniques out of eleven deployed. Only one remains. And this last one is not abstract — it directly concerns the tools you're using today. It concerns agents.

- - -

## 🎯 One-sentence message
**Ten out of eleven sabotage techniques complete.**

## 🎭 Slide objective
Dramatic scoreboard pause before the final technique on agents.
-->
