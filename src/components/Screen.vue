<template>
  <div :id="id" class="flex min-h-screen relative">
    <div class="w-full">
      <div class="text-5xl font-bold">{{ title }}</div>
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
