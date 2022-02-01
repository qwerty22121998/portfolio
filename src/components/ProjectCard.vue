<template>
  <div class="flex flex-col border p-5 shadow h-full justify-between">
    <div class="text-2xl bg-black text-white">{{ name }}</div>
    <div v-if="tags">
      <span v-for="tag in tags" :key="tag"> #{{ tag }} </span>
    </div>
    <hr />
    <div class="text-xl">{{ short }}</div>
    <img :src="img" />
    <div class="flex space-x-5 justify-between">
      <div v-if="source">
        <a :href="source" class="underline">
          <i class="fa-solid fa-code"></i>
          Source code
        </a>
      </div>
      <div v-if="live">
        <a :href="live" class="underline">
          <i class="fa-solid fa-satellite-dish" /> Live demo
        </a>
      </div>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  name: "",
  tags: [],
  short: "",
  long: "",
  live: "",
  source: "",
  img: "",
});
</script>

<style></style>
