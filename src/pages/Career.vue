<template>
  <div class="grid grid-cols-3 gap-4">
    <div
      v-for="item in career"
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
        <div>
          <p>{{ item.name }}</p>
          <p>From : {{ item.from }}</p>
          <p>To: {{ item.to }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const career = [
  {
    logo: "/onemount.png",
    name: "One Mount",
    from: "2021",
    to: "now",
  },
  {
    logo: "/ghtk.jpg",
    name: "Giao Hang Tiet Kiem",
    from: "2019",
    to: "2021",
  },
  {
    logo: "/cyradar.png",
    name: "CyRadar",
    from: "2018",
    to: "2019",
  },
  {
    logo: "/js.png",
    name: "JS Club",
    from: "2018",
    to: "2019",
  },
];
</script>

<style scoped>
.img {
  max-width: 290px;
  max-height: 290px;
}
</style>
