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

<div class="agents-fail-grid">

  <div class="col-left">
    <div class="col-label col-label-blue anim-fade-in" style="animation-delay:.08s">Input Quality Gaps</div>
    <div class="gap-items">
      <div class="gap-item anim-slide-in" style="animation-delay:.20s"><span class="item-num">01</span><span class="item-text">Vague requirements — no specifications</span></div>
      <div class="gap-item anim-slide-in" style="animation-delay:.38s"><span class="item-num">02</span><span class="item-text">Missing design decisions</span></div>
      <div class="gap-item anim-slide-in" style="animation-delay:.56s"><span class="item-num">03</span><span class="item-text">No shared understanding</span></div>
      <div class="gap-item anim-slide-in" style="animation-delay:.74s"><span class="item-num">04</span><span class="item-text">Implicit interfaces</span></div>
      <div class="gap-item anim-slide-in" style="animation-delay:.92s"><span class="item-num">05</span><span class="item-text">Anemic specifications &amp; examples</span></div>
      <div class="gap-item anim-slide-in" style="animation-delay:1.10s"><span class="item-num">06</span><span class="item-text">Confused test levels</span></div>
    </div>
  </div>

  <div class="col-center">
    <div class="agent-node anim-pop-in" style="animation-delay:1.35s">
      <div class="agent-line-h"></div>
      <div class="agent-arrow">▶</div>
      <div class="agent-box">
        <div class="agent-icon">🤖</div>
        <div class="agent-label">Agent</div>
      </div>
      <div class="agent-line-h"></div>
      <div class="agent-arrow">▶</div>
    </div>
  </div>

  <div class="col-right">
    <div class="col-label col-label-amber anim-fade-in" style="animation-delay:1.60s">Output Risk Profile</div>
    <div class="output-card anim-slide-in-right" style="animation-delay:1.75s">
      <div class="output-row output-row-amber">
        <div class="output-tag">Characteristic</div>
        <div class="output-value output-value-amber">Plausible appearance</div>
      </div>
      <div class="output-row output-row-red">
        <div class="output-tag">Risk</div>
        <div class="output-value output-value-red">Structural fragility</div>
      </div>
    </div>
    <div class="output-note anim-fade-in" style="animation-delay:2.05s">
      Agents do their best with what we give them.<br>The failure is upstream.
    </div>
  </div>

</div>

<style>
.agents-fail-grid {
  display: grid;
  grid-template-columns: 5fr auto 4fr;
  align-items: stretch;
  margin-top: 1.25rem;
}
.col-left {
  padding-right: 2rem;
  border-right: 1px solid rgba(255,255,255,.10);
}
.col-label {
  font-size: 10px;
  font-weight: 700;
  letter-spacing: .2em;
  text-transform: uppercase;
  margin-bottom: .75rem;
  padding-bottom: .5rem;
  border-bottom: 1px solid;
}
.col-label-blue { color: rgba(96,165,250,.60); border-color: rgba(96,165,250,.15); }
.col-label-amber { color: rgba(251,191,36,.60); border-color: rgba(251,191,36,.15); }
.gap-items { display: flex; flex-direction: column; gap: 5px; }
.gap-item {
  display: flex; align-items: center; gap: .75rem;
  padding: 7px .75rem;
  border-left: 2px solid rgba(239,68,68,.50);
  background: rgba(239,68,68,.05);
}
.item-num {
  color: rgba(248,113,113,.50); font-size: 10px; font-weight: 700;
  width: 1rem; flex-shrink: 0; font-variant-numeric: tabular-nums;
}
.item-text { font-size: 13px; color: rgba(255,255,255,.70); line-height: 1.35; }
.col-center { display: flex; flex-direction: column; align-items: center; justify-content: center; padding: 0 .5rem; }
.agent-node { display: flex; flex-direction: row; align-items: center; gap: 4px; }
.agent-line-h { height: 1px; width: 1.25rem; background: rgba(255,255,255,.10); }
.agent-box {
  padding: .75rem; border: 1px solid rgba(255,255,255,.10);
  background: rgba(255,255,255,.05); border-radius: 2px;
  text-align: center; width: 4rem;
}
.agent-icon { font-size: 1.25rem; line-height: 1; }
.agent-label { font-size: 9px; color: rgba(255,255,255,.35); font-weight: 700; letter-spacing: .15em; text-transform: uppercase; margin-top: 6px; }
.agent-arrow { color: rgba(255,255,255,.20); font-size: 12px; }
.col-right { padding-left: .5rem; display: flex; flex-direction: column; justify-content: center; }
.output-card { border: 1px solid rgba(245,158,11,.20); border-radius: 2px; overflow: hidden; }
.output-row { padding: .75rem 1rem; }
.output-row-amber { background: rgba(245,158,11,.10); border-bottom: 1px solid rgba(245,158,11,.15); }
.output-row-red { background: rgba(239,68,68,.05); }
.output-tag { font-size: 9px; font-weight: 700; letter-spacing: .15em; text-transform: uppercase; margin-bottom: 4px; color: rgba(200,150,50,.55); }
.output-value { font-size: 14px; font-weight: 600; }
.output-value-amber { color: rgba(253,230,138,.80); }
.output-value-red { color: rgba(252,165,165,.80); }
.output-note { margin-top: 1rem; font-size: 11px; color: rgba(255,255,255,.30); font-style: italic; line-height: 1.6; }

/* Animations */
@keyframes fade-in { from { opacity:0 } to { opacity:1 } }
@keyframes slide-in { from { opacity:0; transform:translateX(-12px) } to { opacity:1; transform:translateX(0) } }
@keyframes slide-in-right { from { opacity:0; transform:translateX(14px) } to { opacity:1; transform:translateX(0) } }
@keyframes pop-in { from { opacity:0; transform:scale(.75) } to { opacity:1; transform:scale(1) } }

.anim-fade-in { animation: fade-in .3s ease-out both; }
.anim-slide-in { animation: slide-in .34s ease-out both; }
.anim-slide-in-right { animation: slide-in-right .38s ease-out both; }
.anim-pop-in { animation: pop-in .4s ease-out both; }
</style>

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
- Three-column diagnostic framework: Input Quality Gaps (01–06) → Agent → Output Risk Profile
- Automatic staggered reveal on slide enter (CSS animation-delay, no click required)
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