<template>
  <div class="scoreboard-layout slidev-layout">
    <!-- Crimson dot grid -->
    <div class="bg-grid" aria-hidden="true" />

    <div class="scoreboard-content">
      <div class="sb-label">SABOTAGE PROGRESS</div>

      <!-- Progress bar -->
      <div class="sb-bar">
        <div class="sb-bar-fill" :style="{ width: fillPercent + '%' }" />
      </div>
      <div class="sb-count">{{ doneCount }} / {{ techniques.length }} techniques deployed</div>

      <!-- Technique list -->
      <div class="sb-grid">
        <div
          v-for="(t, i) in techniques"
          :key="i"
          class="sb-item"
          :class="{ done: i < doneCount, current: i === doneCount - 1 }"
        >
          <span class="sb-icon">{{ i < doneCount ? '✓' : '○' }}</span>
          <span class="sb-num">#{{ i }}</span>
          <span class="sb-name">{{ t }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'

const props = defineProps({
  done: {
    type: [String, Number],
    default: 0
  }
})

const techniques = [
  'Distort the meaning',
  'Confuse Vibe Coding & SDD',
  'Confuse Req. & Specification',
  "Don't know what BDD is",
  'Reduce BDD to testing',
  'Skip design',
  'Sabotage Example Mapping',
  'Write hollow Gherkin',
  'Flatten BDD / ATDD / TDD',
  'Sell fake TDD',
  'Feed garbage to agents',
]

const doneCount = computed(() => Number(props.done))
const fillPercent = computed(() => (doneCount.value / techniques.length) * 100)
</script>

<style scoped>
.scoreboard-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #0a0e1a;
  overflow: hidden;
  font-family: 'Open Sans', sans-serif;
  color: #fff;
}

.bg-grid {
  position: absolute;
  inset: 0;
  z-index: 0;
  pointer-events: none;
  background-image: radial-gradient(circle, rgba(187, 57, 73, 0.05) 1px, transparent 1px);
  background-size: 20px 20px;
}

.scoreboard-content {
  position: relative;
  z-index: 1;
  width: min(720px, 90%);
  text-align: center;
}

.sb-label {
  font-size: 0.7rem;
  letter-spacing: 0.4em;
  color: #BB3949;
  font-weight: 700;
  margin-bottom: 1.2rem;
}

/* ── Progress bar ───── */
.sb-bar {
  width: 100%;
  height: 8px;
  background: rgba(255, 255, 255, 0.08);
  border-radius: 4px;
  overflow: hidden;
  margin-bottom: 0.5rem;
}

.sb-bar-fill {
  height: 100%;
  background: linear-gradient(90deg, #BB3949, #e05565);
  border-radius: 4px;
  transition: width 0.6s ease;
}

.sb-count {
  font-size: 0.75rem;
  color: rgba(255, 255, 255, 0.4);
  margin-bottom: 1.6rem;
}

/* ── Technique grid ─── */
.sb-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0.4rem 2.5rem;
  text-align: left;
}

.sb-item {
  display: flex;
  align-items: center;
  gap: 0.4rem;
  font-size: 0.7rem;
  color: rgba(255, 255, 255, 0.25);
  transition: color 0.3s;
}

.sb-item.done {
  color: rgba(255, 255, 255, 0.8);
}

.sb-item.current {
  color: #ffffff;
}

.sb-icon {
  width: 1.1em;
  text-align: center;
  flex-shrink: 0;
}
.sb-item.done .sb-icon {
  color: #BB3949;
}

.sb-num {
  font-weight: 700;
  flex-shrink: 0;
  min-width: 2em;
}

.sb-name {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
</style>
