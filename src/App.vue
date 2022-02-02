<script setup>
import Nav from "@/pages/Nav.vue";
import Intro from "@/pages/Intro.vue";
import Work from "@/pages/Work.vue";
import AboutMe from "@/pages/AboutMe.vue";
import Project from "@/pages/Project.vue";
import Connect from "@/pages/Connect.vue";
</script>

<template>
  <div class="sticky top-0 z-50">
    <Nav class="absolute top-0 w-full z-50" />
  </div>
  <div class="scroll-hide">
    <div v-scroll-spy="{ offset: 50 }">
      <Intro class="pt-14" />
      <Work class="pt-14" />
      <Project class="pt-14" />
      <AboutMe class="pt-14" />
      <!-- <Connect /> -->
    </div>
  </div>
</template>

<style>
html {
  font-family: JetBrains Mono !important;
  scroll-behavior: smooth;
  background: #fafafa;
}
</style>
