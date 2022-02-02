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
      <WorkExp
        v-for="work in exp"
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
</template>

<script setup>
import NextPage from "../components/NextPage.vue";
import WorkExp from "../components/WorkExp.vue";
const exp = [
  {
    working: true,
    class: ["basis-full text-white bg-black"],
    imgClass: [],
    name: "One Mount Group",
    image: "/onemount.webp",
    from: "May.2021",
    desc: "As a <b>back-end developer</b>. I work with VinShop team to build a B2B2C platform for <b>One Distribution</b>, a part of <b>One Mount Group</b>, Vietnam’s largest technological ecosystem that creates solutions along the entire value chain, starting with retail, distribution, real estate, and financial services.<br/>I'm core developer of <b>Fund management</b> that handle fund/budget allocations and transactions tracking in real time.",
  },
  {
    class: ["basis-full lg:basis-1/2 bg-green-600"],
    name: "Giao Hang Tiet Kiem",
    image: "/ghtk.webp",
    from: "Oct.2019",
    to: "May.2021",
    desc: "As a <b>full-stack developer</b> of the best Vietnamese E-Commerce platform. I've built and maintained many sub-projects like <b>E-Invoice management system</b>, <b>Cash Flow management system</b> and <b>banking integrated system</b>",
  },
  {
    class: ["basic-full lg:basis-1/2 bg-blue-400"],
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
#work {
}
</style>
