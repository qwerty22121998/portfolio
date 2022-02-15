<script setup>
import Nav from "@/pages/Nav.vue";
import Intro from "@/pages/Intro.vue";
import Work from "@/pages/Work.vue";
import AboutMe from "@/pages/AboutMe.vue";
import Project from "@/pages/Project.vue";
import Contact from "@/pages/Contact.vue";
import Footer from "@/pages/Footer.vue";
</script>

<template>
  <div class="sticky top-0 z-50">
    <Nav class="absolute top-0 w-full z-50" />
  </div>
  <div class="scroll-hide">
    <div v-scroll-spy="{ offset: 50 }" class="flex flex-col">
      <Intro />
      <AboutMe class="w-8/12 mx-auto" />
      <Work class="w-8/12 mx-auto" />
      <Project class="w-8/12 mx-auto" />
      <Contact class="w-8/12 mx-auto" />
      <Footer />
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
