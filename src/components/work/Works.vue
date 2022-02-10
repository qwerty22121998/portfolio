<template>
  <div class="flex relative w-full">
    <div class="flex flex-wrap justify-between w-full">
      <slot />
    </div>
    <div
      :class="[
        'work absolute w-full h-full top-0 z-auto popup cursor-pointer',
        data.active ? 'left-0' : 'work--hidden',
      ]"
      @click="clickWork(null)"
    >
      <div
        :class="[
          'flex flex-wrap lg:flex-nowrap h-full w-full relative',
          ...(data.activeData?.class || []),
        ]"
      >
        <div
          v-if="data.activeData?.working"
          class="absolute top-5 left-5 animate-bounce text-xl"
        >
          Working
        </div>
        <div class="mx-auto max-w-80">
          <img
            class="object-contain p-10 w-full h-full"
            :src="data.activeData?.image"
          />
        </div>
        <div class="flex flex-col w-full p-5">
          <div class="text-4xl font-bold mx-auto">
            {{ data.activeData?.name }}
          </div>
          <div class="text-2xl mx-auto">[{{ data.activeData?.position }}]</div>
          <div class="text-xl mx-auto">
            {{ data.activeData?.from }} - {{ data.activeData?.to }}
          </div>

          <div class="pt-5" v-html="data.activeData?.desc" />
          <div
            class="pt-5 opacity-80 hover:opacity-100 hover:underline hover:underline-offset-1"
          >
            <a :href="data.activeData?.homepage">
              <i class="fa fa-home mr-2" />{{ data.activeData?.homepage }}
            </a>
          </div>
        </div>
      </div>
      <div class="right-2 top-1 absolute">
        <i class="opacity-0 text-white back-btn text-9xl fa fa-chevron-left" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { computed, provide, reactive, ref, useSlots } from "@vue/runtime-core";
import Work from "./Work.vue";
import Overlay from "@/components/Overlay.vue";
const slot = useSlots();

const data = reactive({
  active: null,
  activeData: {},
});

const clickWork = (id, activeData = data.activeData) => {
  data.active = data.active == id ? null : id;
  data.activeData = activeData;
};

provide("dataWork", data);
provide("clickWork", clickWork);
</script>

<style scoped lang="postcss">
.work {
  transition-duration: 0.3s;
  overflow: hidden;
  transform-origin: 50% 50%;
  &--hidden {
    transform: scaleX(1.1);
    z-index: -1;
    opacity: 0;
  }
}
.popup {
  .back-btn {
    transition-duration: 0.3s;
  }
  &:hover {
    .back-btn {
      opacity: 20%;
    }
  }
}
</style>
