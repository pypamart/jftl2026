<script setup>
import { computed } from 'vue'
import { resolvePublicPath } from '../setup/usePublicPath'
const props = defineProps({
  bgImage:   { type: String,  default: null },
  imageSide: { type: String,  default: 'right' }, // 'left' | 'right'
  imageSize: { type: String,  default: '45%' },   // CSS width for the image column
})
const resolvedBgImage = computed(() => resolvePublicPath(props.bgImage))
</script>

<template>
  <div
    class="bss-layout slidev-layout"
    :class="imageSide === 'left' ? 'image-left' : 'image-right'"
  >
    <!-- Text column -->
    <div class="bss-text">
      <slot />
    </div>

    <!-- Image column -->
    <div class="bss-image-col" :style="{ width: imageSize, minWidth: imageSize }">
      <img
        v-if="resolvedBgImage"
        :src="resolvedBgImage"
        class="bss-img"
        aria-hidden="true"
      />
    </div>
  </div>
</template>

<style scoped>
.bss-layout {
  position: relative;
  display: flex;
  align-items: stretch;
  width: 100%;
  height: 100%;
  background: #1a1e2e;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
  color: #ffffff;
}

/* Column order */
.image-right  { flex-direction: row; }
.image-left   { flex-direction: row-reverse; }

/* ── Text column ──────────────────────────────── */
.bss-text {
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 3rem 3.5rem;
  position: relative;
  z-index: 1;
}

/* Delicate separator line */
.image-right .bss-text::after,
.image-left  .bss-text::before {
  content: '';
  position: absolute;
  top: 15%;
  bottom: 15%;
  width: 1px;
  background: linear-gradient(to bottom, transparent, rgba(15,158,213,0.4), transparent);
}
.image-right .bss-text::after  { right: 0; }
.image-left  .bss-text::before { left: 0; }

.bss-text :deep(p) {
  font-size: 1.5rem;
  font-weight: 500;
  color: #ffffff;
  line-height: 1.65;
  margin: 0.4em 0;
}

.bss-text :deep(h1) {
  font-size: 2.2rem;
  font-weight: 700;
  color: #ffffff;
  line-height: 1.3;
  border: none;
  padding: 0;
  margin-bottom: 0.5em;
}

.bss-text :deep(h2) {
  font-size: 1.15rem;
  font-weight: 400;
  color: rgba(255, 255, 255, 0.5);
  border: none;
  padding: 0;
  margin: 0.6em 0 0;
}

.bss-text :deep(em) {
  color: #0F9ED5;
  font-style: normal;
  font-weight: 700;
}

.bss-text :deep(strong) {
  color: #BB3949;
  font-weight: 700;
}

/* ── Image column ─────────────────────────────── */
.bss-image-col {
  flex-shrink: 0;
  position: relative;
  overflow: hidden;
}

.bss-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center;
  display: block;
  /* subtle vignette toward the text side */
}

/* Gradient fade from image toward text */
.image-right .bss-image-col::before {
  content: '';
  position: absolute;
  inset: 0;
  background: linear-gradient(to right, #1a1e2e 0%, transparent 30%);
  z-index: 1;
  pointer-events: none;
}

.image-left .bss-image-col::before {
  content: '';
  position: absolute;
  inset: 0;
  background: linear-gradient(to left, #1a1e2e 0%, transparent 30%);
  z-index: 1;
  pointer-events: none;
}
</style>
