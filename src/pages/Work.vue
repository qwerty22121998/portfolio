<template>
  <div id="work" class="flex flex-wrap justify-center min-h-screen">
    <div
      v-for="work in exp"
      :key="work.name"
      :class="[
        'flex flex-col items-center justify-evenly p-10 relative',
        ...work.class,
      ]"
    >
      <div v-if="work.working" class="absolute top-12 left-10 float">
        Currently working
      </div>
      <div class="text-3xl">{{ work.name }}</div>
      <img :src="work.image" :class="['w-1/2', ...(work.imgClass || [])]" />
      <div v-html="work.desc"></div>
    </div>
  </div>
</template>

<script setup>
const exp = [
  {
    working: true,
    class: ["basis-full text-white bg-black"],
    imgClass: ["invert"],
    name: "One Mount Group",
    image: "/onemount.webp",
    desc: "As a <b>back-end developer</b>. I work with VinShop team to build a B2B2C platform for <b>One Distribution</b>, a part of <b>One Mount Group</b>, Vietnam’s largest technological ecosystem that creates solutions along the entire value chain, starting with retail, distribution, real estate, and financial services.",
  },
  {
    class: ["basis-full lg:basis-1/2 bg-green-600"],
    name: "Giao Hang Tiet Kiem",
    image: "/ghtk.webp",
    desc: "As a <b>full-stack developer</b> of the best Vietnamese E-Commerce platform. I've built and maintained many sub-projects like E-Invoice management system, Cash Flow management system and banking integrated system",
  },
  {
    class: ["basic-full lg:basis-1/2 bg-blue-400"],
    imgClass: [],
    name: "CyRadar",
    image: "/cyradar.png",
    desc: "I have a good time as <b>intern</b> in CyRadar, a pioneer cyber security company which applies many modern technologies to provides next-gen security solution",
  },
];
</script>

<style>
#work {
}
</style>
