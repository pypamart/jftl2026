<template>
  <div class="reveal-layout slidev-layout">
    <!-- Radial glow -->
    <div class="reveal-glow" aria-hidden="true" />
    <!-- Decorative ring -->
    <div class="reveal-ring" aria-hidden="true" />

    <div class="reveal-body">
      <slot />
    </div>
  </div>
</template>

<style scoped>
.reveal-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #02111B;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
  color: #fff;
}

.reveal-glow {
  position: absolute;
  width: 550px;
  height: 550px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  border-radius: 50%;
  background: radial-gradient(circle, rgba(15, 158, 213, 0.12), transparent 70%);
  pointer-events: none;
  z-index: 0;
}

.reveal-ring {
  position: absolute;
  width: 380px;
  height: 380px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  border-radius: 50%;
  border: 1px solid rgba(15, 158, 213, 0.1);
  pointer-events: none;
  z-index: 0;
}

.reveal-body {
  position: relative;
  z-index: 1;
  text-align: center;
  padding: 3rem;
  max-width: 750px;
}

.reveal-body :deep(h1) {
  font-size: 2.2rem;
  font-weight: 700;
  color: #0F9ED5;
  line-height: 1.3;
  border: none;
  padding: 0;
  margin-bottom: 0.5em;
}

.reveal-body :deep(h2) {
  font-size: 1.2rem;
  font-weight: 400;
  color: rgba(255, 255, 255, 0.5);
  border: none;
  padding: 0;
  margin: 0 0 0.5em;
}

.reveal-body :deep(p) {
  font-size: 1.2rem;
  color: rgba(255, 255, 255, 0.7);
  line-height: 1.6;
}

.reveal-body :deep(strong) {
  color: #BB3949;
  font-weight: 700;
}

.reveal-body :deep(em) {
  color: #0F9ED5;
  font-style: normal;
  font-weight: 600;
}
</style>
