<template>
  <Screen id="about-me" title="About me">
    <div class="flex space-x-5 pt-3">
      <Button :active="section == 'intro'" @click="select('intro')">
        <span class="text-xl">Introduction</span>
      </Button>

      <Button :active="section == 'edu'" @click="select('edu')">
        <span class="text-xl">Education & Reward</span>
      </Button>
    </div>
    <Carousel class="pt-2" v-model="section">
      <CarouselItem id="intro">
        <Intro />
      </CarouselItem>
      <CarouselItem id="edu">
        <div>#TODO</div>
      </CarouselItem>
    </Carousel>
  </Screen>
</template>

<script setup>
import Screen from "@/components/Screen.vue";
import Button from "@/components/Button.vue";
import Intro from "@/components/Introduction.vue";
import Edu from "@/components/Edu.vue";
import Carousel from "@/components/carousel/Carousel.vue";
import CarouselItem from "@/components/carousel/CarouselItem.vue";
import { ref } from "@vue/reactivity";

const section = ref("intro");

const select = (op) => {
  section.value = op;
};
</script>

<style scoped>
.deactivated {
  transform: translateX(50px);
  opacity: 0;
}

.tab {
  transform-origin: 0 0;
  transition: all 300ms;
}
</style>
