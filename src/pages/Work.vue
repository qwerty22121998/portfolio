<template>
  <div id="work" class="flex min-h-screen pb-3 relative">
    <NextPage>
      <template #top>
        <a href="#home"> <i class="fa-solid fa-hand-point-up" /> Home </a>
      </template>
      <template #bottom>
        <a href="#project">
          <i class="fa-solid fa-hand-point-down" /> Project
        </a>
      </template>
    </NextPage>
    <div class="flex flex-wrap mx-auto w-8/12">
      <div class="basis-full">
        <div class="text-5xl">Work Experience</div>
      </div>
      <div
        v-for="work in exp"
        :key="work.name"
        :class="[
          'flex flex-col items-center justify-evenly shadow-inner p-10 relative zoom ',
          ...work.class,
        ]"
      >
        <div v-if="work.working" class="absolute top-12 left-10 animate-bounce">
          Currently working
        </div>
        <div class="text-3xl">{{ work.name }}</div>
        <img :src="work.image" :class="['w-1/2', ...(work.imgClass || [])]" />
        <div v-html="work.desc"></div>
      </div>
    </div>
  </div>
</template>

<script setup>
import NextPage from "../components/NextPage.vue";
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
