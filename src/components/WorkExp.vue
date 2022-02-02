<template>
  <div
    :class="[
      'flex flex-col items-center justify-evenly shadow-inner px-10 relative zoom',
      divClass,
    ]"
    @click="toggle"
  >
    <div v-if="working" class="absolute top-12 left-10 animate-bounce">
      Currently working
    </div>
    <div class="text-3xl">{{ name }}</div>
    <img :src="image" :class="['w-1/2', ...(imgClass || [])]" />
    <div v-html="short"></div>
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";

const props = defineProps({
  working: false,
  divClass: [],
  image: "",
  imgClass: [],
  name: "",
  short: "",
  detail: "",
});

const expand = ref(false);

const toggle = () => {
  expand.value = !expand.value;
};
</script>

<style></style>
