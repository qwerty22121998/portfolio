<template>
  <div id="home" class="flex min-h-screen relative">
    <NextPage>
      <template #bottom>
        <a href="#work" class="animate-bounce text-3xl">
          <i class="fa-solid fa-hand-point-down"></i> My Work
        </a>
      </template>
    </NextPage>

    <div class="flex justify-center items-center mx-auto w-8/12">
      <div class="flex flex-auto justify-start">
        <div class="flex flex-col">
          <div class="text-6xl">Hello.</div>
          <div class="text-6xl">I'm Vu</div>
          <div class="text-6xl">
            a full-stack developer<span class="blink">_</span>
          </div>
          <div class="flex space-x-5 pl-10 pt-5">
            <div v-for="(ref, idx) in refs" :key="idx" class="text-4xl">
              <a :href="ref.url">
                <i :class="['relative', ref.icon]">
                  <i
                    :class="[
                      'absolute top-0 left-0 hover:animate-ping',
                      ref.icon,
                    ]"
                  />
                </i>
              </a>
            </div>
          </div>
        </div>
        <div></div>
      </div>
    </div>
  </div>
</template>

<script setup>
import NextPage from "../components/NextPage.vue";
const refs = [
  {
    icon: "fa-brands fa-github-square",
    url: "https://github.com/qwerty22121998",
  },
  {
    icon: "fa-brands fa-linkedin",
    url: "https://www.linkedin.com/in/vu-hk/",
  },
  {
    icon: "fa-brands fa-facebook-square",
    url: "https://www.facebook.com/khanhvu2212/",
  },
  {
    icon: "fa-brands fa-instagram-square",
    url: "https://www.instagram.com/vuho.hoho/",
  },
  {
    icon: "fa-solid fa-square-envelope",
    url: "mailto:qwerty22121998@gmail.com",
  },
];
</script>

<style scoped></style>
