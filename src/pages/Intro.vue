<template>
  <div id="intro" class="relative">
    <div class="flex flex-col justify-center h-screen w-full">
      <div class="flex flex-col mx-20 space-y-5">
        <div class="text-4xl">Hello</div>
        <div class="text-4xl">I'm Ho Khanh Vu</div>
        <div class="text-3xl">Fullstack Developer</div>
        <div class="text-xl">Currently working in @OneMount</div>
        <div class="flex space-x-2">
          <div v-for="(ref, idx) in urls" :key="idx">
            <a :href="ref.url">
              <img :src="ref.src" />
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script setup>
import { computed } from "@vue/runtime-core";

const rawUrls = [
  {
    url: "https://www.linkedin.com/in/vu-hk/",
    src: "../assets/linkedin.svg",
  },
  {
    url: "https://github.com/qwerty22121998",
    src: "../assets/github.svg",
  },
  {
    url: "https://www.facebook.com/khanhvu2212/",
    src: "../assets/facebook.svg",
  },
  {
    url: "https://www.instagram.com/vuho.hoho",
    src: "../assets/instagram.svg",
  },
  {
    url: new URL("../assets/CV.pdf", import.meta.url),
    src: "../assets/cv.svg",
  },
];

const urls = computed(() =>
  rawUrls.map((e) => ({
    url: e.url,
    src: new URL(e.src, import.meta.url),
  }))
);
</script>
<style>
#intro {
  background: #D3ECA7;
}
</style>
