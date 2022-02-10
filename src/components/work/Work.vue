<template>
  <div class="flex-1 cursor-pointer">
    <div
      class="flex w-full h-full justify-center items-center text-center p-10"
    >
      <div
        :class="[
          'flex flex-col border p-10 justify-between h-full relative work-item',
          ...modelValue.class,
        ]"
        @click="click"
      >
        <Overlay class="overlay">
          <div class="hint absolute top-2 right-2">
            <span class="text-white text-3xl fa fa-chevron-right" />
          </div>
        </Overlay>
        <div
          v-if="modelValue.working"
          class="absolute top-5 left-5 animate-bounce"
        >
          Working
        </div>
        <img class="object-cover mx-auto mb-5" :src="modelValue.image" />
        <div>
          <div class="text-2xl font-bold">
            {{ modelValue.name }}
          </div>
          <div class="text-xl">[{{ modelValue.position }}]</div>
          <div>{{ modelValue.from }} - {{ modelValue.to }}</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import Overlay from "@/components/Overlay.vue";
import { computed, inject, ref, watch } from "@vue/runtime-core";

const data = inject("dataWork");
const select = inject("clickWork");

const props = defineProps({
  modelValue: null,
  classList: {
    default: [],
  },
});

const sym = Symbol();

const active = computed(() => sym == data.active);

const click = () => {
  select(sym, props.modelValue);
};
</script>

<style scoped lang="postcss">
.work-item {
  opacity: 80%;
  &:hover {
    opacity: 100%;
  }
}
.overlay {
  .hint {
    opacity: 0;
    transition-duration: 0.5s;
    z-index: inherit;
  }
  &:hover {
    .hint {
      opacity: 40%;
    }
  }
}
</style>
