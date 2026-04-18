<template>
  <div class="disclaimer-layout slidev-layout">

    <!-- Ambient glow blobs -->
    <div class="glow glow-1" aria-hidden="true" />
    <div class="glow glow-2" aria-hidden="true" />

    <!-- Card -->
    <div class="disclaimer-card">

      <!-- Top accent bar -->
      <div class="card-accent-bar" aria-hidden="true" />

      <!-- Icon + label -->
      <div class="card-header">
        <svg class="card-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
          stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
          <circle cx="12" cy="12" r="10" />
          <line x1="12" y1="8" x2="12" y2="12" />
          <line x1="12" y1="16" x2="12.01" y2="16" />
        </svg>
        <span class="card-label">DISCLAIMER</span>
      </div>

      <!-- Divider -->
      <div class="card-divider" aria-hidden="true" />

      <!-- Slot content -->
      <div class="card-body">
        <slot />
      </div>

    </div>

  </div>
</template>

<style scoped>
/* ── Root ──────────────────────────────────────────────────────────────── */
.disclaimer-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #02111B;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
}

/* ── Ambient blobs ────────────────────────────────────────────────────── */
.glow {
  position: absolute;
  border-radius: 50%;
  filter: blur(90px);
  pointer-events: none;
  z-index: 0;
}
.glow-1 {
  width: 520px;
  height: 520px;
  top: -140px;
  left: -140px;
  background: radial-gradient(circle, rgba(15, 158, 213, 0.18), transparent 70%);
}
.glow-2 {
  width: 420px;
  height: 420px;
  bottom: -100px;
  right: -100px;
  background: radial-gradient(circle, rgba(187, 57, 73, 0.15), transparent 70%);
}

/* ── Card ─────────────────────────────────────────────────────────────── */
.disclaimer-card {
  position: relative;
  z-index: 1;
  width: min(780px, 88%);
  background: rgba(255, 255, 255, 0.04);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 18px;
  backdrop-filter: blur(18px) saturate(160%);
  -webkit-backdrop-filter: blur(18px) saturate(160%);
  box-shadow:
    0 0 0 1px rgba(15, 158, 213, 0.12),
    0 24px 64px rgba(0, 0, 0, 0.55),
    inset 0 1px 0 rgba(255, 255, 255, 0.07);
  overflow: hidden;
}

/* ── Top accent bar ───────────────────────────────────────────────────── */
.card-accent-bar {
  height: 3px;
  background: linear-gradient(90deg, #0F9ED5 0%, #BB3949 55%, transparent 100%);
}

/* ── Header row ───────────────────────────────────────────────────────── */
.card-header {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 28px 36px 0;
}

.card-icon {
  width: 26px;
  height: 26px;
  color: #0F9ED5;
  flex-shrink: 0;
}

.card-label {
  font-size: 11px;
  font-weight: 700;
  letter-spacing: 0.22em;
  color: #0F9ED5;
  text-transform: uppercase;
}

/* ── Divider ──────────────────────────────────────────────────────────── */
.card-divider {
  margin: 16px 36px 0;
  height: 1px;
  background: linear-gradient(90deg, rgba(15, 158, 213, 0.35), transparent);
}

/* ── Body ─────────────────────────────────────────────────────────────── */
.card-body {
  padding: 22px 36px 34px;
  font-size: 0.98em;
  line-height: 1.75;
  color: rgba(255, 255, 255, 0.82);
}

.card-body :deep(p) {
  margin: 0 0 0.7em;
  color: rgba(255, 255, 255, 0.82);
}

.card-body :deep(p:last-child) {
  margin-bottom: 0;
}

.card-body :deep(strong) {
  color: #ffffff;
  font-weight: 700;
}

.card-body :deep(em) {
  color: rgba(255, 255, 255, 0.65);
  font-style: italic;
}

.card-body :deep(a) {
  color: #0F9ED5;
  text-decoration: underline;
  text-underline-offset: 3px;
}

.card-body :deep(ul),
.card-body :deep(ol) {
  padding-left: 1.3em;
  margin: 0.4em 0 0.7em;
}

.card-body :deep(li) {
  margin-bottom: 0.3em;
}

.card-body :deep(li::marker) {
  color: #0F9ED5;
}
</style>
