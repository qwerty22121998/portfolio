<template>
  <div class="index">
    <div
      class="flex sticky top-0 h-16 border bg-white justify-center items-center"
    >
      <div class="flex w-6/12">
        <div class="flex-1 instagram">
          Ho Khanh Vu
          <span class="im im-home" />
        </div>
        <div class="flex-1"></div>
        <div class="flex-1 flex items-center justify-end space-x-2">
          <div v-for="ref in refs" :key="ref.name">
            <a :href="ref.url">
              <img :src="ref.icon" />
            </a>
          </div>
        </div>
      </div>
    </div>
    <AboutMe />
    <Tab />
  </div>
</template>

<script setup>
import AboutMe from "@/pages/AboutMe.vue";
import Tab from "@/pages/Tab.vue";

const refs = [
  {
    name: "linkedin",
    icon: "/linkedin.svg",
    url: "https://www.linkedin.com/in/vu-hk/",
  },
  {
    name: "github",
    icon: "/github.svg",
    url: "https://github.com/qwerty22121998",
  },
  {
    name: "facebook",
    icon: "/facebook.svg",
    url: "https://www.facebook.com/khanhvu2212/"
  },
  {
    name: "instagram",
    icon: "/instagram.svg",
    url: "https://www.instagram.com/vuho.hoho/"
  },
  {
    name: "cv",
    icon: "/cv.svg",
    url: "/CV.pdf"
  }
];
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
