<template>
  <div class="grid grid-cols-1">
    <slot />
  </div>
  {{ value }}
</template>

<script setup>
import { provide, toRef } from "@vue/runtime-core";

const props = defineProps({
  modelValue: "",
});

const value = toRef(props, "modelValue");

provide("carousel-active", value);
</script>

<style>
.carousel {
}
</style>
