<template>
  <div class="relative overflow-visible">
    <div
      :class="[
        'button bg-black text-white button p-5 cursor-pointer hover:translate-y-1 transition-all shadow-lg',
        isActive ? ' button--active' : '',
      ]"
      @click="click"
    >
      <slot />
    </div>
  </div>
</template>

<script setup>
import { ref, toRef } from "@vue/reactivity";
import { watch } from "@vue/runtime-core";

const props = defineProps({
  active: false,
});

const isActive = toRef(props, "active");
</script>

<style scoped lang="postcss">
.button {
  &--active {
    box-shadow: 0rem 1rem 0 -0.25rem red;
  }
}
</style>
