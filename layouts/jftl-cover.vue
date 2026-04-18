<template>
  <!-- JFTL 2026 title slide layout — all positions are % of 1280×720 viewport -->
  <div class="jftl-cover">

    <!-- Background image -->
    <img src="/jftl-bg.jpg" class="cover-bg" alt="" aria-hidden="true" />

    <!-- Crimson shape — top-left -->
    <div class="cover-crimson">
        <!-- Speaker first name -->
        <div class="cover-firstname">Pierre-Yves</div>

        <!-- Speaker last name -->
        <div class="cover-lastname">PAMART</div>

        <!-- Presentation title (Markdown slot) -->
        <div class="cover-title">
             <slot />
        </div>
    </div>
    
    <!-- White bar — background for the date/venue/logo strip -->
    <div class="cover-bar-bg">
        <!-- Event date -->
        <div class="cover-date">9 juin 2026</div>

        <!-- Venue -->
        <div class="cover-venue">BEFFROI DE MONTROUGE</div>    
    </div>

    <!-- Company logo -->
    <div class="cover-soc-logo-wrap">
      <img src="/jftl-soc-logo.png" alt="Company logo" class="cover-soc-logo" />
    </div>

    <!-- JFTL logo — top-right corner -->
    <img src="/jftl-logo-top.png" alt="JFTL 2026" class="cover-jftl-logo" aria-hidden="true" />

    <!-- CFTL branding box — bottom-right corner -->
    <div class="cover-branding-box">
      <img src="/jftl-logo-cftl.png" alt="CFTL" class="cover-cftl-logo" />
    </div>

    <!-- Speaker photo — circular crop -->
    <div class="cover-photo">
      <img src="/jftl-speaker-photo.jpg" alt="Pierre-Yves PAMART" />
    </div>

  </div>
</template>

<style scoped>
/* JFTL Cover Layout — positions are percentages of the 1280×720 slide viewport */

/* ── Root container ── */
.jftl-cover {
  position: relative;
  width: 100%;
  height: 100%;
  font-family: 'Open Sans', sans-serif;
  color: #ffffff;
  overflow: hidden;
  background: #1a1e2e; /* fallback if background image fails to load */
}

/* ── Background image ── */
.cover-bg {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center;
  z-index: 0;
}

/* ── Crimson shape — top-left */
.cover-crimson {
  position: absolute;
  width: 55.5%;
  height: 58%;
  z-index: 1;
  padding: 1%;
  background: #BB3949;
}

/* Stack content and pin to bottom of the crimson block */
.cover-crimson {
  display: flex;
  flex-direction: column;
}

/* ── Speaker first name ── */
.cover-firstname {
  position: relative;
  font-style: italic;
  font-weight: 400;
  font-size: 43px;
  line-height: 1;
  color: #ffffff;
  white-space: nowrap;
  z-index: 3;
}

/* ── Speaker last name ── */
.cover-lastname {
  position: relative;
  font-weight: 700;
  font-size: 56px;
  line-height: 1;
  color: #ffffff;
  white-space: nowrap;
  z-index: 3;
}

/* ── Presentation title (slot) ── */
.cover-title {
  position: relative;
  font-weight: 400;
  font-size: 24px;
  line-height: 1.4;
  color: #ffffff;
  z-index: 3;
  /* push this element to the bottom of the crimson block */
  margin-top: auto;
}

.cover-title :deep(p) {
  margin: 0;
}

/* ── White bar — date/venue/logo strip, overflows left edge ── */
.cover-bar-bg {
  position: absolute;
  top: 57.6%;
  width: 55.5%;
  height: 13.9%;
  background: #ffffff;
  z-index: 2;
}

/* ── Event date ── */
.cover-date {
  position: relative;
  font-weight: 700;
  font-size: 30px;
  color: #1a1e2e;
  text-align: center;
  z-index: 3;
}

/* ── Venue ── */
.cover-venue {
  position: relative;
  font-weight: 400;
  font-size: 22px;
  color: #1a1e2e;
  white-space: nowrap;
  z-index: 3;
  letter-spacing: 0.04em;
  text-align: center;
}

/* ── Company logo ── */
.cover-soc-logo-wrap {
  position: absolute;
  left: 14.0%;
  top: 79.9%;
  width: 30%;
  height: 17.4%;
  display: flex;
  align-items: center;
  z-index: 3;
}

.cover-soc-logo {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
  object-position: left center;
}

/* ── JFTL logo — top-right corner, slight overflow ── */
.cover-jftl-logo {
  position: absolute;
  left: 87.0%;
  top: -0.14%;
  width: 14.3%;
  height: auto;
  z-index: 3;
}

/* ── CFTL branding box — bottom-right corner ── */
.cover-branding-box {
  position: absolute;
  left: 87.8%;
  top: 80%;
  width: 11.1%;
  height: 20%;
  background: #02111B;
  border-radius: 6px 6px 0 0;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 3;
  overflow: hidden;
}

.cover-cftl-logo {
  width: 72%;
  height: auto;
  object-fit: contain;
}

/* ── Speaker photo — circular crop, right half of slide ── */
.cover-photo {
  position: absolute;
  left: 51.4%;
  top: 39.6%;
  width: 26.25%;
  aspect-ratio: 1 / 1;
  border-radius: 50%;
  overflow: hidden;
  border: 4px solid #ffffff;
  z-index: 4;
}

.cover-photo img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center 5%;
}
</style>
