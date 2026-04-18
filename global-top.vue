<script setup lang="ts">
import { computed, ref, watch } from 'vue'
import { useNav } from '@slidev/client'

const { currentPage, currentLayout, total } = useNav()

const isCover = computed(() => currentLayout.value === 'jftl-cover')
const progress = computed(() => ((currentPage.value - 1) / (total.value - 1)) * 100)

// Fade out fast (0.1s), fade in slow (1s)
const logoOpacity = ref(1)
const logoTransition = ref('opacity 1.5s ease')
watch(currentPage, () => {
  logoTransition.value = 'opacity 0.1s ease'
  logoOpacity.value = 0
  setTimeout(() => {
    logoTransition.value = 'opacity 1.5s ease'
    logoOpacity.value = 1
  }, 120)
})
</script>

<template>
  <template v-if="!isCover">
    <!--
      Progress bar rendered over every slide except the cover (jftl-cover).
      Color: set --progress-bar-color in style.css (defaults to green).
      Example: :root { --progress-bar-color: #0F9ED5; }
    -->
    <div class="progress-bar-track" aria-hidden="true">
      <div class="progress-bar-fill" :style="{ width: `${progress}%` }" />
    </div>

    <!-- JFTL logo — top-right, mirrors cover placement -->
    <img
      src="/jftl-logo-top.png"
      alt="JFTL 2026"
      class="global-jftl-logo"
      aria-hidden="true"
      :style="{ opacity: logoOpacity, transition: logoTransition }"
    />
  </template>
</template>

<style>
.global-jftl-logo {
  position: absolute;
  top: 0;
  right: 0;
  width: 10%;
  height: auto;
  z-index: 9998;
  pointer-events: none;
  display: block;
  /* transition driven by inline style for asymmetric in/out durations */
}

.progress-bar-track {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 5px;
  z-index: 9999;
  pointer-events: none;
  overflow: hidden;
}

.progress-bar-fill {
  height: 100%;
  background-color: var(--progress-bar-color, #22c55e);
  transition: width 0.35s ease;
}
</style>
