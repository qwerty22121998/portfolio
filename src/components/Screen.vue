<template>
  <div :id="id" class="flex min-h-screen relative">
    <div class="w-full">
      <slot name="title">
        <div class="text-5xl font-bold">{{ title }}</div>
      </slot>
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
