<script setup lang="ts">
const props = defineProps<{
  backgroundImage?: string
}>()
</script>

<template>
  <div class="speaker-profile slidev-layout">

    <!-- Background: gradient + dot grid + ambient glow (always present) -->
    <div class="bg-base" aria-hidden="true" />
    <div class="bg-dots" aria-hidden="true" />
    <div class="ambient-glow" aria-hidden="true" />

    <!-- Optional background image with opacity overlay -->
    <div v-if="props.backgroundImage" class="bg-layer" aria-hidden="true">
      <img :src="props.backgroundImage" class="bg-img" alt="" />
      <div class="bg-overlay" />
    </div>

    <!-- Top / bottom accent lines -->
    <!-- <div class="accent-line top" aria-hidden="true" />
    <div class="accent-line bottom" aria-hidden="true" /> -->

    <!-- Left panel: photo + name block -->
    <div class="left-panel">
      <div class="photo-frame">
        <img src="/jftl-speaker-photo.jpg" alt="Pierre-Yves PAMART" class="speaker-img" />
      </div>
      <div class="name-block">
        <div class="speaker-firstname">Pierre-Yves</div>
        <div class="speaker-lastname">PAMART</div>
        <div class="speaker-role">Distinguished Engineer</div>
        <div class="speaker-divider" />
        <div class="speaker-company">Major Systemic Bank</div>
      </div>
    </div>

    <!-- Vertical rule -->
    <div class="vr" aria-hidden="true" />

    <!-- Right panel: slide content -->
    <div class="right-panel">
      <div class="eyebrow"><slot name="eyebrow" /></div>
      <h1 class="section-title"><slot name="title" /></h1>
      <div class="stat-grid">
        <slot />
      </div>
    </div>

    <!-- Bottom accent bar -->
    <div class="bottom-bar">
      <span class="bottom-tag">JFTL 2026</span>
    </div>

  </div>
</template>

<style scoped>
/* ── Root ── */
.speaker-profile {
  position: relative;
  display: flex;
  align-items: stretch;
  width: 100%;
  height: 100%;
  font-family: 'Open Sans', sans-serif;
  color: #fff;
  overflow: hidden;
}

/* ── Background base (same as info-cards) ── */
.bg-base {
  position: absolute;
  inset: 0;
  z-index: 0;
  background: linear-gradient(150deg, #2D354B 0%, #1c2438 100%);
}
.bg-dots {
  position: absolute;
  inset: 0;
  z-index: 0;
  pointer-events: none;
  background-image: radial-gradient(circle, rgba(255, 255, 255, 0.035) 1px, transparent 1px);
  background-size: 28px 28px;
}
.ambient-glow {
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse 80% 65% at 50% 55%, rgba(15, 158, 213, 0.07) 0%, transparent 70%);
  pointer-events: none;
  z-index: 0;
}

/* ── Optional background image ── */
.bg-layer {
  position: absolute;
  inset: 0;
  z-index: 1;
}
.bg-img {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center;
}
.bg-overlay {
  position: absolute;
  inset: 0;
  background: rgba(2, 17, 27, 0.82);
}

/* ── Accent lines (same as info-cards) ── */
.accent-line {
  position: absolute;
  left: 0;
  width: 100%;
  height: 1.5px;
  background: linear-gradient(90deg, transparent 4%, rgba(15, 158, 213, 0.55) 30%, rgba(15, 158, 213, 0.55) 70%, transparent 96%);
  z-index: 3;
}
.accent-line.top    { top: 0; }
.accent-line.bottom { bottom: 0; }

/* ── Left panel ── */
.left-panel {
  position: relative;
  z-index: 2;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 1.4rem;
  width: 34%;
  min-width: 280px;
  padding: 2.8rem 2rem;
  background: rgba(255, 255, 255, 0.03);
}

.photo-frame {
  width: 148px;
  height: 148px;
  border-radius: 4px;
  overflow: hidden;
  border: 2px solid rgba(15, 158, 213, 0.6);
  box-shadow: 0 0 28px rgba(15, 158, 213, 0.22);
  flex-shrink: 0;
}
.speaker-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: top center;
}

.name-block {
  text-align: center;
}
.speaker-firstname {
  font-size: 0.95rem;
  font-weight: 400;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: rgba(255,255,255,0.6);
}
.speaker-lastname {
  font-size: 1.45rem;
  font-weight: 700;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  color: #fff;
  line-height: 1.1;
}
.speaker-role {
  margin-top: 0.45rem;
  font-size: 0.78rem;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: #0F9ED5;
}
.speaker-divider {
  width: 32px;
  height: 2px;
  background: rgba(255,255,255,0.2);
  margin: 0.7rem auto;
}
.speaker-company {
  font-size: 0.72rem;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  color: rgba(255,255,255,0.38);
}

/* ── Vertical rule ── */
.vr {
  position: relative;
  z-index: 2;
  width: 1px;
  height: 60%;
  align-self: center;
  background: linear-gradient(to bottom, transparent, rgba(15,158,213,0.55), transparent);
  flex-shrink: 0;
}

/* ── Right panel ── */
.right-panel {
  position: relative;
  z-index: 2;
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 2.8rem 3.2rem 2.8rem 2.8rem;
  gap: 0;
}

.eyebrow {
  font-size: 0.68rem;
  font-weight: 600;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: #0F9ED5;
  margin-bottom: 0.5rem;
}

.section-title {
  font-size: 2rem;
  font-weight: 700;
  line-height: 1.15;
  color: #fff;
  margin: 0 0 1.6rem 0;
  border: none;
  padding: 0;
}
.section-title::after {
  content: '';
  display: block;
  width: 48px;
  height: 3px;
  background: #BB3949;
  margin-top: 0.85rem;
}

/* ── Stat grid — filled by slot ── */
.stat-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0.9rem 1.4rem;
}

/* Items injected from the slide via :deep */
.right-panel :deep(.stat-item) {
  display: flex;
  flex-direction: column;
  gap: 0.15rem;
}
.right-panel :deep(.stat-value) {
  font-size: 1.45rem;
  font-weight: 700;
  color: #fff;
  line-height: 1.1;
}
.right-panel :deep(.stat-label) {
  font-size: 0.72rem;
  font-weight: 400;
  letter-spacing: 0.05em;
  color: rgba(255,255,255,0.45);
  text-transform: uppercase;
  line-height: 1.3;
}

/* ── Bottom bar ── */
.bottom-bar {
  position: absolute;
  z-index: 2;
  bottom: 0;
  left: 0;
  right: 0;
  height: 34px;
  background: #BB3949;
  display: flex;
  align-items: center;
  padding: 0 2.5rem;
}
.bottom-tag {
  font-size: 0.62rem;
  font-weight: 700;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  color: rgba(255,255,255,0.7);
}
</style>
