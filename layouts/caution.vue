<template>
  <div class="warning-layout slidev-layout">

    <!-- Background grid -->
    <div class="bg-grid" aria-hidden="true" />

    <!-- Diagonal hazard stripes — top -->
    <div class="hazard-stripe top" aria-hidden="true" />

    <!-- Diagonal hazard stripes — bottom -->
    <div class="hazard-stripe bottom" aria-hidden="true" />

    <!-- Main content -->
    <div class="warning-content">

      <!-- Warning sign -->
      <div class="warning-sign" aria-hidden="true">
        <svg viewBox="0 0 100 87" fill="none" xmlns="http://www.w3.org/2000/svg">
          <!-- Triangle shadow -->
          <polygon points="50,6 97,84 3,84" fill="rgba(0,0,0,0.35)" transform="translate(2,3)" />
          <!-- Triangle fill -->
          <polygon points="50,4 96,82 4,82" fill="#F5C518" />
          <!-- Triangle border -->
          <polygon points="50,4 96,82 4,82" fill="none" stroke="#1a1200" stroke-width="3.5" stroke-linejoin="round" />
          <!-- Exclamation stem -->
          <rect x="46" y="30" width="8" height="28" rx="4" fill="#1a1200" />
          <!-- Exclamation dot -->
          <circle cx="50" cy="68" r="5" fill="#1a1200" />
        </svg>
      </div>

      <!-- Label -->
      <div class="warning-label">
        <span class="label-dash" aria-hidden="true">⸻</span>
        <span class="label-text">CAUTION</span>
        <span class="label-dash" aria-hidden="true">⸻</span>
      </div>

      <!-- Card -->
      <div class="warning-card">
        <slot />
      </div>

    </div>

  </div>
</template>

<style scoped>
/* ── Root ──────────────────────────────────────────────────────────────── */
.warning-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #111111;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
  color: #ffffff;
}

/* ── Subtle dot grid ───────────────────────────────────────────────────── */
.bg-grid {
  position: absolute;
  inset: 0;
  z-index: 0;
  pointer-events: none;
  background-image: radial-gradient(circle, rgba(255,255,255,0.07) 1px, transparent 1px);
  background-size: 32px 32px;
}

/* ── Hazard stripes (top & bottom) ─────────────────────────────────────── */
.hazard-stripe {
  position: absolute;
  left: 0;
  width: 100%;
  height: 20px;
  z-index: 1;
  pointer-events: none;
  background-image: repeating-linear-gradient(
    -45deg,
    #F5C518 0px,
    #F5C518 16px,
    #111111 16px,
    #111111 32px
  );
  opacity: 0.85;
}
.hazard-stripe.top    { top: 0; }
.hazard-stripe.bottom { bottom: 0; }

/* ── Content wrapper ───────────────────────────────────────────────────── */
.warning-content {
  position: relative;
  z-index: 2;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0;
  width: min(740px, 84%);
}

/* ── Warning sign SVG ─────────────────────────────────────────────────── */
.warning-sign {
  width: 80px;
  height: auto;
  margin-bottom: 14px;
  filter: drop-shadow(0 4px 18px rgba(245, 197, 24, 0.45));
}
.warning-sign svg {
  width: 100%;
  height: auto;
  display: block;
}

/* ── Label row ────────────────────────────────────────────────────────── */
.warning-label {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 22px;
}
.label-text {
  font-size: 11px;
  font-weight: 800;
  letter-spacing: 0.36em;
  text-transform: uppercase;
  color: #F5C518;
  white-space: nowrap;
}
.label-dash {
  color: rgba(245, 197, 24, 0.4);
  font-size: 10px;
}

/* ── Card ─────────────────────────────────────────────────────────────── */
.warning-card {
  width: 100%;
  background: rgba(245, 197, 24, 0.05);
  border: 1px solid rgba(245, 197, 24, 0.22);
  border-radius: 6px;
  padding: 24px 32px;
  font-size: 0.9em;
  line-height: 1.8;
  color: rgba(255, 255, 255, 0.82);
  box-shadow:
    0 0 0 1px rgba(245, 197, 24, 0.06),
    0 16px 48px rgba(0, 0, 0, 0.6),
    inset 0 1px 0 rgba(245, 197, 24, 0.08);
}

.warning-card :deep(p) {
  margin: 0 0 0.7em;
}
.warning-card :deep(p:last-child) {
  margin-bottom: 0;
}
.warning-card :deep(strong) {
  color: #F5C518;
  font-weight: 700;
}
.warning-card :deep(em) {
  color: rgba(255, 255, 255, 0.55);
  font-style: italic;
}
.warning-card :deep(ul),
.warning-card :deep(ol) {
  padding-left: 1.4em;
  margin: 0.3em 0 0.7em;
}
.warning-card :deep(li) {
  margin-bottom: 0.3em;
}
.warning-card :deep(li::marker) {
  color: #F5C518;
}
</style>
