---
layout: technique-card
number: 3
transition: fade
---

Don't know what BDD is

<!--
## 🇫🇷 Script (30–60 s)
Une fois que l'équipe veut faire du BDD, le premier coup de sabotage est évident : recruter des gens qui ne savent même pas ce que BDD veut dire. C'est plus fréquent qu'on ne le pense. Permettez-moi de vous montrer.

- - -

## 🇬🇧 Script (30–60 s)
Once the team wants to do BDD, the first sabotage move is obvious: recruit people who do not know what BDD even stands for. It happens more often than you'd think. Let me show you.

- - -

## 🎯 One-sentence message
**We often fail a practice before practicing it, simply because we do not know what it actually means.**

## 🎭 Slide objective
Open the BDD sabotage sequence with a comic beat that conceals a serious point.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #3
- "Don't know what BDD is"
-->

---
layout: reveal-moment
---

# "BDD? You mean… Base De Données?"

The joke reveals a real issue:

many teams manipulate terms they only *half understand*.

<!--
## 🇫🇷 Script (30–60 s)
Et oui, il y a encore des gens qui pensent que BDD veut dire « base de données ». C'est drôle, mais ça révèle quelque chose de réel : beaucoup d'équipes manipulent des termes qu'elles ne comprennent qu'à moitié. Et on ne peut pas appliquer correctement ce qu'on ne comprend pas.

Et cette histoire est vécue ! En juillet dernier, pour recruter de la prestation intellectuelle. Sur 30 entretiens pour des postes où les pratiques xDD du Craft étaient explicites dans l'annonce, plus d ela moitié considéraient que le BDD, c'était la base de données.

- - -

## 🇬🇧 Script (30–60 s)
And yes, there are still people who think BDD means 'database.' It is funny, but it also reveals something real: many teams manipulate terms they only half understand. And you cannot properly apply what you do not understand.

- - -

## 🎯 One-sentence message
**We often fail a practice before practicing it, simply because we do not know what it actually means.**

## 🎭 Slide objective
Create an early comic break that reveals a real and widespread problem.

## 🖥️ What to put on screen
- "BDD? You mean… Base De Données?"
- Real misunderstanding of the acronym
- The joke reveals a real issue
-->

---
layout: technique-card
number: 4
transition: fade
---

Reduce BDD to testing

<!--
## 🇫🇷 Script (30–60 s)
Le coup de sabotage suivant est encore plus courant, et donc encore plus efficace. On va faire croire à l'équipe que le BDD, ce sont les outils. Cucumber, Gherkin, step definitions, CI — et voilà, vous faites du BDD. Spoiler : ce n'est pas du BDD.

- - -

## 🇬🇧 Script (30–60 s)
The next sabotage move is even more common — and therefore even more effective. Make the team believe that BDD is the tooling. Cucumber, Gherkin, step definitions, CI — and there you go, you're doing BDD. Spoiler: that is not BDD.

- - -

## 🎯 One-sentence message
**If you reduce BDD to Cucumber or automation, you miss the point entirely.**

## 🎭 Slide objective
Escalate the BDD sabotage — from not knowing the acronym to actively misdescribing the practice.

## 🖥️ What to put on screen
- Cinematic chapter card — SABOTAGE TECHNIQUE #4
- "Reduce BDD to testing"
-->

---

# "We do BDD!" — really?

<div class="flex items-center justify-center mt-8">
<div class="flex flex-col gap-4 text-center">

<v-click>

<div class="text-3xl">🥒 Cucumber</div>

</v-click>
<v-click>

<div class="text-2xl text-white/70">+ Gherkin syntax</div>

</v-click>
<v-click>

<div class="text-2xl text-white/70">+ Step definitions</div>

</v-click>
<v-click>

<div class="text-2xl text-white/70">+ CI automation</div>

</v-click>
<v-click>

<div class="mt-4 text-xl px-6 py-3 rounded-xl bg-red-900/30 border border-red-500/40 text-red-300 font-bold">
  ❌ This is not BDD. This is the last step of BDD or ATDD in the best case...
</div>

</v-click>

</div>
</div>

<!--
## 🇫🇷 Script (30–60 s)
Quelques fichiers Gherkin, quelques step definitions, un outil, et c'est bon. Sauf que le BDD n'est pas d'abord une pile d'outils. C'est un processus de découverte, de clarification et d'alignement. Si tout ce qu'on garde c'est la couche d'automatisation, on perd la raison même pour laquelle la pratique existe.

- - -

## 🇬🇧 Script (30–60 s)
A few Gherkin files, a few step definitions, a tool, and done. Except BDD is not primarily a tooling stack. It is a process for discovery, clarification, and alignment. If all you keep is the automation layer, you lose the very reason the practice exists.

- - -

## 🎯 One-sentence message
**If you reduce BDD to Cucumber or automation, you miss the point entirely.**

## 🎭 Slide objective
Visually deconstruct the common tooling-only view of BDD, then land the correction.

## 🖥️ What to put on screen
- Cucumber / Gherkin syntax / Step definitions / CI automation
- ❌ "This is not BDD. This is the last step of BDD."
-->

---
clicks: 2
---

# What BDD really is

<div class="relative h-[78%] mt-4">

  <!-- Divider: reveals once thumbnails appear in col 1 -->
  <div
    class="absolute top-0 bottom-0 border-l border-white/10 transition-opacity duration-700"
    style="left: 33%;"
    :style="{ opacity: $clicks >= 1 ? 1 : 0 }"
  />

  <!-- bddbooks.png — starts full in col 2, glides to col 1 top at click 1 -->
  <img
    src="/bddbooks.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    :style="{
      left:   $clicks >= 1 ? '0%'  : '33%',
      top:    '0%',
      width:  $clicks >= 1 ? '31%' : '67%',
      height: $clicks >= 1 ? '44%' : '74%',
    }"
  />

  <!-- bddbooks-bdd-what-is-bdd.png — fades in at col 2 on click 1, glides to col 1 bottom at click 2 -->
  <img
    src="/bddbooks-bdd-what-is-bdd.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    :style="{
      left:    $clicks >= 2 ? '0%'  : '33%',
      top:     $clicks >= 2 ? '50%' : '0%',
      width:   $clicks >= 2 ? '31%' : '67%',
      height:  $clicks >= 2 ? '44%' : '74%',
      opacity: $clicks >= 1 ? 1 : 0,
    }"
  />

  <!-- bddbooks-bdd-process.png — fades in at col 2 on click 2 -->
  <img
    src="/bddbooks-bdd-process.png"
    class="absolute object-contain transition-all duration-700 ease-in-out"
    style="left: 33%; top: 0%; width: 67%; height: 74%;"
    :style="{ opacity: $clicks >= 2 ? 1 : 0 }"
  />

  <!-- Citation: Fig. 5 — visible at click 1 only -->
  <p
    class="absolute transition-opacity duration-500 text-[0.58rem] leading-snug text-white/40 italic"
    style="left: 35%; bottom: 0; width: 63%;"
    :style="{ opacity: $clicks === 1 ? 1 : 0 }"
  >
    Rose, S. &amp; Nagy, G. (2020). <em>Discovery: Explore Behaviour Using Examples</em>. Leanpub. Fig. 5 — BDD practices.
  </p>

  <!-- Citation: Fig. 22 — visible from click 2 -->
  <p
    class="absolute transition-opacity duration-500 text-[0.58rem] leading-snug text-white/40 italic"
    style="left: 35%; bottom: 0; width: 63%;"
    :style="{ opacity: $clicks >= 2 ? 1 : 0 }"
  >
    Rose, S. &amp; Nagy, G. (2020). <em>Discovery: Explore Behaviour Using Examples</em>. Leanpub. Fig. 22 — Tasks and activities in the BDD approach.
  </p>

</div>

<!--
## 🇫🇷 Script

### Affichage initial — les couvertures de livres apparaissent
Je vais vous expliquer ce qu'est réellement le BDD, en m'appuyant sur deux livres de référence que je vous invite tous à lire.
En général, je dis que je rembourse si vous n'êtes pas satisfaits. Je n'ai encore jamais remboursé.
Si l'anglais est problématique, je vous recommande également le livre **Software Craft** aux éditions DUNOD.
Vous retrouverez la bibliographie complète dans les liens en fin de présentation.

### Clic 1 — Schéma des trois pratiques BDD
Gaspar Nagy et Seb Rose décomposent le cycle BDD en **trois pratiques**.
Pour rappel, une pratique, c'est des méthodes accompagnées d'outils associés.

**1. Discovery** — comment avoir les bonnes discussions, structurées avec le bon niveau de collaboration,
de manière à partager une compréhension commune et surtout mettre en exergue les **règles métier**,
illustrées par des **exemples** — et attention, quand on parle d'exemples, ça inclut tous les types :
les cas passants, mais aussi les scénarios quand ça se passe mal.

**2. Formulation** — rédiger tous ces scénarios, les mettre sur papier.
Aujourd'hui, le format roi c'est le Gherkin — mais ça pourrait être autre chose.

**3. Automation** — comment automatiser des tests qui vont vérifier que le système se comporte
exactement tel que décrit dans la formulation.

Vous avez compris : Discovery et Formulation sont dans l'**espace des besoins**,
Automation est dans l'**espace des solutions**.

### Clic 2 — Schéma du process complet
Si on va un peu plus loin, voilà le process que Gaspar Nagy et Seb Rose ont formalisé.

**1.** On prend une **story**.
**2.** On organise le **Requirement Workshop** — souvent réalisé avec un atelier d'Example Mapping,
mais on peut utiliser autre chose — pour mettre en exergue les règles métier au travers d'exemples.
**3.** Les développeurs réalisent la **Formulation** en Gherkin.
**4.** La **Review** — étape vraiment importante :
ce sont les gens du métier qui vérifient que les développeurs ont bien compris le besoin.
Une fois cette étape franchie, on peut dormir sur ses deux oreilles.
Parce qu'il ne faut pas oublier : ce qui tourne en production, c'est ce que le développeur a **compris** du besoin.
Tout l'art du soft engineering, c'est comment on transfère l'information d'un cerveau A vers un cerveau B — et comment elle est modélisée pour la suite.
**5.** On entre ensuite dans la phase d'**Automation** — et là arrivent les doubles boucles :
on voit apparaître l'**ATDD** (Acceptance Test-Driven Development).
**6.** L'**implémentation** — et là vous repérerez ce qu'on appellera le **TDD cycle**.

Et vous verrez, il y a différentes boucles de feedback imbriquées.
On reviendra sur tout ça en détail, parce que l'objectif va être de voir
comment on peut venir **mettre en échec** ce process.

- - -

## 🇬🇧 Script

### Initial display — book covers appear
I'm going to explain what BDD really is, drawing on two reference books I strongly encourage you all to read.
I usually say I'll give a refund if you're not satisfied — and I have never once refunded anyone.
If English is a challenge, I also recommend the **Softwarecraft** book published by the folks at Arla.
You'll find the full bibliography in the links at the end of the presentation.

### Click 1 — The three BDD practices diagram
Gaspar Nagy and Seb Rose break the BDD cycle down into **three practices**.
A practice, remember, means methods combined with associated tools.

**1. Discovery** — how to have the right conversations, structured with the right level of collaboration,
so that you can build a shared understanding and, most importantly, surface the **business rules**
illustrated through **examples** — and when we say examples, that means all types:
the happy paths, but also the scenarios where things go wrong.

**2. Formulation** — writing down all those scenarios, putting them on paper.
Today the reigning format is Gherkin — though it could be something else.
And this is done by the developers.

**3. Automation** — how to automate the tests that verify the system actually behaves
exactly as described in the formulation.

Discovery and Formulation live in the **problem space**; Automation lives in the **solution space**.

### Click 2 — Full process diagram
Going a step further, here is the process Gaspar Nagy and Seb Rose have formalised.

**1.** Pick a **story**.
**2.** Run the **Requirement Workshop** — most often Example Mapping, but other techniques work too —
to surface business rules through concrete examples.
**3.** Developers perform the **Formulation** in Gherkin.
**4.** The **Review** — a critically important step:
the business stakeholders verify that the developers have correctly understood the requirement.
Once this step is done, you can sleep easy.
Because never forget: what runs in production is what the developer **understood** from the requirement.
The whole art of software engineering is about how information is transferred from brain A to brain B — and how it's modelled for what comes next.
**5.** Then comes the **Automation** phase — and this is where the double loops appear:
you'll see **ATDD** (Acceptance Test-Driven Development) come into play.
**6.** The **implementation** — and here you'll spot what we'll call the **TDD cycle**.

You'll notice there are several nested feedback loops.
We'll come back to all of this in more detail, because the goal is going to be to see
exactly how we can **sabotage** this process — step by step.

- - -

## 🎯 One-sentence message
**BDD is a complete chain: discuss, discover, formulate, then automate — and most teams have only ever seen the last step.**

## 🎭 Slide objective
Restore BDD's actual structure using Gaspar Nagy & Seb Rose's framework — and make the audience see what they've been missing.

## 🖥️ What to put on screen
- Book covers (bddbooks.png) → 3 practices diagram (bddbooks-bdd-what-is-bdd.png) → Full process diagram (bddbooks-bdd-process.png)
-->

---
layout: scoreboard
done: 5
transition: fade
---

<!--
## 🇫🇷 Script (30–60 s)
Faisons le point. Cinq techniques de sabotage déployées sur onze. On avance bien dans notre mission de destruction. Ce qui est intéressant, c'est qu'aucune des cinq n'a encore touché au design. Et pourtant, c'est là que se cache la pièce manquante la plus dangereuse. La suite va être intéressante.

- - -

## 🇬🇧 Script (30–60 s)
Let's take stock. Five sabotage techniques deployed out of eleven. We're making good progress in our destruction mission. What's interesting is that none of these five has touched design yet. And yet, that's where the most dangerous missing piece is hiding. What comes next is going to be interesting.

- - -

## 🎯 One-sentence message
**Five sabotage techniques deployed — and we haven't touched design yet.**

## 🎭 Slide objective
Provide a comedic breathing moment mid-talk, show progress, and build anticipation for the design gap.

## 🖥️ What to put on screen
- Sabotage progress bar at 5/11 — Techniques #0 to #4 checked
-->
