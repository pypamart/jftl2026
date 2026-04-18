<template>
  <div class="technique-layout slidev-layout">
    <!-- Centered glow (same as big-statement) -->
    <div class="glow" aria-hidden="true" />

    <!-- Top accent line -->
    <div class="accent-line top" aria-hidden="true" />

    <div class="technique-content">
      <div class="technique-label">SABOTAGE TECHNIQUE</div>
      <div class="technique-number">#{{ number }}</div>
      <div class="technique-divider" aria-hidden="true" />
      <div class="technique-title">
        <slot />
      </div>
    </div>

    <!-- Bottom accent line -->
    <div class="accent-line bottom" aria-hidden="true" />
  </div>
</template>

<script setup>
defineProps({
  number: {
    type: [String, Number],
    default: '0'
  }
})
</script>

<style scoped>
.technique-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #1a1e2e;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
}

.glow {
  position: absolute;
  width: 600px;
  height: 600px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  border-radius: 50%;
  background: radial-gradient(circle, rgba(15, 158, 213, 0.06), transparent 70%);
  pointer-events: none;
  z-index: 0;
}

.accent-line {
  position: absolute;
  left: 0;
  width: 100%;
  height: 3px;
  background: linear-gradient(90deg, transparent 5%, #BB3949 50%, transparent 95%);
  z-index: 1;
}
.accent-line.top { top: 0; }
.accent-line.bottom { bottom: 0; }

.technique-content {
  position: relative;
  z-index: 2;
  text-align: center;
  padding: 2rem;
}

.technique-label {
  font-size: 0.75rem;
  letter-spacing: 0.4em;
  text-transform: uppercase;
  color: #BB3949;
  margin-bottom: 0.3rem;
  font-weight: 600;
}

.technique-number {
  font-size: 7rem;
  font-weight: 800;
  color: #BB3949;
  line-height: 1;
  margin-bottom: 0.6rem;
  text-shadow: 0 0 80px rgba(187, 57, 73, 0.35);
}

.technique-divider {
  width: 80px;
  height: 2px;
  background: rgba(255, 255, 255, 0.15);
  margin: 0 auto 1.2rem;
}

.technique-title {
  font-size: 1.5rem;
  font-weight: 600;
  color: #ffffff;
  line-height: 1.4;
  max-width: 650px;
  margin: 0 auto;
}

/* Override default heading styles inside this layout */
.technique-title :deep(h1),
.technique-title :deep(h2),
.technique-title :deep(h3),
.technique-title :deep(p) {
  color: #ffffff !important;
  border: none !important;
  padding: 0 !important;
  margin: 0 !important;
  font-size: inherit !important;
  font-weight: inherit !important;
  line-height: inherit !important;
}
</style>
