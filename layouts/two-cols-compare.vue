<script setup lang="ts">
defineProps<{
  leftImage?: string
  rightImage?: string
}>()
</script>

<template>
  <div class="compare-layout slidev-layout">

    <!-- Header (default slot) -->
    <div class="compare-header">
      <slot />
    </div>

    <!-- Two columns -->
    <div class="compare-grid">

      <!-- Left column (bad) -->
      <div class="col-wrapper">
        <div v-if="$props.leftImage" class="col-image">
          <img :src="$props.leftImage" alt="" />
        </div>
        <div class="compare-col col-bad">
          <div class="col-badge bad" aria-hidden="true">✗</div>
          <div class="col-content" @wheel.stop>
            <slot name="left" />
          </div>
        </div>
      </div>

      <!-- Separator -->
      <div class="compare-sep" aria-hidden="true">
        <div class="sep-line" />
        <div class="sep-label">VS</div>
        <div class="sep-line" />
      </div>

      <!-- Right column (good) -->
      <div class="col-wrapper">
        <div v-if="$props.rightImage" class="col-image">
          <img :src="$props.rightImage" alt="" />
        </div>
        <div class="compare-col col-good">
          <div class="col-badge good" aria-hidden="true">✓</div>
          <div class="col-content" @wheel.stop>
            <slot name="right" />
          </div>
        </div>
      </div>

    </div>
  </div>
</template>

<style scoped>
.compare-layout {
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
  background: #2D354B;
  font-family: 'Open Sans', sans-serif;
  color: #ffffff;
  padding: 2rem 2.5rem;
  overflow: hidden;
}

/* ── Header ─────────────────────────────────────── */
.compare-header {
  flex: 0 0 auto;
  margin-bottom: 1.2rem;
}

.compare-header :deep(h1) {
  font-size: 1.5rem;
  font-weight: 700;
  color: #ffffff;
  border-bottom: 2px solid #0F9ED5;
  padding-bottom: 0.3em;
  margin: 0;
}

/* ── Grid ───────────────────────────────────────── */
.compare-grid {
  flex: 1;
  display: grid;
  grid-template-columns: 1fr 50px 1fr;
  align-items: stretch;
  min-height: 0;
}

/* ── Col wrapper (image + card) ─────────────────── */
.col-wrapper {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
  min-height: 0;
  min-width: 0;
  padding-top: 12px; /* room for the badge that overflows the col top */
}

.col-image {
  flex: 0 0 auto;
  display: flex;
  justify-content: center;
}

.col-image img {
  max-width: 100%;
  max-height: 140px;
  object-fit: contain;
  border-radius: 6px;
}

/* ── Columns ────────────────────────────────────── */
.compare-col {
  flex: 1;
  position: relative;
  padding: 1.2rem 1.4rem;
  border-radius: 10px;
  display: flex;
  flex-direction: column;
  min-height: 0;
}

.col-bad {
  background: rgba(187, 57, 73, 0.08);
  border: 1px solid rgba(187, 57, 73, 0.25);
}

.col-good {
  background: rgba(15, 158, 213, 0.08);
  border: 1px solid rgba(15, 158, 213, 0.25);
}

/* Badge */
.col-badge {
  position: absolute;
  top: -12px;
  right: 16px;
  width: 28px;
  height: 28px;
  border-radius: 50%;
  font-size: 0.85rem;
  font-weight: 700;
  display: flex;
  align-items: center;
  justify-content: center;
}
.col-badge.bad  { background: #BB3949; color: #fff; }
.col-badge.good { background: #0F9ED5; color: #fff; }

/* Column content */
.col-content {
  flex: 1;
  display: flex;
  flex-direction: column;
  min-height: 0;
  overflow: hidden;
}
.col-content :deep(h2) {
  font-size: 1.05rem;
  font-weight: 700;
  margin: 0 0 0.6em;
  padding: 0;
  border: none;
}
.col-bad :deep(h2) { color: #e05565; }
.col-good :deep(h2) { color: #0F9ED5; }

.col-content :deep(p),
.col-content :deep(li) {
  font-size: 0.82rem;
  line-height: 1.55;
  color: rgba(255, 255, 255, 0.85);
}
.col-content :deep(ul) {
  padding-left: 1.2em;
}
.col-content :deep(strong) { color: #fff; }
.col-content :deep(em) {
  color: rgba(255, 255, 255, 0.55);
  font-style: italic;
}

/* ── Code blocks (Shiki / <<< imports) ──────────── */
.col-content :deep(.slidev-code),
.col-content :deep([class*="language-"]) {
  flex: 1;
  min-height: 0;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  border-radius: 6px;
  margin: 0 0 0.4em !important;
}

.col-content :deep(pre) {
  flex: 1;
  min-height: 0;
  overflow-y: auto !important;
  font-size: 0.33em !important;
  line-height: 1.45 !important;
  margin: 0 !important;
  padding: 0.6em 0.8em !important;
  border-radius: 6px;
}

/* Preserve empty lines rendered by Shiki as height-less spans */
.col-content :deep(.line:empty),
.col-content :deep(.line:not(:has(*)):not(:has(text))) {
  display: block;
  min-height: 1.45em;
}

/* ── Separator ──────────────────────────────────── */
.compare-sep {
  flex: 0 0 50px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 0.4rem;
}

.sep-line {
  width: 1px;
  flex: 1;
  background: rgba(255, 255, 255, 0.12);
}

.sep-label {
  font-size: 0.65rem;
  font-weight: 700;
  color: rgba(255, 255, 255, 0.25);
  letter-spacing: 0.1em;
}
</style>
