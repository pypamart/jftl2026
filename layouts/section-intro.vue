<template>
  <div class="section-intro-layout slidev-layout">
    <!-- Ambient glow -->
    <div class="accent-glow" aria-hidden="true" />

    <div class="section-content">
      <slot />
      <div class="accent-bar" aria-hidden="true" />
    </div>
  </div>
</template>

<style scoped>
.section-intro-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: flex-start;
  width: 100%;
  height: 100%;
  background: #2D354B;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
  color: #fff;
}

.accent-glow {
  position: absolute;
  width: 350px;
  height: 350px;
  top: 50%;
  left: 12%;
  transform: translate(-50%, -50%);
  border-radius: 50%;
  background: radial-gradient(circle, rgba(15, 158, 213, 0.1), transparent 70%);
  pointer-events: none;
  z-index: 0;
}

.section-content {
  position: relative;
  z-index: 1;
  text-align: left;
  padding: 3rem 5rem;
  max-width: 800px;
}

.section-content :deep(h1) {
  font-size: 2.4rem;
  font-weight: 700;
  color: #fff;
  line-height: 1.2;
  border: none;
  padding: 0;
  margin-bottom: 0.3em;
}

.section-content :deep(h2) {
  font-size: 1.1rem;
  font-weight: 400;
  color: rgba(255, 255, 255, 0.45);
  margin: 0;
  padding: 0;
  border: none;
}

.section-content :deep(p) {
  font-size: 1rem;
  color: rgba(255, 255, 255, 0.55);
  line-height: 1.5;
}

.accent-bar {
  width: 60px;
  height: 3px;
  background: #0F9ED5;
  margin-top: 1.5rem;
}
</style>
