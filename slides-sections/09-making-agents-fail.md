---
layout: technique-card
number: 10
transition: fade
---

Feed garbage to agents

<!--
## 🇫🇷 Script (30–60 s)
Aujourd'hui, on délègue de plus en plus aux agents. Mais les faire échouer n'a rien d'exotique : il suffit de leur donner un mauvais plan. Et nous venons de passer dix techniques à construire exactement ce mauvais plan.

- - -

## 🇬🇧 Script (30–60 s)
Today we delegate more and more to agents. But making them fail is not exotic at all: just give them a bad plan. And we have just spent ten techniques building exactly that bad plan.

- - -

## 🎯 One-sentence message
**Agents rarely fail because they are 'stupid'; they mostly fail because we feed them poor working material.**

## 🎭 Slide objective
Complete the sabotage arc by explicitly connecting all previous human mistakes to AI-system failures.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #10
- "Feed garbage to agents"
-->

---

# How agents actually fail

<div class="mt-4 flex items-center justify-center gap-4">

<div class="grid grid-cols-2 gap-2 text-sm">
  <v-click>
  <div class="px-3 py-2 rounded-lg bg-red-900/20 border border-red-500/20">
    ❌ Vague requirements, no specs
  </div>
  </v-click>
  <v-click>
  <div class="px-3 py-2 rounded-lg bg-red-900/20 border border-red-500/20">
    ❌ Missing design decisions
  </div>
  </v-click>
  <v-click>
  <div class="px-3 py-2 rounded-lg bg-red-900/20 border border-red-500/20">
    ❌ No shared understanding
  </div>
  </v-click>
  <v-click>
  <div class="px-3 py-2 rounded-lg bg-red-900/20 border border-red-500/20">
    ❌ Implicit interfaces
  </div>
  </v-click>
  <v-click>
  <div class="px-3 py-2 rounded-lg bg-red-900/20 border border-red-500/20">
    ❌ Anemic specs & examples
  </div>
  </v-click>
  <v-click>
  <div class="px-3 py-2 rounded-lg bg-red-900/20 border border-red-500/20">
    ❌ Confused test levels
  </div>
  </v-click>
</div>

<v-click>
<div class="text-3xl text-white/30 mx-2">→</div>
</v-click>

<v-click>
<div class="px-6 py-4 rounded-xl bg-white/5 border border-white/15 text-center">
  <div class="text-lg">🤖</div>
  <div class="text-sm font-semibold mt-1">Agent</div>
</div>
</v-click>

<v-click>
<div class="text-3xl text-white/30 mx-2">→</div>
</v-click>

<v-click>
<div class="px-6 py-4 rounded-xl bg-yellow-900/20 border border-yellow-500/30 text-center">
  <div class="text-sm font-semibold text-yellow-300">Plausible</div>
  <div class="text-sm font-semibold text-red-300">but fragile</div>
  <div class="text-xs text-white/40 mt-1">output</div>
</div>
</v-click>

</div>

<!--
## 🇫🇷 Script (30–60 s)
Si les exigences restent vagues, le design absent, la compréhension non partagée, les interfaces implicites, les spécifications anémiques et les niveaux de test confondus — les agents vont produire du résultat plausible mais fragile. Ils ne sont pas stupides — ils font de leur mieux avec ce qu'on leur donne. Le vrai levier, ce n'est pas juste le prompt ; c'est la qualité du matériel qu'on transmet.

- - -

## 🇬🇧 Script (30–60 s)
If requirements stay vague, design is absent, understanding is not shared, interfaces remain implicit, specs are anemic, and test levels are confused — agents will produce plausible but fragile output. They are not stupid — they do their best with what we give them. So the real leverage is not just the prompt; it is the quality of the material we hand over.

- - -

## 🎯 One-sentence message
**Agents fail when they inherit our methodological shortcuts — vague requirements, missing design, anemic specs, confused test levels — producing output that is plausible but fragile.**

## 🎭 Slide objective
Make the connection between human methodological failures and AI output quality explicit and concrete.

## 🖥️ What to put on screen
- Inputs: ❌ Vague requirements, no specs / ❌ Missing design decisions / ❌ No shared understanding / ❌ Implicit interfaces / ❌ Anemic specs & examples / ❌ Confused test levels
- → 🤖 Agent → Plausible but fragile output
-->

---
layout: big-statement
---

The real leverage is not the prompt.

It's the *quality of the material* we hand over.

<!--
## 🇫🇷 Script (30–60 s)
Donc la vraie question n'est pas « est-ce que l'IA est bonne ? » mais « est-ce qu'on lui donne du bon matériel ? ». Et tout ce qu'on a vu aujourd'hui — les confusions, les sabotages, les raccourcis — c'est exactement ce qui produit du mauvais matériel. La boucle est bouclée.

- - -

## 🇬🇧 Script (30–60 s)
So the real question is not "is the AI good?" but "are we giving it good material?" And everything we have seen today — the confusions, the sabotages, the shortcuts — is exactly what produces bad material. The loop is closed.

- - -

## 🎯 One-sentence message
**The real leverage is not the prompt — it is the quality of the material we hand over.**

## 🎭 Slide objective
Land the "everything connects" insight as a quiet, powerful closing beat before the conclusion.

## 🖥️ What to put on screen
- "The real leverage is not the prompt."
- "It's the quality of the material we hand over."
-->