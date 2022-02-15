<template>
  <div :id="id" class="flex flex-col min-h-screen xl:h-screen relative w-full">
    <slot name="title">
      <div v-if="title" class="pt-14 pb-5 text-5xl font-bold">{{ title }}</div>
    </slot>
    <div class="h-full screen-content">
      <slot />
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  id: "",
  title: "",
});
</script>

<style></style>
