<template>
  <div class="cinema-layout slidev-layout">

    <!-- Film grain overlay -->
    <div class="grain" aria-hidden="true" />

    <!-- Vignette -->
    <div class="vignette" aria-hidden="true" />

    <!-- Outer frame -->
    <div class="cinema-frame">
      <div class="frame-inner">

        <!-- Corner ornaments -->
        <span class="corner tl" aria-hidden="true" />
        <span class="corner tr" aria-hidden="true" />
        <span class="corner bl" aria-hidden="true" />
        <span class="corner br" aria-hidden="true" />

        <!-- Header band -->
        <div class="cinema-header">
          <div class="header-rule" aria-hidden="true" />
          <span class="header-text">DISCLAIMER</span>
          <div class="header-rule" aria-hidden="true" />
        </div>

        <!-- Body -->
        <div class="cinema-body">
          <slot />
        </div>

        <!-- Footer band -->
        <div class="cinema-footer">
          <div class="footer-rule" aria-hidden="true" />
        </div>

      </div>
    </div>

  </div>
</template>

<style scoped>
/* ── Root ──────────────────────────────────────────────────────────────── */
.cinema-layout {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #0a0a0a;
  overflow: hidden;
  font-family: 'Courier New', 'Courier', monospace;
  color: #e8e0cc;
}

/* ── Film grain (CSS noise via SVG data URI) ───────────────────────────── */
.grain {
  position: absolute;
  inset: 0;
  z-index: 1;
  pointer-events: none;
  opacity: 0.045;
  background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)'/%3E%3C/svg%3E");
  background-repeat: repeat;
  background-size: 128px 128px;
}

/* ── Vignette ─────────────────────────────────────────────────────────── */
.vignette {
  position: absolute;
  inset: 0;
  z-index: 2;
  pointer-events: none;
  background: radial-gradient(ellipse at center, transparent 45%, rgba(0,0,0,0.75) 100%);
}

/* ── Outer frame ──────────────────────────────────────────────────────── */
.cinema-frame {
  position: relative;
  z-index: 3;
  width: min(820px, 86%);
  border: 1px solid rgba(232, 224, 204, 0.25);
  padding: 3px;
}

.frame-inner {
  position: relative;
  border: 1px solid rgba(232, 224, 204, 0.55);
  padding: 36px 52px 32px;
}

/* ── Corner ornaments ─────────────────────────────────────────────────── */
.corner {
  position: absolute;
  width: 16px;
  height: 16px;
  border-color: #e8e0cc;
  border-style: solid;
  opacity: 0.7;
}
.corner.tl { top: -1px;  left: -1px;  border-width: 2px 0 0 2px; }
.corner.tr { top: -1px;  right: -1px; border-width: 2px 2px 0 0; }
.corner.bl { bottom: -1px; left: -1px;  border-width: 0 0 2px 2px; }
.corner.br { bottom: -1px; right: -1px; border-width: 0 2px 2px 0; }

/* ── Header ───────────────────────────────────────────────────────────── */
.cinema-header {
  display: flex;
  align-items: center;
  gap: 14px;
  margin-bottom: 24px;
}

.header-rule {
  flex: 1;
  height: 1px;
  background: rgba(232, 224, 204, 0.4);
}

.header-text {
  font-size: 13px;
  font-weight: 700;
  letter-spacing: 0.38em;
  text-transform: uppercase;
  color: #e8d0cc;
  white-space: nowrap;
}

/* ── Body ─────────────────────────────────────────────────────────────── */
.cinema-body {
  font-size: 0.88em;
  line-height: 1.9;
  text-align: justify;
  color: rgba(232, 224, 204, 0.88);
}

.cinema-body :deep(p) {
  margin: 0 0 0.9em;
}
.cinema-body :deep(p:last-child) {
  margin-bottom: 0;
}
.cinema-body :deep(strong) {
  color: #ffffff;
  letter-spacing: 0.04em;
}
.cinema-body :deep(em) {
  color: rgba(232, 224, 204, 0.62);
  font-style: italic;
}
.cinema-body :deep(ul),
.cinema-body :deep(ol) {
  padding-left: 1.5em;
  margin: 0.4em 0 0.9em;
}
.cinema-body :deep(li) {
  margin-bottom: 0.3em;
}
.cinema-body :deep(li::marker) {
  color: rgba(232, 224, 204, 0.5);
}

/* ── Footer ───────────────────────────────────────────────────────────── */
.cinema-footer {
  margin-top: 24px;
}
.footer-rule {
  height: 1px;
  background: rgba(232, 224, 204, 0.25);
}
</style>
