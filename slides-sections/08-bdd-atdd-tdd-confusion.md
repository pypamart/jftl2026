---
layout: technique-card
number: 8
transition: fade
---

Flatten BDD / ATDD / TDD

<!--
## 🇫🇷 Script (30–60 s)
On arrive maintenant à une confusion très moderne : présenter BDD, ATDD et TDD comme de simples variantes d'une seule idée — commencer par un test. C'est séduisant, c'est simple, et c'est profondément réducteur. Regardons pourquoi.

- - -

## 🇬🇧 Script (30–60 s)
We now reach a very modern confusion: presenting BDD, ATDD, and TDD as just variants of one single idea — start with a test. It sounds simple and attractive, but it is deeply reductive. Let's look at why.

- - -

## 🎯 One-sentence message
**When you reduce everything to 'test first,' you throw away all the upstream value.**

## 🎭 Slide objective
Introduce the most modern and seductive confusion — flattening three distinct practices into one.

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
  The moment you do that, you erase discovery, formulation, business rules, trade-offs, and <em>design</em>.
</div>

</div>

<!--
## 🇫🇷 Script (30–60 s)
Le moment où on fait ça, on efface toute la phase amont : découverte, formulation, règles métier, arbitrages et design. Ce n'est pas un raccourci innocent. C'est une amputation. On garde la chorégraphie et on abandonne la réflexion.

- - -

## 🇬🇧 Script (30–60 s)
The moment you do that, you erase the entire upstream phase: discovery, formulation, business rules, trade-offs, and design. This is not an innocent shortcut. It is an amputation. You keep the choreography and abandon the thinking.

- - -

## 🎯 One-sentence message
**When you reduce everything to 'test first,' you throw away all the upstream value.**

## 🎭 Slide objective
Make the flattening visible as a deliberate destructive act, not just a minor simplification.

## 🖥️ What to put on screen
- BDD · ATDD · TDD / ▼ flatten everything ▼
- "Just start with a test, right?"
- Consequence: discovery, formulation, business rules, trade-offs, and design disappear

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
  ← Design flows through both loops →
</div>

</div>
</div>

<!--
## 🇫🇷 Script (30–60 s)
Le modèle qui aide vraiment ici, c'est la double boucle. Une boucle externe clarifie ce que le système devrait faire. Une boucle interne construit la solution proprement, un petit pas à la fois, en utilisant TDD. Le TDD n'épuise pas la réflexion ; il l'incarne à un niveau de granularité différent. Et le design traverse le système entier.

- - -

## 🇬🇧 Script (30–60 s)
The model that really helps here is the double loop. An outer loop clarifies what the system should do. An inner loop builds the solution cleanly, one small step at a time, using TDD. TDD does not exhaust the thinking; it embodies the thinking at a different level of granularity. And design moves through the whole system.

- - -

## 🎯 One-sentence message
**There is an outer acceptance loop for expected behavior and an inner TDD loop to build the solution cleanly.**

## 🎭 Slide objective
Give the audience a simple, memorable mental model that corrects the flattening — and shows how design permeates both loops.

## 🖥️ What to put on screen
- Two concentric loops: Outer = Acceptance/BDD/ATDD (what should the system do?)
- Inner = TDD (Red → Green → Refactor)
- Design flows through both

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
Si on veut vraiment faire échouer une équipe, il faut leur vendre du faux TDD. Le faux TDD est attractif parce qu'il est simple. Permettez-moi de vous montrer la différence.

- - -

## 🇬🇧 Script (30–60 s)
If you really want a team to fail, you need to sell them fake TDD. Fake TDD is attractive because it is simple. Let me show you the difference.

- - -

## 🎯 One-sentence message
**Red, Green, Refactor is not enough to describe real TDD.**

## 🎭 Slide objective
Deconstruct the most common caricature of TDD before revealing its genuine richness.

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

*Otherwise, it's choreography — not practice.*

<!--
## 🇫🇷 Script (30–60 s)
Le faux TDD dit : un test rouge, un test vert, un refactor, terminé. Le vrai TDD est beaucoup plus riche : on part d'un objectif, on le décompose, on avance par petits pas, on met à jour le plan, on laisse le design émerger, et on refactore à la fois le code et les tests. Sinon, ce qu'on obtient c'est de la chorégraphie — pas de la pratique.

- - -

## 🇬🇧 Script (30–60 s)
Fake TDD says: one red test, one green test, one refactor, done. Real TDD is richer: you start with an objective, break it down, move in small steps, update the plan, let design emerge, and refactor both the code and the tests. Otherwise, what you get is choreography — not practice.

- - -

## 🎯 One-sentence message
**Real TDD is about decomposition, emergent design, and refactoring both code and tests — not just the red-green-refactor ritual.**

## 🎭 Slide objective
Contrast fake TDD (choreography) with real TDD (thinking practice) so the audience can recognize which one they're doing.

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
**Ten sabotage techniques deployed — only one remains, and it targets AI directly.**

## 🎭 Slide objective
Create a dramatic pause that builds maximum anticipation for the final technique, connecting everything to AI.

## 🖥️ What to put on screen
- Scoreboard at 10/11 — one technique remaining

- - -

## 🎨 AI Image Prompt
Ten illuminated crimson (#BB3949) markers in a row of eleven — the final eleventh marker pulses with a faint anticipatory blue (#0F9ED5) glow, still unlit. Deep dark background (#02111B), dramatic horizontal composition, long shadows cast behind each lit marker. Style: premium scoreboard visualization, tension and anticipation, no text, 16:9.
-->
