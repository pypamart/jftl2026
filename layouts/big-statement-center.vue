<script setup>
import { computed } from 'vue'
import { resolvePublicPath } from '../composables/usePublicPath'
const props = defineProps({
  bgImage:    { type: String,  default: null },
  imageScale: { type: Number,  default: 0.55 }, // fraction of slide width, e.g. 0.55 = 55%
})

// Convert fraction → CSS width (capped between 20% and 90%)
const imgWidth = `${Math.min(90, Math.max(20, props.imageScale * 100))}%`
const resolvedBgImage = computed(() => resolvePublicPath(props.bgImage))
</script>

<template>
  <div class="bsc-layout slidev-layout">

    <!-- TOP text zone (named slot) -->
    <div class="bsc-zone bsc-top">
      <slot name="top" />
    </div>

    <!-- Centered image with radial glow -->
    <div class="bsc-image-wrap" v-if="resolvedBgImage">
      <div class="bsc-glow" aria-hidden="true" />
      <img
        :src="resolvedBgImage"
        class="bsc-img"
        :style="{ width: imgWidth }"
        aria-hidden="true"
      />
    </div>

    <!-- BOTTOM text zone (named slot) -->
    <div class="bsc-zone bsc-bottom">
      <slot name="bottom" />
    </div>

  </div>
</template>

<style scoped>
.bsc-layout {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #1a1e2e;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
  color: #ffffff;
  padding: 1.8rem 3rem;
  gap: 0;
}

/* ── Text zones ───────────────────────────────── */
.bsc-zone {
  width: 100%;
  text-align: center;
  flex-shrink: 0;
}

.bsc-top    { padding-bottom: 1.2rem; }
.bsc-bottom { padding-top: 1.2rem; }

.bsc-zone :deep(p) {
  font-size: 1.35rem;
  font-weight: 500;
  color: rgba(255, 255, 255, 0.9);
  line-height: 1.6;
  margin: 0.3em 0;
}

.bsc-zone :deep(h1) {
  font-size: 2rem;
  font-weight: 700;
  color: #ffffff;
  border: none;
  padding: 0;
  margin: 0 0 0.3em;
}

.bsc-zone :deep(h2) {
  font-size: 1.1rem;
  font-weight: 400;
  color: rgba(255, 255, 255, 0.5);
  border: none;
  padding: 0;
  margin: 0;
}

.bsc-zone :deep(em) {
  color: #0F9ED5;
  font-style: normal;
  font-weight: 700;
}

.bsc-zone :deep(strong) {
  color: #BB3949;
  font-weight: 700;
}

/* Thin decorative separators above/below image */
.bsc-top {
  border-bottom: 1px solid rgba(15, 158, 213, 0.2);
}
.bsc-bottom {
  border-top: 1px solid rgba(15, 158, 213, 0.2);
}

/* ── Image ────────────────────────────────────── */
.bsc-image-wrap {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.bsc-glow {
  position: absolute;
  width: 120%;
  height: 120%;
  border-radius: 50%;
  background: radial-gradient(circle, rgba(15, 158, 213, 0.08), transparent 70%);
  pointer-events: none;
}

.bsc-img {
  display: block;
  height: auto;
  max-height: 52vh;
  object-fit: contain;
  border-radius: 4px;
  position: relative;
  z-index: 1;
}
</style>
