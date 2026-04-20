---
layout: scoreboard
done: 11
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
-->

---
layout: info-cards
---

# AI delegation framework

<div class="aidf-subtitle anim-aidf-0">
  What do we delegate, on what basis,<br>and with which guardrails?
</div>

<div class="aidf-cards">

<div class="aidf-card anim-aidf-1">
  <div class="aidf-num">01</div>
  <div class="aidf-title">Context<br>engineering</div>
  <div class="aidf-desc">Enrich what AI receives before it acts</div>
</div>

<div class="aidf-card anim-aidf-2">
  <div class="aidf-num">02</div>
  <div class="aidf-title">Harness<br>engineering</div>
  <div class="aidf-desc">Design control structures around AI outputs</div>
</div>

<div class="aidf-card anim-aidf-3">
  <div class="aidf-num">03</div>
  <div class="aidf-title">Automatable<br>checks</div>
  <div class="aidf-desc">Let machines verify machine-generated outputs</div>
</div>

<div class="aidf-card anim-aidf-4">
  <div class="aidf-num">04</div>
  <div class="aidf-title">Human<br>choices</div>
  <div class="aidf-desc">Reserve judgment where accountability cannot be delegated</div>
</div>

</div>

<div class="aidf-callout anim-aidf-5">
  The question is not <em>"should we use AI?"</em> — it's already here.<br>
  The question is: <strong>what do we choose to preserve?</strong>
</div>

<style>
.aidf-subtitle {
  margin-top: .25rem;
  font-size: 1.5rem;
  font-weight: 700;
  color: #fff;
  line-height: 1.35;
}
.aidf-cards {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1rem;
  margin-top: 1.5rem;
}
.aidf-card {
  display: flex;
  flex-direction: column;
  gap: .75rem;
  border: 1px solid rgba(255,255,255,.10);
  border-top: 2px solid rgba(15,158,213,.60);
  border-radius: .75rem;
  padding: 1.25rem;
  background: rgba(255,255,255,.04);
}
.aidf-num {
  color: #0F9ED5;
  font-size: .75rem;
  font-weight: 700;
  letter-spacing: .15em;
}
.aidf-title {
  font-size: 1rem;
  font-weight: 700;
  line-height: 1.25;
}
.aidf-desc {
  font-size: .875rem;
  color: rgba(255,255,255,.55);
  line-height: 1.4;
  margin-top: auto;
}
.aidf-callout {
  margin-top: 1.25rem;
  padding: .75rem 1rem;
  border-left: 4px solid #0F9ED5;
  background: rgba(15,158,213,.06);
  font-size: .875rem;
  color: rgba(255,255,255,.80);
  line-height: 1.55;
}
.aidf-callout strong { color: #fff; }

@keyframes aidf-fade-up {
  from { opacity: 0; transform: translateY(14px); }
  to   { opacity: 1; transform: translateY(0); }
}
@keyframes aidf-fade-in {
  from { opacity: 0; }
  to   { opacity: 1; }
}

.anim-aidf-0 { animation: aidf-fade-in  .35s ease-out .10s both; }
.anim-aidf-1 { animation: aidf-fade-up  .38s ease-out .35s both; }
.anim-aidf-2 { animation: aidf-fade-up  .38s ease-out .60s both; }
.anim-aidf-3 { animation: aidf-fade-up  .38s ease-out .85s both; }
.anim-aidf-4 { animation: aidf-fade-up  .38s ease-out 1.10s both; }
.anim-aidf-5 { animation: aidf-fade-in  .40s ease-out 1.45s both; }
</style>

<!--
## 🇫🇷 Script (30–60 s)
En fin de compte, la vraie question n'est pas de savoir si on doit utiliser l'IA. Elle est déjà là. La vraie question est : qu'est-ce qu'on choisit de déléguer, à partir de quelle base, et avec quels garde-fous ? On peut enrichir le contexte, concevoir des harnais de contrôle, et automatiser beaucoup de validations. Mais ça ne fonctionne que si on sait ce qu'on essaie de préserver.

- - -

## 🇬🇧 Script (30–60 s)
In the end, the real question is not whether we should use AI. It is already here. The real question is: what do we choose to delegate, from what foundation, and with which guardrails? We can enrich the context, design control harnesses, and automate many validations. But that only works if we know what we are trying to preserve.

- - -

## 🎯 One-sentence message
**The real question is not 'should we use AI?' but 'what do we delegate, on what basis, and with which guardrails?'**

## 🎭 Slide objective
Bring the talk back to the core delegation decision with a constructive, actionable frame.

## 🖥️ What to put on screen
- Context engineering / Harness engineering / Automatable checks / Human choices still required
- "The question is not 'should we use AI?' — it's already here. The question is: what do we choose to preserve?"
-->

---

# Our role tomorrow

<div class="ort-wrap">

  <div class="ort-amplifier anim-ort-0">
    <div class="ort-amp-label">AI is an amplifier — not a corrector</div>
    <div class="ort-amp-tracks">
      <div class="ort-amp-track ort-amp-track--good">
        <div class="ort-amp-input">Strong specs · shared understanding · clear design</div>
        <div class="ort-amp-op">
          <span class="ort-times">×</span>
          <span class="ort-ai-badge">AI</span>
        </div>
        <div class="ort-amp-arrow">→</div>
        <div class="ort-amp-output ort-amp-output--good">Accelerated value</div>
      </div>
      <div class="ort-amp-divider"></div>
      <div class="ort-amp-track ort-amp-track--bad">
        <div class="ort-amp-input">Vague requirements · no design · confusion</div>
        <div class="ort-amp-op">
          <span class="ort-times">×</span>
          <span class="ort-ai-badge">AI</span>
        </div>
        <div class="ort-amp-arrow">→</div>
        <div class="ort-amp-output ort-amp-output--bad">Accelerated failure</div>
      </div>
    </div>
  </div>

  <div class="ort-roles">
    <div class="ort-role anim-ort-1">
      <div class="ort-role-num">01</div>
      <div class="ort-role-body">
        <div class="ort-role-title">Specification integrity</div>
        <div class="ort-role-desc">The raw material AI executes — quality here multiplies downstream</div>
      </div>
    </div>
    <div class="ort-role anim-ort-2">
      <div class="ort-role-num">02</div>
      <div class="ort-role-body">
        <div class="ort-role-title">Collective intelligence</div>
        <div class="ort-role-desc">Business · Test · Dev aligned — shared understanding no machine can replace</div>
      </div>
    </div>
    <div class="ort-role anim-ort-3">
      <div class="ort-role-num">03</div>
      <div class="ort-role-body">
        <div class="ort-role-title">Design authority</div>
        <div class="ort-role-desc">Trade-offs, architecture, test strategy — decisions that shape everything downstream</div>
      </div>
    </div>
    <div class="ort-role anim-ort-4">
      <div class="ort-role-num">04</div>
      <div class="ort-role-body">
        <div class="ort-role-title">System comprehension</div>
        <div class="ort-role-desc">You must understand what you build — driving blind is dangerous at any speed</div>
      </div>
    </div>
  </div>

  <div class="ort-footer anim-ort-5">
    The teams that win with AI are those who bring <strong>better thinking</strong> — not less.<br>
    <span class="ort-footer-sub">In a spec-driven world, your human judgment is the only variable left.</span>
  </div>

</div>

<style>
.ort-wrap {
  display: flex;
  flex-direction: column;
  gap: .875rem;
  padding-top: .125rem;
}

/* ── Amplifier block ── */
.ort-amplifier {
  border: 1px solid rgba(255,255,255,.09);
  border-radius: .75rem;
  padding: .875rem 1.25rem;
  background: rgba(255,255,255,.025);
}
.ort-amp-label {
  font-size: .75rem;
  font-weight: 700;
  letter-spacing: .12em;
  text-transform: uppercase;
  color: rgba(255,255,255,.35);
  margin-bottom: .625rem;
}
.ort-amp-tracks {
  display: flex;
  flex-direction: column;
  gap: 0;
}
.ort-amp-track {
  display: flex;
  align-items: center;
  gap: .875rem;
  padding: .4rem 0;
}
.ort-amp-divider {
  height: 1px;
  background: rgba(255,255,255,.07);
  margin: .1rem 0;
}
.ort-amp-input {
  flex: 1;
  font-size: .8rem;
  color: rgba(255,255,255,.5);
  font-style: italic;
}
.ort-amp-op {
  display: flex;
  align-items: center;
  gap: .3rem;
}
.ort-times {
  font-size: 1rem;
  font-weight: 700;
  color: rgba(255,255,255,.25);
}
.ort-ai-badge {
  font-size: .65rem;
  font-weight: 800;
  letter-spacing: .1em;
  padding: .15rem .45rem;
  border-radius: .3rem;
  background: rgba(15,158,213,.2);
  border: 1px solid rgba(15,158,213,.45);
  color: #0F9ED5;
}
.ort-amp-arrow {
  color: rgba(255,255,255,.2);
  font-size: .9rem;
}
.ort-amp-output {
  font-size: .875rem;
  font-weight: 700;
  min-width: 10.5rem;
  text-align: right;
}
.ort-amp-output--good { color: #4ade80; }
.ort-amp-output--bad  { color: #f87171; }

/* ── Role grid ── */
.ort-roles {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: .625rem;
}
.ort-role {
  display: flex;
  align-items: flex-start;
  gap: .875rem;
  padding: .875rem 1rem;
  border: 1px solid rgba(255,255,255,.07);
  border-top: 2px solid rgba(15,158,213,.55);
  border-radius: .625rem;
  background: rgba(255,255,255,.025);
}
.ort-role-num {
  font-size: .65rem;
  font-weight: 800;
  letter-spacing: .12em;
  color: #0F9ED5;
  padding-top: .1rem;
  flex-shrink: 0;
}
.ort-role-title {
  font-size: .875rem;
  font-weight: 700;
  line-height: 1.3;
  margin-bottom: .25rem;
}
.ort-role-desc {
  font-size: .75rem;
  color: rgba(255,255,255,.48);
  line-height: 1.45;
}

/* ── Footer callout ── */
.ort-footer {
  padding: .625rem 1rem;
  border-left: 3px solid #0F9ED5;
  background: rgba(15,158,213,.06);
  border-radius: 0 .4rem .4rem 0;
  font-size: .825rem;
  color: rgba(255,255,255,.75);
  line-height: 1.6;
}
.ort-footer strong { color: #fff; }
.ort-footer-sub {
  font-size: .75rem;
  color: rgba(255,255,255,.4);
  font-style: italic;
}

/* ── Animations ── */
@keyframes ort-fade-up {
  from { opacity: 0; transform: translateY(12px); }
  to   { opacity: 1; transform: translateY(0); }
}
@keyframes ort-fade-in {
  from { opacity: 0; }
  to   { opacity: 1; }
}
.anim-ort-0 { animation: ort-fade-up .45s ease-out .08s both; }
.anim-ort-1 { animation: ort-fade-up .38s ease-out .40s both; }
.anim-ort-2 { animation: ort-fade-up .38s ease-out .60s both; }
.anim-ort-3 { animation: ort-fade-up .38s ease-out .80s both; }
.anim-ort-4 { animation: ort-fade-up .38s ease-out 1.00s both; }
.anim-ort-5 { animation: ort-fade-in .45s ease-out 1.30s both; }
</style>

<!--
## 🇫🇷 Script (30–60 s)
Pour conclure : notre rôle demain n'est pas de résister à l'IA — c'est de lui donner de meilleure matière à travailler. L'IA est un amplificateur. Elle décuple les bonnes choses comme les mauvaises. Des specs solides multipliées par l'IA donnent une valeur accélérée. De la confusion multipliée par l'IA donne une défaillance accélérée. Notre rôle, c'est donc d'être les garants de l'intégrité des spécifications, de l'intelligence collective, des décisions de design — et de continuer à comprendre ce qu'on construit. Dans un monde spec-driven, notre jugement humain est la seule variable qui reste.

- - -

## 🇬🇧 Script (30–60 s)
To close: our role tomorrow is not to resist AI — it's to give it better material to work with. AI is an amplifier. It multiplies the good as much as the bad. Strong specs multiplied by AI give accelerated value. Confusion multiplied by AI gives accelerated failure. Our role is therefore to be the guardians of specification integrity, collective intelligence, design decisions — and to keep understanding what we are building. In a spec-driven world, our human judgment is the only variable left.

- - -

## 🎯 One-sentence message
**AI amplifies everything — good and bad. In a spec-driven world, human judgment becomes the only variable that matters.**

## 🎭 Slide objective
End with maximum strategic impact: reframe the whole talk as a multiplier argument, and land human responsibility as the inevitable conclusion.

## 🖥️ What to put on screen
- Amplifier equation: strong specs × AI → accelerated value / confusion × AI → accelerated failure
- 01 Specification integrity / 02 Collective intelligence / 03 Design authority / 04 System comprehension
- "The teams that win with AI are those who bring better thinking — not less."
-->

---
layout: end-credits
---

The sabotage was ironic. **The challenge is deeply collective.**

<div class="mt-8 flex justify-center gap-16">
  <div class="flex flex-col items-center">
    <div class="w-32 h-32 bg-white rounded-xl p-2 shadow-lg shadow-blue-500/10 mb-3 overflow-hidden">
      <img src="/qrcode_slides.png" class="w-full h-full !m-0 object-contain" alt="QR Code Slides" />
    </div>
    <div class="text-xs tracking-widest uppercase text-white/40 mb-1">Slides & source</div>
    <a href="https://github.com/pypamart/jftl2026" target="_blank" class="text-sm text-[#0F9ED5] hover:underline font-medium flex items-center gap-1.5">
      <svg class="w-4 h-4 inline-block" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0 0 24 12c0-6.63-5.37-12-12-12z"/></svg>
      github.com/pypamart/jftl2026
    </a>
  </div>
  <div class="w-px bg-white/10 self-stretch" />
  <div class="flex flex-col items-center">
    <div class="w-32 h-32 bg-white rounded-xl p-2 shadow-lg shadow-blue-500/10 mb-3 overflow-hidden">
      <img src="/qrcode_linkedin.png" class="w-full h-full !m-0 object-contain" alt="QR Code LinkedIn" />
    </div>
    <div class="text-xs tracking-widest uppercase text-white/40 mb-1">Let's connect</div>
    <a href="https://www.linkedin.com/in/pierre-yves-pamart/" target="_blank" class="text-sm text-[#0F9ED5] hover:underline font-medium flex items-center gap-1.5">
      <svg class="w-4 h-4 inline-block" viewBox="0 0 24 24" fill="currentColor"><path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433a2.062 2.062 0 0 1-2.063-2.065 2.064 2.064 0 1 1 2.063 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/></svg>
      Pierre-Yves Pamart
    </a>
  </div>
</div>

<div class="mt-10 text-lg text-white/50 tracking-wide">Questions?</div>

<!--
## 🇫🇷 Script (30–60 s)
Merci beaucoup. J'espère que ce voyage délibérément absurde était divertissant, mais surtout qu'il vous a donné un cadre plus clair sur ce que nous confondons actuellement autour du BDD, de l'ATDD, du TDD, de l'IA et du Spec-Driven Development. Ces confusions coûtent cher — en qualité, en confiance, et en valeur livrée. Et maintenant, je serai très heureux de prendre vos questions.

- - -

## 🇬🇧 Script (30–60 s)
Thank you very much. I hope this deliberately absurd journey was entertaining, but above all that it gave you a clearer frame for what we currently confuse around BDD, ATDD, TDD, AI, and Spec-Driven Development. These confusions are costly — in quality, in trust, and in delivered value. And now, I'd be very happy to take your questions.

- - -

## 🎯 One-sentence message
**The sabotage was ironic; the challenge itself is deeply collective.**

## 🎭 Slide objective
Close cleanly, warmly reopen the conversation, and give the audience the QR code.

## 🖥️ What to put on screen
- Thank you / QR codes (GitHub + LinkedIn)
- "The sabotage was ironic. The challenge is deeply collective."
- Questions?
-->
