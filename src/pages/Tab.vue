<template>
  <div class="flex justify-center items-start">
    <div class="flex w-6/12 flex-col">
      <div class="flex justify-evenly btn cursor-pointer">
        <div
          v-for="tab in tabs"
          :key="tab"
          @click="active(tab)"
          :class="`border-t ${activeTab == tab.name ? 'border-black text-black opacity-100' : 'opacity-50'}`"
        >
          <div class="text-xs uppercase font-bold my-3 flex items-center">
            <img class="mr-2 w-4" :src="tab.icon"/>
            {{ tab.name }}
            </div>
        </div>
      </div>
      <div>
        <Career />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";
import Career from "@/pages/Career.vue";

const tabs = [
  {
    icon: "/task.svg",
    name: "career",
  },
  {
    icon: "/edu.svg",
    name: "education",
  },
  {
    icon: "/idea.svg",
    name: "project",
  },
];
let activeTab = ref("career");

const active = (tab) => {
  activeTab.value = tab.name;
};
</script>

<style>
.btn {
  transform: translateY(-1px);
}
</style>
