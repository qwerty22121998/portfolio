<template>
  <div id="project" class="min-h-screen">
    <div class="text-xl pt-16">
      Sometimes, I build personal projects, enhance my skill, and ... for fun!
    </div>
    <div
      class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 pt-10 auto-rows-fr"
    >
      <div v-for="project in projects" :key="project.name">
        <ProjectCard
          :tags="project.tags"
          :name="project.name"
          :short="project.short"
          :live="project.live"
          :source="project.source"
        />
      </div>
    </div>
  </div>
</template>

<script setup>
import ProjectCard from "@/components/ProjectCard.vue";
const projects = [
  {
    name: "SLink",
    short: "Link shortener use Google FireStore",
    tags: ["go"],
    live: "https://fu-js.herokuapp.com/",
    source: "https://github.com/qwerty22121998/slink",
  },
  {
    name: "Slack webhook",
    short: "Slack webhook library for Go",
    tags: ["go", "library", "slack"],
    source: "https://github.com/vinshop/slack-wh",
  },
  {
    name: "FPT GPA",
    short: "GPA calculator for FPT University with 1000+ users",
    tags: ["js", "chrome-extension"],
    live: "https://chrome.google.com/webstore/detail/fpt-gpa/pieacoaichghpileamnhephkedchnlba",
    source: "https://github.com/qwerty22121998/fpt-gpa",
  },
  {
    name: "Instagram Downloader",
    short: "Chrome extension support use download instagram image",
    tags: ["js", "chrome-extension"],
    source: "https://github.com/qwerty22121998/InstaDown",
  },
  {
    name: "Go ASCII",
    short: "ASCII art generator",
    tags: ["go", "ascii-art"],
    live: "https://go-ascii.herokuapp.com/",
    source: "https://github.com/qwerty22121998/go-ascii",
  },
  {
    name: "Competitive solutions",
    short: "Solutions for competitive programming",
    tags: ["algorithm", "data-structure", "competitive", "acm"],
    source: "https://github.com/qwerty22121998/algorithm",
  },
  {
    name: "Expression tree",
    short: "Expression tree implementation",
    tags: ["data-structure", "go"],
    source: "https://github.com/vinshop/exp-tree",
  },
];
</script>

<style></style>
