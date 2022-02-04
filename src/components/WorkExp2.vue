<template>
  <div :class="['work flex']">
    <div :class="['flex w-full h-full relative', ...divClass]">
      <div class="p-10">
        <img class="object-contain w-full h-full mx-auto" :src="image" />
      </div>
      <div
        :class="[
          ' w-full space-y-10',
          active
            ? ' text-3xl pt-10 text-center flex-col'
            : 'absolute bottom-0 text-center',
        ]"
      >
        <b>{{ name }}</b>
        <div class="text-xl text-left" v-if="active" v-html="short"></div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";

const props = defineProps({
  working: false,
  divClass: [],
  image: "",
  imgClass: [],
  name: "",
  short: "",
  detail: "",
  from: "",
  to: "",
  active: false,
});

const expand = ref(false);

const toggle = () => {
  expand.value = !expand.value;
};
</script>

<style>
.work {
  transition-duration: 0.2s;
  min-height: 500px;
}
</style>
