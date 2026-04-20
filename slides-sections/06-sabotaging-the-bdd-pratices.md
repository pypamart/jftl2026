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
**A failed Example Mapping session creates hollow specifications and therefore fragile implementations.**

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

# How to ruin an Example Mapping session

<div class="mt-4">

<v-clicks>

- ☐ Forget important business rules
- ☐ Cover only happy paths
- ☐ Write bad examples — vague, unrealistic
- ☐ Abandon business language entirely
- ☐ Run the session **without domain experts**
- ☐ Use AI alone **with no domain context**
- ☐ Let the machine fill gaps with *plausible guesses*

</v-clicks>

</div>

<v-click>

<div class="mt-6 px-4 py-3 rounded-lg bg-red-900/20 border border-red-500/20 text-sm">
  ⚠️ Plausible-but-wrong material is <strong>excellent fuel for failure</strong>.
</div>

</v-click>

<!--
## 🇫🇷 Script (30–60 s)
On peut oublier des règles importantes, couvrir uniquement les happy paths, écrire de mauvais exemples, ou abandonner complètement le langage métier. Et surtout, on peut lancer la session sans les bonnes personnes, ou avec l'IA seule sans contexte métier. Dans ce cas, le système va combler les trous avec des suppositions plausibles. Et du matériel plausible-mais-faux, c'est un excellent carburant pour l'échec.

- - -

## 🇬🇧 Script (30–60 s)
If the team starts doing good work, the right target is Example Mapping. You can forget important rules, cover only happy paths, write bad examples, or abandon business language completely. And above all, you can run the session without the right people, or with AI alone and no domain context. In that case, the system will fill the gaps with plausible guesses. And plausible-but-wrong material is excellent fuel for failure.

- - -

## 🎯 One-sentence message
**A failed Example Mapping session creates hollow specifications and therefore fragile implementations.**

## 🎭 Slide objective
Provide a concrete, recognizable checklist of bad practices that the audience will have seen before.

## 🖥️ What to put on screen
- Forget rules / Cover only happy paths / Write bad examples / Abandon business language
- Run without domain experts / Use AI alone with no context
- Let the machine fill gaps with plausible guesses
- ⚠️ Plausible-but-wrong material is excellent fuel for failure

- - -

## 🎨 AI Image Prompt
A pristine white checklist paper artifact with every checkbox marked by a bold crimson (#BB3949) X — the paper slightly crumpled at one corner, sitting on a deep dark matte surface. Strong single directional light from the right, long shadow. Style: editorial still life, dramatic contrast, no text, 16:9.
-->

---
layout: technique-card
number: 6
transition: fade
---

Write hollow Gherkin

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
- "Write hollow Gherkin"

- - -

## 🎨 AI Image Prompt
Two identical transparent vessels on a dark surface — one is a beautiful but completely empty crystal shell, the other is identical in form but filled with luminous blue (#0F9ED5) content that glows from within. Deep dark background (#02111B), bilateral symmetry, dramatic backlight. Style: conceptual product photography, no text, 16:9.
-->

---
layout: two-cols-compare
---

# Gherkin: hollow vs. rich

::left::

## Hollow Gherkin

```gherkin
Feature: Coffee

  Scenario: Order
    Given I click on "Login" button
    When I select "Latte" in
      the dropdown menu
    And I click on "Add to cart"
    And I click on "Pay now"
    Then the order_table should
      contain 1 row
```

*No context, no rules, no tags,
solution-oriented wording*

::right::

## Rich Gherkin

```gherkin
# Ref: LOYALTY-42 — Discount rules
# Owner: @product-cafe
@loyalty @pricing @sprint-12
Feature: Loyalty discount on
  coffee orders
  Returning customers with a
  loyalty card receive a 10%
  discount after their 10th
  purchase.

  Scenario: Loyal customer gets
    a discount after 10 purchases
    Given a customer who completed
      10 previous orders
    When they order a "Caffè Latte"
      priced at €4.50
    Then the total should be €4.05
```

*Tags, refs, business language,
meaningful scenarios*

<!--
## 🇫🇷 Script (30–60 s)
À gauche, un Gherkin creux : du wording technique orienté solution, sans contexte, sans tags, sans commentaires, sans liens vers la documentation de référence. On a l'apparence de la rigueur — mais pas la substance. À droite, un bon Gherkin moderne qui peut devenir un véritable artefact de travail. Des commentaires, des tags, des liens vers la doc de référence, des scénarios cohérents et des exemples pertinents. Ce n'est plus un brouillon de test. C'est une spécification exploitable — à la fois par l'équipe et par l'IA.

- - -

## 🇬🇧 Script (30–60 s)
On the left, hollow Gherkin: solution-oriented technical wording, no context, no tags, no comments, no links to reference documentation. We have the appearance of rigor — but not the substance. On the right, good modern Gherkin that can become a real working artifact: comments, tags, reference links, coherent scenarios, relevant examples. At that point, you no longer have a rough testing draft. You have a specification the team can actually use — and that AI can also exploit effectively.

- - -

## 🎯 One-sentence message
**Good Gherkin is not an empty test script — it is a working artifact useful to both humans and AI.**

## 🎭 Slide objective
Make the qualitative difference visceral with a real before/after code example the audience can feel.

## 🖥️ What to put on screen
- Left (hollow): solution-oriented Gherkin with no context, no tags, no comments
- Right (rich): feature with tags, comments, business language, reference, meaningful scenario

- - -

## 🎨 AI Image Prompt
Split composition — left side shows a thin, fragile wireframe structure with empty voids visible through it (hollow), right side shows the same form but richly filled with glowing interconnected nodes and data streams. Deep navy (#2D354B) background, left desaturated, right vibrant blue (#0F9ED5). Style: abstract architectural comparison, no text, 16:9.
-->
