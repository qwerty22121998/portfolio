<template>
  <div class="basis-full lg:basis-1 flex-1 cursor-pointer">
    <div
      class="flex w-full h-full justify-center items-center text-center p-1 2xl:p-7 overlay"
    >
      <div
        :class="[
          'flex basis-full flex-col justify-between p-2 h-full relative work-item hover:translate-y-px hover:opacity-80',
          ...modelValue.class,
        ]"
        @click="click"
      >
        <div
          v-if="modelValue.working"
          class="absolute top-5 left-5 animate-bounce"
        >
          Working
        </div>
        <div class="h-full flex items-center">
          <img
            class="max-h-1/2 m-5 object-cover mx-auto mb-5"
            :src="modelValue.image"
          />
        </div>
        <div>
          <div class="text-xl font-bold">
            {{ modelValue.name }}
          </div>
          <div>{{ modelValue.from }} - {{ modelValue.to }}</div>
          <div>
            <span class="text-sm">{{ modelValue.position }}</span>
          </div>
          <div class="space-x-2 text-xl">
            <i
              v-for="tech in modelValue?.techs || []"
              :key="tech"
              :class="['fa-brands', tech]"
            />
          </div>
        </div>
        <div class="hint absolute top-2 right-2">
          <span class="text-white text-3xl fa fa-chevron-right" />
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
