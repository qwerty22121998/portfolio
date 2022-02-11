<template>
  <Screen id="work" title="Work experience">
    <div class="h-full flex items-center justify-center pb-20">
      <Works>
        <Work v-for="(work, idx) in exp" :key="idx" v-model="exp[idx]" />
      </Works>
    </div>
  </Screen>
</template>

<script setup>
import { ref } from "@vue/reactivity";
import NextPage from "../components/NextPage.vue";

import Works from "@/components/work/Works.vue";
import Work from "@/components/work/Work.vue";
import Screen from "@/components/Screen.vue";

const show = ref(0);

const active = (idx) => {
  if (idx == show.value) {
    show.value = -1;
    return;
  }
  show.value = idx;
};

const exp = [
  {
    homepage: "https://onemount.com",
    working: true,
    class: ["text-white bg-black"],
    imgClass: [],
    name: "One Mount Group",
    image: "/onemount.webp",
    position: "Back-end Developer",
    from: "May.2021",
    to: "Now",
    techs: ["fa-golang"],
    desc: "As a <b>back-end developer</b>. I work with VinShop team to build a B2B2C platform for <b>One Distribution</b>, a part of <b>One Mount Group</b>, Vietnam’s largest technological ecosystem that creates solutions along the entire value chain, starting with retail, distribution, real estate, and financial services.<br/>I'm core developer of <b>Fund management</b> that handle fund/budget allocations and transactions tracking in real time.",
  },
  {
    homepage: "https://giaohangtietkiem.vn",
    class: ["bg-green-600"],
    name: "Giao Hang Tiet Kiem",
    image: "/ghtk.png",
    position: "Full-stack Developer",
    techs: ["fa-vuejs", "fa-golang"],
    from: "Oct.2019",
    to: "May.2021",
    desc: "As a <b>full-stack developer</b> of the best Vietnamese E-Commerce platform. I've built and maintained many sub-projects like <b>E-Invoice management system</b>, <b>Cash Flow management system</b> and <b>banking integrated system</b>",
  },
  {
    homepage: "https://cyradar.com",
    class: ["bg-blue-400"],
    imgClass: [],
    name: "CyRadar",
    image: "/cyradar.png",
    position: "Full-stack Intern",
    techs: ["fa-vuejs", "fa-golang"],
    desc: "I have a good time as <b>intern</b> in CyRadar, a pioneer cyber security company which applies many modern technologies to provides next-gen security solution",
    from: "2018",
    to: "2019",
  },
];
</script>

<style>
.work-exp {
  transition-duration: 0.125s;
  min-width: 100px;
}
</style>
