<template>
  <div id="work" class="flex min-h-screen pb-3 relative">
    <div class="mx-auto w-8/12">
      <div class="text-5xl font-bold">Work Experience</div>
      <div class="flex flex-nowrap pt-10 w-full">
        <WorkExp
          v-for="(work, idx) in exp"
          @click="active(idx)"
          :class="[
            'work-exp flex-1',
            idx == show ? 'grow' : show == -1 ? '' : 'grow-0',
          ]"
          :active="idx == show"
          :thumb="show == -1"
          :key="work.name"
          :working="work.working"
          :divClass="work.class"
          :image="work.image"
          :imgClass="work.imgClass"
          :name="work.name"
          :short="work.desc"
          :from="work.from"
          :to="work.to"
        />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";
import NextPage from "../components/NextPage.vue";
import WorkExp from "../components/WorkExp2.vue";

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
    working: true,
    class: ["text-white bg-black"],
    imgClass: [],
    name: "One Mount Group",
    image: "/onemount.webp",
    from: "May.2021",
    desc: "As a <b>back-end developer</b>. I work with VinShop team to build a B2B2C platform for <b>One Distribution</b>, a part of <b>One Mount Group</b>, Vietnam’s largest technological ecosystem that creates solutions along the entire value chain, starting with retail, distribution, real estate, and financial services.<br/>I'm core developer of <b>Fund management</b> that handle fund/budget allocations and transactions tracking in real time.",
  },
  {
    class: ["bg-green-600"],
    name: "Giao Hang Tiet Kiem",
    image: "/ghtk.png",
    from: "Oct.2019",
    to: "May.2021",
    desc: "As a <b>full-stack developer</b> of the best Vietnamese E-Commerce platform. I've built and maintained many sub-projects like <b>E-Invoice management system</b>, <b>Cash Flow management system</b> and <b>banking integrated system</b>",
  },
  {
    class: ["bg-blue-400"],
    imgClass: [],
    name: "CyRadar",
    image: "/cyradar.png",
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
