<template>
  <Show :items="career"/>
</template>

<script setup>
import Show from "./Show.vue"
const career = [
  {
    logo: "/onemount.png",
    name: "One Mount",
    from: "2021",
    to: "now",
  },
  {
    logo: "/ghtk.jpg",
    name: "Giao Hang Tiet Kiem",
    from: "2019",
    to: "2021",
  },
  {
    logo: "/cyradar.png",
    name: "CyRadar",
    from: "2018",
    to: "2019",
  },
  {
    logo: "/js.png",
    name: "JS Club",
    from: "2018",
    to: "2019",
  },
];
</script>

<style scoped>
.img {
  max-width: 290px;
  max-height: 290px;
}
</style>
