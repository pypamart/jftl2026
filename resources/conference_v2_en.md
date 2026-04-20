# A Developer Embedded with Testers: How to Make BDD, ATDD & TDD Fail — Especially in the Age of Spec-Driven Development

## Version 2 — slide-ready outline

This version is more operational: for each slide you get the objective, the core message, the suggested on-screen content, and a tighter spoken script.

---

    ## [Cover]

    **Slide objective**  
    Set the tone immediately, establish credibility, and introduce the central tension: AI is fascinating, but also disorienting.

    **One-sentence message**  
    AI is changing our craft deeply, which is exactly why misunderstandings about our practices become so dangerous.

    **What to put on screen**
    - Conference title
- Name, role, company
- A visual hook around AI or “vertigo”
- Optionally an ironic subtitle

    **Spoken script (30 to 60 seconds)**  
    Hello everyone, and thank you for the introduction. I’m genuinely happy to be here today. It’s a pleasure to speak in front of a community I truly appreciate: the testing community. When I look at everything happening around artificial intelligence, I find it both fascinating… and frankly dizzying. And it is precisely in that dizziness that many of our practices end up misunderstood, misapplied, or turned into caricatures.

---

    ## [The talk in one sentence]

    **Slide objective**  
    Make the conference promise explicit from the start.

    **One-sentence message**  
    We are going to follow a team that wants to do things well… and learn how to make it fail.

    **What to put on screen**
    - A future craft-oriented team
- AI + software quality
- Mission: ruin their approach
- Scope: requirements → validated feature

    **Spoken script (30 to 60 seconds)**  
    I’d like to use a slightly unusual format today: we are going to follow a modern, serious, craft-oriented team that wants to use AI to build quality software. And during this talk, we are going to do exactly the opposite of what they should do: we are going to try to ruin their approach. The goal is to explore everything that happens between a requirement and a feature that is actually developed and validated.

---

    ## [Warning]

    **Slide objective**  
    Create a safe frame for humor and self-irony.

    **One-sentence message**  
    This talk is ironic in form, but very serious in substance.

    **What to put on screen**
    - My views only
- Heavy use of irony
- If you have lived through this, you are not alone

    **Spoken script (30 to 60 seconds)**  
    Before we begin, a quick warning: everything that follows reflects my views only, not my employer’s. The tone will be intentionally playful, sometimes mocking, with a lot of irony. But behind the jokes are very real situations. And if some of these traps feel familiar, don’t worry: many of us have been there before.

---

    ## [Who I am]

    **Slide objective**  
    Provide enough context to justify a systemic, large-scale perspective.

    **One-sentence message**  
    I am speaking from a large-scale environment where practices have to survive reality.

    **What to put on screen**
    - Distinguished Engineer
- Major systemic bank
- 1,000+ software systems
- 1,300 developers / 200+ teams / ~5,000 people
- Software craftsmanship
- Supporting expert communities

    **Spoken script (30 to 60 seconds)**  
    To give you some context: I’m a Distinguished Engineer in a major systemic bank, working across a very broad cross-functional scope. I operate in an environment with more than a thousand software systems and over 1,300 developers spread across more than 200 feature teams. My role is to help teams work better, improve continuously, and support transformation at scale. And I come to this topic with a strong software craftsmanship mindset.

---

    ## [Session logistics]

    **Slide objective**  
    Set the cadence and avoid accidental interruptions.

    **One-sentence message**  
    I’ll go straight through the talk, and we’ll keep discussion time for the end.

    **What to put on screen**
    - Final QR code
- PDF of the slides
- Questions at the end
- Possible discussion afterward

    **Spoken script (30 to 60 seconds)**  
    A quick logistics note: at the end, you’ll get a QR code to download the PDF of the slides. I love interactive talks, but since we only have 30 minutes, I’m going to go straight through first. Then we’ll take questions. And for those who want to continue the conversation, I’ll be happy to discuss afterward over coffee or a drink.

---

    ## [Technique #0: distort the meaning]

    **Slide objective**  
    Introduce the core sabotage mechanic.

    **One-sentence message**  
    The fastest way to make a team fail is to make it misunderstand the practices it thinks it is applying.

    **What to put on screen**
    - Goal: create chaos
- Zone: requirements → validation
- Foundation: misunderstanding

    **Spoken script (30 to 60 seconds)**  
    Our mission is now simple: create chaos inside a future team. And the foundational sabotage technique — the one that feeds all the others — is to make people misunderstand the practices they are supposedly using. Once the meaning of the words, roles, and methods is distorted, everything else becomes much easier to break.

---

    ## [Confusion #1: vibe coding vs SDD]

    **Slide objective**  
    Introduce the first structural confusion.

    **One-sentence message**  
    If you confuse vibe coding and Spec-Driven Development, you sabotage the project before it even begins.

    **What to put on screen**
    - The team wants to use AI
- Good idea
- So sabotage early
- Blur vibe coding and SDD

    **Spoken script (30 to 60 seconds)**  
    Our team wants to use AI. And that is a good idea. So if we want them to fail, we need to sabotage them as early as possible. The best move is to make them believe that vibe coding and Spec-Driven Development are basically the same thing. They are not. They do not require the same rigor, and they do not solve the same problems.

---

    ## [What vibe coding is, what SDD is]

    **Slide objective**  
    Make the difference in nature between the two approaches visible.

    **One-sentence message**  
    Vibe coding delegates as much as possible; SDD delegates from rich specifications.

    **What to put on screen**
    - AIDLC
- Vibe coding: intention → production → correction
- Good for small projects / prototyping
- Limits: large systems, legacy, architecture
- SDD: specify, plan, build, verify, validate

    **Spoken script (30 to 60 seconds)**  
    With AIDLC, we are delegating more and more activities to tools or agents. Vibe coding pushes that logic very far: you provide an intention, sometimes even a solution statement, and then iterate until the result looks acceptable. That can work very well for small projects or prototypes. But once you are dealing with complex systems, legacy, or design challenges, it is not enough. Spec-Driven Development follows another logic: build usable material first, then delegate from that.

---

    ## [Confusion #2: requirement vs specification]

    **Slide objective**  
    Expose the methodological gap between a story and a true specification.

    **One-sentence message**  
    A user story is not a specification; there is real transformation work between the two.

    **What to put on screen**
    - Requirement ≠ Specification
- Story = intention
- Specification = exploitable detail
- Formulation work

    **Spoken script (30 to 60 seconds)**  
    The next highly profitable mistake is to make people believe that a requirement and a specification are the same thing. A story like ‘As a…, I want…, so that…’ expresses an intention. But it still does not contain everything needed to make it understandable, testable, and robustly exploitable. There is real formulation work between the two. And if that work is missing, what we delegate is incomplete by construction.

---

    ## [First way to sabotage BDD: not knowing what it is]

    **Slide objective**  
    Create an early comic break before returning to substance.

    **One-sentence message**  
    We often fail a practice before practicing it, simply because we do not know what it actually means.

    **What to put on screen**
    - BDD ≠ Database
- Real misunderstanding of the acronym
- The joke reveals a real issue

    **Spoken script (30 to 60 seconds)**  
    Once the team wants to do BDD, the first sabotage move is obvious: recruit people who do not know what BDD even stands for. And yes, there are still people who think BDD means ‘database.’ It is funny, but it also reveals something real: many teams manipulate terms they only half understand.

---

    ## [Second way to sabotage BDD: reduce it to testing]

    **Slide objective**  
    Remove all of BDD’s discovery value.

    **One-sentence message**  
    If you reduce BDD to Cucumber or automation, you miss the point entirely.

    **What to put on screen**
    - Cucumber
- Gherkin
- Step definitions
- Automation
- And yet: BDD is more than that

    **Spoken script (30 to 60 seconds)**  
    The next sabotage move is even more common: make people believe that BDD is just automated testing. A few Gherkin files, a few step definitions, a tool, and done. Except BDD is not primarily a tooling stack. It is a process for discovery, clarification, and alignment. If all you keep is the automation layer, you lose the very reason the practice exists.

---

    ## [What BDD really is]

    **Slide objective**  
    Restore BDD’s actual structure.

    **One-sentence message**  
    BDD is a complete chain: discuss, discover, formulate, then automate.

    **What to put on screen**
    - Requirement / story
- Dev + test + business
- Business rules
- Examples
- Example Mapping
- Formalization
- Automation

    **Spoken script (30 to 60 seconds)**  
    In reality, BDD starts well before testing. You begin with a requirement, then bring together the right people: developers, testers, and people who actually know the business. You look for business rules and illustrate them with concrete examples, often using Example Mapping. Only after that do you formalize the result, and only then do you automate it. The problem is that many teams have remembered only the last step.

---

    ## [The great missing piece: design]

    **Slide objective**  
    Show the zone simplified approaches leave in the dark.

    **One-sentence message**  
    Between specification and automation, there is real design work that AI does not eliminate.

    **What to put on screen**
    - Problem space vs solution space
- Modeling
- Aggregates
- Screens
- Infrastructure
- Test data
- Enriched plan

    **Spoken script (30 to 60 seconds)**  
    And there is a major missing piece here: design. Between the problem space and the solution space, you still have to model, decompose, think through responsibilities, interfaces, screens, infrastructure, and data. That transition does not happen by magic. Yes, AI can help. But it does not remove the need to think before you delegate.

---

    ## [How to sabotage Example Mapping]

    **Slide objective**  
    Provide a concrete list of visible bad practices.

    **One-sentence message**  
    A failed Example Mapping session creates anemic specifications and therefore fragile implementations.

    **What to put on screen**
    - Forget rules
- Invent fake rules
- Happy paths only
- Bad examples
- No business language
- No domain experts
- Context-free AI

    **Spoken script (30 to 60 seconds)**  
    If the team starts doing good work, the right target is Example Mapping. You can forget important rules, cover only happy paths, write bad examples, or abandon business language completely. And above all, you can run the session without the right people, or with AI alone and no domain context. In that case, the system will fill the gaps with plausible guesses. And plausible-but-wrong material is excellent fuel for failure.

---

    ## [How to sabotage Gherkin]

    **Slide objective**  
    Show that the problem is less the tool than its impoverished use.

    **One-sentence message**  
    Gherkin becomes useless as soon as it is written like an empty shell.

    **What to put on screen**
    - Caricatural Given / When / Then
- Solution wording
- Poor scenarios
- No tags
- No comments
- No references

    **Spoken script (30 to 60 seconds)**  
    Once Example Mapping is done, we can sabotage Gherkin. All we need to do is reduce it to a Given / When / Then shell, write solution wording instead of business intentions, and produce poor scenarios without context, comments, tags, or links to reference documentation. At that point, we have the appearance of rigor — but not the substance of rigor.

---

    ## [What good Gherkin looks like]

    **Slide objective**  
    Make the qualitative difference visible without overloading the slide.

    **One-sentence message**  
    Good Gherkin is not an empty test script; it is a working artifact useful to both humans and AI.

    **What to put on screen**
    - Well-written feature
- Comments
- Tags
- Reference links
- Coherent scenarios
- Relevant examples

    **Spoken script (30 to 60 seconds)**  
    By contrast, good modern Gherkin can become a real working artifact. You can have a well-written feature, comments, tags, links to reference documentation, coherent scenarios, and relevant examples. At that point, you no longer have a rough testing draft. You have a specification that the team can actually use — and that AI can also exploit effectively.

---

    ## [Confusion #3: BDD, ATDD, TDD = ‘just start with a test’]

    **Slide objective**  
    Expose the reduction that flattens three different practices.

    **One-sentence message**  
    When you reduce everything to ‘test first,’ you throw away all the upstream value.

    **What to put on screen**
    - BDD
- ATDD
- TDD
- Reduced to “start with a test”
- Discovery and design disappear

    **Spoken script (30 to 60 seconds)**  
    We now reach a very modern confusion: presenting BDD, ATDD, and TDD as just variants of one single idea — start with a test. It sounds simple and attractive, but it is deeply reductive. The moment you do that, you erase the entire upstream phase: discovery, formulation, business rules, trade-offs, and design.

---

    ## [The double loop]

    **Slide objective**  
    Give the audience a simple, memorable mental model.

    **One-sentence message**  
    There is an outer acceptance loop for expected behavior and an inner TDD loop to build the solution cleanly.

    **What to put on screen**
    - Outer loop: acceptance
- Inner loop: TDD
- Link between the two
- Design flows through both

    **Spoken script (30 to 60 seconds)**  
    The model that really helps here is the double loop. An outer loop clarifies what the system should do. An inner loop builds the solution cleanly, one small step at a time, using TDD. TDD does not exhaust the thinking; it embodies the thinking at a different level of granularity. And design moves through the whole system.

---

    ## [Fake TDD]

    **Slide objective**  
    Deconstruct the most common caricature.

    **One-sentence message**  
    Red, Green, Refactor is not enough to describe real TDD.

    **What to put on screen**
    - Caricature: red / green / refactor
- Missing decomposition
- Missing micro-goals
- Missing emergent design
- Tests and code refactored together

    **Spoken script (30 to 60 seconds)**  
    If you really want a team to fail, you need to sell them fake TDD. Fake TDD says: one red test, one green test, one refactor, done. Real TDD is richer: you start with an objective, break it down, move in small steps, update the plan, let design emerge, and refactor both the code and the tests. Otherwise, what you get is choreography — not practice.

---

    ## [How to make agents fail]

    **Slide objective**  
    Explicitly connect human mistakes to AI-system mistakes.

    **One-sentence message**  
    Agents rarely fail because they are ‘stupid’; they mostly fail because we feed them poor working material.

    **What to put on screen**
    - Bad plan
- Missing design
- Unclear responsibilities
- Implicit interfaces
- Plausible but fragile output

    **Spoken script (30 to 60 seconds)**  
    Today we delegate more and more to agents. But making them fail is not exotic at all: just give them a bad plan. If responsibilities are vague, interfaces remain implicit, and design is left unspoken, the agents will produce plausible but fragile output. So the real leverage is not just the prompt; it is the quality of the material we hand over.

---

    ## [Operational conclusion]

    **Slide objective**  
    Bring the talk back to the core delegation decision.

    **One-sentence message**  
    The real question is not ‘should we use AI?’ but ‘what do we delegate, on what basis, and with which guardrails?’

    **What to put on screen**
    - Large-scale delegation is possible
- Context engineering
- Harness engineering
- Automatable checks
- Human choices still required

    **Spoken script (30 to 60 seconds)**  
    In the end, the real question is not whether we should use AI. It is already here. The real question is: what do we choose to delegate, from what foundation, and with which guardrails? We can enrich the context, design control harnesses, and automate many validations. But that only works if we know what we are trying to preserve.

---

    ## [Our role tomorrow]

    **Slide objective**  
    End on a responsible, non-defensive vision.

    **One-sentence message**  
    The more we automate, the more human value concentrates around choices, relationships, test management, and deep system understanding.

    **What to put on screen**
    - Human relationships
- End of silos
- Test management
- Architecture and design
- AI suggests, humans choose
- Understand the machine

    **Spoken script (30 to 60 seconds)**  
    To close: what is our role tomorrow? It is in choices, relationships, understanding, and responsibility. We will need to break the silos between business, testing, and development. We will still need to think about edge cases, test quality, architecture, and design. AI can suggest and accelerate, but it does not choose for us. And if we stop understanding the machine we are driving, we become dangerous.

---

    ## [Thank you / Q&A]

    **Slide objective**  
    Close cleanly and reopen the conversation.

    **One-sentence message**  
    The sabotage was ironic; the challenge itself is deeply collective.

    **What to put on screen**
    - Thank you
- QR code
- Questions

    **Spoken script (30 to 60 seconds)**  
    Thank you very much. I hope this deliberately absurd journey was entertaining, but above all that it gave you a clearer frame for what we currently confuse around BDD, ATDD, TDD, AI, and Spec-Driven Development. And now, I’d be very happy to take your questions.
