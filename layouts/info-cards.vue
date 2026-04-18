<template>
  <div class="info-cards-layout slidev-layout">

    <!-- Dot grid — McKinsey/Gartner precision texture -->
    <div class="bg-dots" aria-hidden="true" />

    <!-- Ambient radial glow — Apple studio depth -->
    <div class="ambient-glow" aria-hidden="true" />

    <!-- Top accent line -->
    <div class="accent-line top" aria-hidden="true" />

    <!-- Content -->
    <div class="slide-inner">
      <slot />
    </div>

    <!-- Bottom accent line -->
    <div class="accent-line bottom" aria-hidden="true" />

  </div>
</template>

<style scoped>
/* ── Root ──────────────────────────────────────────────────────────────── */
.info-cards-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: linear-gradient(150deg, #2D354B 0%, #1c2438 100%);
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
}

/* ── Dot grid ──────────────────────────────────────────────────────────── */
.bg-dots {
  position: absolute;
  inset: 0;
  z-index: 0;
  pointer-events: none;
  background-image: radial-gradient(circle, rgba(255, 255, 255, 0.035) 1px, transparent 1px);
  background-size: 28px 28px;
}

/* ── Ambient glow ──────────────────────────────────────────────────────── */
.ambient-glow {
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse 80% 65% at 50% 55%, rgba(15, 158, 213, 0.07) 0%, transparent 70%);
  pointer-events: none;
  z-index: 0;
}

/* ── Accent lines ──────────────────────────────────────────────────────── */
.accent-line {
  position: absolute;
  left: 0;
  width: 100%;
  height: 1.5px;
  background: linear-gradient(90deg, transparent 4%, rgba(15, 158, 213, 0.55) 30%, rgba(15, 158, 213, 0.55) 70%, transparent 96%);
  z-index: 1;
}
.accent-line.top    { top: 0; }
.accent-line.bottom { bottom: 0; }

/* ── Inner wrapper ─────────────────────────────────────────────────────── */
.slide-inner {
  position: relative;
  z-index: 2;
  width: 86%;
  max-width: 1020px;
}

/* ── Section label (h1) ────────────────────────────────────────────────── */
.slide-inner :deep(h1) {
  font-size: 0.65rem;
  font-weight: 700;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.3);
  border: none;
  padding: 0;
  margin: 0 0 0.5rem;
  line-height: 1;
}

/* Thin rule beneath the label — McKinsey precision marker */
.slide-inner :deep(h1)::after {
  content: '';
  display: block;
  width: 2rem;
  height: 1.5px;
  background: rgba(15, 158, 213, 0.6);
  margin-top: 0.55rem;
}

/* ── Cards row ─────────────────────────────────────────────────────────── */
.slide-inner :deep(ul) {
  display: flex;
  flex-direction: row;
  gap: 2rem;
  list-style: none;
  padding: 0;
  margin: 1.8rem 0 0;
  align-items: stretch;
}

/* ── Individual card ───────────────────────────────────────────────────── */
.slide-inner :deep(li) {
  flex: 1;
  position: relative;
  padding: 2.2rem 1.8rem 2rem;
  background: rgba(255, 255, 255, 0.042);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-top: 2px solid rgba(15, 158, 213, 0.45);
  border-radius: 10px;
  box-shadow:
    0 20px 50px rgba(0, 0, 0, 0.35),
    0 4px 12px rgba(0, 0, 0, 0.2),
    inset 0 1px 0 rgba(255, 255, 255, 0.07);
  font-size: 1rem;
  color: rgba(255, 255, 255, 0.6);
  line-height: 1.65;
  margin: 0;
  /* Subtle upward float */
  transform: translateY(-3px);
}

/* Highlight sheen across the top edge — Apple glass effect */
.slide-inner :deep(li)::before {
  content: '';
  position: absolute;
  top: 2px;
  left: 15%;
  right: 15%;
  height: 1px;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.16) 50%, transparent);
  border-radius: 50%;
}

/* ── Card bold label ───────────────────────────────────────────────────── */
.slide-inner :deep(li strong) {
  display: block;
  font-size: 1.1rem;
  font-weight: 700;
  color: #ffffff;
  margin-bottom: 0.4rem;
  letter-spacing: 0.01em;
}
</style>
