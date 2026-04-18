<template>
  <div class="ireb-layout slidev-layout">

    <h2 class="ireb-title">Official IREB definitions</h2>

    <div class="ireb-cols">

      <div class="ireb-card req-card">
        <div class="card-header req-header">Requirement</div>
        <div class="card-body">
          <slot name="requirement" />
        </div>
      </div>

      <div class="ireb-card spec-card">
        <div class="card-header spec-header">Specification</div>
        <div class="card-body">
          <slot name="specification" />
        </div>
      </div>

    </div>

    <div class="ireb-source">Source: IREB Glossary of Requirements Engineering — ireb.org</div>

  </div>
</template>

<style scoped>
.ireb-layout {
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
  padding: 1.4rem 2.2rem 0.9rem;
  gap: 0.8rem;
  background: #02111B;
  font-family: 'Open Sans', sans-serif;
  color: #fff;
}

.ireb-title {
  font-size: 0.8em;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.16em;
  color: #0F9ED5;
  margin: 0;
  border: none;
  padding: 0;
}

/* ── Columns ── */
.ireb-cols {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.4rem;
  flex: 1;
  min-height: 0;
}

.ireb-card {
  border-radius: 8px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
}

.req-card {
  background: rgba(187, 57, 73, 0.09);
  border: 1px solid rgba(187, 57, 73, 0.35);
}

.spec-card {
  background: rgba(15, 158, 213, 0.07);
  border: 1px solid rgba(15, 158, 213, 0.35);
}

/* ── Card header ── */
.card-header {
  font-size: 0.9em;
  font-weight: 700;
  letter-spacing: 0.07em;
  padding: 0.55rem 1rem 0.45rem;
  border-bottom: 2px solid;
}

.req-header  { color: #BB3949; border-color: #BB3949; }
.spec-header { color: #0F9ED5; border-color: #0F9ED5; }

/* ── Card body (slot content) ── */
.card-body {
  padding: 0.75rem 1rem 0.75rem;
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 0.35rem;
}

/* Typography for slot-rendered markdown */
.card-body :deep(ol),
.card-body :deep(ul) {
  padding-left: 1.3em;
  margin: 0 0 0.5rem;
  font-size: 0.78em;
  line-height: 1.65;
  color: rgba(255, 255, 255, 0.88);
}

.card-body :deep(p) {
  font-size: 0.78em;
  line-height: 1.55;
  margin: 0 0 0.25rem;
  color: rgba(255, 255, 255, 0.88);
}

.card-body :deep(strong) {
  color: #fff;
}

.card-body :deep(em) {
  font-style: italic;
  color: rgba(255, 255, 255, 0.85);
}

/* Sub-labels like "As a work product" */
.card-body :deep(h4) {
  font-size: 0.65em;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  color: rgba(255, 255, 255, 0.4);
  margin: 0.5rem 0 0.05rem;
  border: none;
  padding: 0;
}

/* Example box: a blockquote */
.card-body :deep(blockquote) {
  margin: auto 0 0;
  padding: 0.5rem 0.8rem;
  background: rgba(255, 255, 255, 0.04);
  border-left: 3px solid rgba(255, 255, 255, 0.18);
  border-radius: 0 6px 6px 0;
}

.card-body :deep(blockquote p) {
  font-size: 0.75em;
  color: rgba(255, 255, 255, 0.8);
  margin: 0 0 0.15rem;
}

.card-body :deep(blockquote p:last-child) {
  font-size: 0.67em;
  color: rgba(255, 255, 255, 0.4);
  margin: 0;
}

/* ── Footer ── */
.ireb-source {
  font-size: 0.58em;
  color: rgba(255, 255, 255, 0.22);
  text-align: right;
  margin-top: auto;
}
</style>
