<template>
  <div class="grid grid-cols-3 gap-4">
    <div
      v-for="item in items"
      :key="item.name"
      class="img cursor-pointer relative"
    >
      <img :src="item.logo" :alt="item.name" />
      <div
        class="
          absolute
          w-full
          h-full
          top-0
          left-0
          hover:opacity-100
          opacity-0
          bg-black bg-opacity-50
          flex
          justify-center
          items-center
          text-white
        "
      >
        <div v-if="item.content"></div>
        <div v-else>
          <p>{{ item.name }}</p>
          <p>From : {{ item.from }}</p>
          <p>To: {{ item.to }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  items: []
})
</script>

<style scoped>
.img {
  max-width: 290px;
  max-height: 290px;
}
</style>
