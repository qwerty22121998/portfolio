<template>
  <Screen id="about-me" title="About me">
    <div class="flex flex-wrap items-center h-fit pt-5">
      <div class="flex-full pb-5 lg:flex-1 px-5">
        <img
          class="rounded-3xl w-full zoom border-slate-700 shadow"
          src="/profile.jpg"
        />
      </div>
      <div class="flex-1 flex flex-col h-full space-y-10 z-40">
        <div class="text-2xl">
          <div class="font-bold">I'm Ho Khanh Vu</div>
          <div>Full-stack developer working for One Distribution</div>
        </div>
        <div class="text-xl">
          I've spent 10+ years being a friend with the computer. 7+ years in
          competitive programming and 5+ years studying different areas of
          software engineering.
        </div>
        <div class="text-xl">
          My first programming language was Pascal which I studied at High
          School. Then I learned C++ by myself and used it to join many
          contests. Now I can use a variant of languages, mainly GoLang, C++,
          VueJS, Java , and Javascript.
        </div>
        <div class="text-xl">
          In my free time, I do contests on CodeForce, CodeSignal, and many code
          sites for relaxing after hard working time. And I enjoy learning,
          playing games, and assembling Gunpla Kits.
        </div>
      </div>
    </div>
  </Screen>
</template>

<script setup>
import NextPage from "../components/NextPage.vue";
import Screen from "@/components/Screen.vue";
</script>

<style></style>
