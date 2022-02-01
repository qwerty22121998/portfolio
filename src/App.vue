<script setup>
import Nav from "@/pages/Nav.vue";
import Intro from "@/pages/Intro.vue";
import Work from "@/pages/Work.vue";
import AboutMe from "@/pages/AboutMe.vue";
import Project from "@/pages/Project.vue";
</script>

<template>
  <Nav class="sticky top-0 z-50" />
  <div class="scroll-hide">
    <div class="container mx-auto w-8/12">
      <Intro />
      <Work />
      <Project />
      <AboutMe />
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
