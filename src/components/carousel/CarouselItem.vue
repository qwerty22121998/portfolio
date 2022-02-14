<template>
  <div
    :id="id"
    :class="[
      'carousel-item col-start-1 row-start-1 duration-200',
      active ? 'carousel-item--active' : 'pointer-events-none',
    ]"
  >
    <slot />
  </div>
</template>

<script setup>
import { computed, inject } from "@vue/runtime-core";

const props = defineProps({
  id: "",
});

const carouselActive = inject("carousel-active");

const active = computed(() => {
  return carouselActive.value == props.id;
});
</script>

<style scoped lang="postcss">
.carousel-item {
  opacity: 0;
  transform: translateX(100px);
  &--active {
    opacity: 1;
    transform: translateX(0);
  }
}
</style>
