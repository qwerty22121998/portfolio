<template>
  <div
    class="flex flex-col border p-5 shadow h-full justify-between bg-slate-100"
  >
    <div>
      <div class="pl-2 py-3 text-2xl bg-black text-white">{{ name }}</div>
      <div v-if="tags" class="text-slate-500 text-xs py-1">
        <span v-for="tag in tags" :key="tag"> #{{ tag }} </span>
      </div>
      <hr />
    </div>
    <div class="text-base">{{ short }}</div>
    <img :src="img" />
    <div class="flex space-x-5 pt-5 justify-between">
      <div v-if="source">
        <a :href="source" class="underline">
          <i class="fa-brands fa-github" /> Source code
        </a>
      </div>
      <div v-if="live">
        <a :href="live" class="underline">
          <i class="fa-solid fa-satellite-dish relative">
            <i class="fa-satellite-dish absolute top-0 left-0 animate-ping" />
          </i>
          Live demo
        </a>
      </div>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  name: "",
  tags: null,
  short: "",
  long: "",
  live: "",
  source: "",
  img: "",
});
</script>

<style></style>
