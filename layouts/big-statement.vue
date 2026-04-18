<script setup>
defineProps({ bgImage: String })
</script>

<template>
  <div class="big-statement-layout slidev-layout">
    <!-- Optional background image, dimmed -->
    <img
      v-if="bgImage"
      :src="bgImage"
      class="bg-image"
      aria-hidden="true"
    />
    <!-- Dark overlay to keep text legible over the image -->
    <div v-if="bgImage" class="bg-overlay" aria-hidden="true" />
    <!-- Subtle centered glow -->
    <div class="glow" aria-hidden="true" />

    <div class="statement-body">
      <slot />
    </div>
  </div>
</template>

<style scoped>
.big-statement-layout {
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

.bg-image {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  opacity: 0.18;
  z-index: 0;
}

.bg-overlay {
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse at center, rgba(26,30,46,0.45) 0%, rgba(26,30,46,0.72) 100%);
  z-index: 0;
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

.statement-body {
  position: relative;
  z-index: 1;
  text-align: center;
  padding: 3rem;
  max-width: 820px;
}

.statement-body :deep(p) {
  font-size: 1.65rem;
  font-weight: 500;
  color: #ffffff;
  line-height: 1.6;
  margin: 0.4em 0;
}

.statement-body :deep(h1) {
  font-size: 2.4rem;
  font-weight: 700;
  color: #ffffff;
  line-height: 1.3;
  border: none;
  padding: 0;
  margin-bottom: 0.5em;
}

.statement-body :deep(h2) {
  font-size: 1.3rem;
  font-weight: 400;
  color: rgba(255, 255, 255, 0.55);
  border: none;
  padding: 0;
  margin: 0;
}

/* Use *emphasis* for blue highlight */
.statement-body :deep(em) {
  color: #0F9ED5;
  font-style: normal;
  font-weight: 700;
}

/* Use **strong** for crimson highlight */
.statement-body :deep(strong) {
  color: #BB3949;
  font-weight: 700;
}
</style>
