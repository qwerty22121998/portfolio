<template>
  <div class="index">
    <div
      class="flex sticky top-0 h-16 border bg-white justify-center items-center"
    >
      <div class="flex w-6/12">
        <div class="flex-1 instagram">Ho Khanh Vu
            <span class="im im-home"/>

        </div>
        <div class="flex-1">2</div>
        <div class="flex-1">3</div>
      </div>
    </div>
    <AboutMe/>
    <Tab/>
  </div>
</template>

<script setup>
import AboutMe from "@/pages/AboutMe.vue"
import Tab from '@/pages/Tab.vue'
</script>

<style>
.instagram {
  font-family: Instagram;
  font-size: 26px;
}
.index {
  background: #fafafa;
}
</style>
