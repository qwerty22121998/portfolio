<template>
  <div class="bg-insta flex justify-center">
    <div class="flex w-6/12 py-8 border-b">
      <div class="basis-1/3">
        <div class="flex w-100 justify-center items-center">
          <img class="object-cover rounded-full w-40 h-40" src="/ava.jpg"/>
        </div>
      </div>
      <div class="flex flex-col basis-2/3">
        <span class="text-3xl">vu.ho</span>
        <div class="flex space-x-10 my-5">
          <span><b>{{difYear}}</b> years</span>
          <span><b>{{difMonth}}</b> months</span>
          <span><b>{{difDay}}</b> days</span>
        </div>
        <div><b>Hồ Khánh Vũ</b></div>
      </div>
    </div>
  </div>
</template>
<script setup>
import { computed } from "@vue/runtime-core"

const birthDay = new Date(1998, 11,22)

const dif = computed(() => new Date(new Date().getTime() - birthDay.getTime()))

const difYear = computed(() => dif.value.getUTCFullYear() - 1970)
const difMonth = computed(() => dif.value.getUTCMonth())
const difDay = computed(() => dif.value.getUTCDay())

</script>
<style>
.ava {
  width: 150px;
  height: 150px;
}
</style>
