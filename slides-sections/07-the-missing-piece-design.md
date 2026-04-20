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
-->

---
layout: technique-card
number: 8
transition: fade
---

Flatten BDD / ATDD / TDD

<!--
## 🇫🇷 Script (30–60 s)
Maintenant qu'on a vu que le design est structuré en couches — comme le modèle C4 — et que l'ATDD et le TDD sont des activités de conception au niveau Composant et Code, regardons la confusion la plus séduisante : présenter BDD, ATDD et TDD comme de simples variantes d'une seule idée — commencer par un test. C'est exactement ce qui arrive quand on saute le design.

- - -

## 🇬🇧 Script (30–60 s)
Now that we have seen that design is layered — like the C4 model — and that ATDD and TDD are design activities at the Component and Code levels, let us look at the most seductive confusion: presenting BDD, ATDD, and TDD as just variants of one single idea — start with a test. This is exactly what happens when you skip design.

- - -

## 🎯 One-sentence message
**When you reduce everything to 'test first,' you throw away all the upstream design value.**

## 🎭 Slide objective
Introduce the most modern and seductive confusion — flattening three distinct practices into one — now grounded in the design context we just established.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #8
- "Flatten BDD / ATDD / TDD"
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
