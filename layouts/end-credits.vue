<template>
  <div class="end-layout slidev-layout">
    <!-- Ambient glows -->
    <div class="end-glow-1" aria-hidden="true" />
    <div class="end-glow-2" aria-hidden="true" />

    <div class="end-content">
      <div class="end-thanks">Thank you</div>
      <div class="end-divider" aria-hidden="true" />
      <div class="end-body">
        <slot />
      </div>
    </div>
  </div>
</template>

<style scoped>
.end-layout {
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

.end-glow-1 {
  position: absolute;
  width: 400px;
  height: 400px;
  top: -100px;
  left: -100px;
  border-radius: 50%;
  background: radial-gradient(circle, rgba(15, 158, 213, 0.12), transparent 70%);
  pointer-events: none;
  z-index: 0;
}

.end-glow-2 {
  position: absolute;
  width: 350px;
  height: 350px;
  bottom: -80px;
  right: -80px;
  border-radius: 50%;
  background: radial-gradient(circle, rgba(187, 57, 73, 0.1), transparent 70%);
  pointer-events: none;
  z-index: 0;
}

.end-content {
  position: relative;
  z-index: 1;
  text-align: center;
  padding: 2rem;
}

.end-thanks {
  font-size: 3.2rem;
  font-weight: 700;
  color: #ffffff;
  margin-bottom: 1rem;
  letter-spacing: -0.02em;
}

.end-divider {
  width: 60px;
  height: 3px;
  background: #0F9ED5;
  margin: 0 auto 2rem;
}

.end-body {
  max-width: 600px;
  margin: 0 auto;
}

.end-body :deep(p) {
  font-size: 1rem;
  color: rgba(255, 255, 255, 0.6);
  line-height: 1.6;
  margin: 0.5em 0;
}

.end-body :deep(a) {
  color: #0F9ED5;
  text-decoration: underline;
  text-underline-offset: 2px;
}

.end-body :deep(strong) {
  color: #ffffff;
  font-weight: 600;
}

.end-body :deep(img) {
  margin: 1rem auto;
  display: block;
}
</style>
