<template>
  <div class="flex justify-end pr-5 bg-black text-white py-3">
    <div class="flex justify-end space-x-4">
      <div
        v-for="item in menu"
        :key="item.name"
        :class="[activated == item.name ? 'active' : '']"
        @click="active(item.name)"
      >
        <a :href="item.url"> [{{ item.name }}] </a>
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
  transition-duration: 0.5s;
}
</style>
