<template>
  <div class="flex justify-end pr-5 bg-black text-white py-3">
    <div
      class="flex justify-end space-x-4"
      v-scroll-spy-active="{ selector: '.menu-item' }"
    >
      <div
        v-for="item in menu"
        :key="item.name"
        class="menu-item"
        @click="active(item.name)"
      >
        <a class="menu-link" :href="item.url"> [{{ item.name }}] </a>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";

const menu = [
  {
    name: "Home",
    url: "#home",
  },
  {
    name: "Work",
    url: "#work",
  },
  {
    name: "Project",
    url: "#project",
  },
  {
    name: "About Me",
    url: "#about-me",
  },
  // {
  //   name: "Connect",
  //   url: "#connect",
  // },
];

const activated = ref("Home");

const active = (name) => {
  activated.value = name;
};
</script>

<style>
.active {
  color: red;
  transform: scale(1.3) rotateZ(10deg);
}
.menu-item {
  transition-duration: 0.5s;
}
</style>
