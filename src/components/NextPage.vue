<template>
  <div
    v-if="enable"
    class="absolute pt-10 right-5 animate-bounce text-3xl z-40"
  >
    <slot name="top"></slot>
  </div>
  <div
    v-if="enable"
    class="absolute bottom-4 right-5 animate-bounce text-3xl z-40"
  >
    <slot name="bottom"></slot>
  </div>
</template>

<script setup>
const enable = false;
</script>

<style></style>
