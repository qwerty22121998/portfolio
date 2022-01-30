<template>
  <div class="flex justify-center items-start">
    <div class="flex w-6/12 flex-col">
      <div class="flex justify-evenly btn">
        <div
          v-for="tab in tabs"
          :key="tab"
          @click="active(tab)"
          :class="`border-t ${activeTab == tab ? 'border-black' : ''}`"
        >
          <div class="text-xs uppercase font-bold my-3">{{ tab }}</div>
        </div>
      </div>
      <div>
        <Career/>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";
import Career from "@/pages/Career.vue"

const tabs = ["career", "education", "project"];
let activeTab = ref("career");

const active = (tab) => {
  activeTab.value = tab;
};
</script>

<style>
.btn {
  transform: translateY(-1px);
}
</style>
