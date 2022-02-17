<template>
  <Screen id="education" title="Education - Award">
    <div class="pt-14">
      <div v-for="school in story" :key="school.name">
        <div class="bg-black text-white p-2">
          <div class="flex justify-between">
            <div class="text-2xl font-bold">{{ school.name }}</div>
            <div />
            <div>{{ school.from }} - {{ school.to }}</div>
          </div>
          <div>
            {{ school.title }}
          </div>
          <div>
            {{ school.desc }}
          </div>
        </div>
        <div class="pl-5">
          <div
            v-for="(reward, idx) in school.rewards"
            :key="idx"
            class="flex p-1 justify-between border-b hover:bg-slate-100"
          >
            <div class="space-x-1">
              <span class="text-xl font-bold">{{ reward.name }} </span>
              <span v-if="reward.rank" class="text-xl font-bold">
                [{{ reward.rank }}]
              </span>
              <a
                v-if="reward.url"
                target="_blank"
                :href="reward.url"
                class="underline"
              >
                <i class="fa fa-award" /> Certificate
              </a>
            </div>
            <div>{{ reward.year }}</div>
          </div>
        </div>
      </div>
    </div>
  </Screen>
</template>

<script setup>
import Screen from "@/components/Screen.vue";

const story = [
  {
    name: "FPT University",
    title: "Bachelor of Software Engineering - Autonomous",
    desc: "100% Scholarship",
    from: 2016,
    to: 2021,
    rewards: [
      {
        name: "Code to Japan",
        rank: "S Ranked",
        year: "2020",
        url: "https://app.tracks.run/share/submission/bb1983b2c87d47398606b8c9c818d2cf/details",
      },
      {
        name: "CodeWar Vietnam",
        rank: "3rd Prize",
        year: 2019,
      },
      {
        name: "F Talent Code",
        rank: "3rd Prize",
        year: 2019,
      },
      {
        name: "Junction X Hanoi, Big Data Track",
        rank: "3rd Prize",
        year: 2018,
      },
      {
        name: "Code Battle Vietnam",
        rank: "1st Prize",
        year: 2018,
      },
      {
        name: "National, Regional ACM ICPC in Hanoi, HCM annd Yangon",
        year: "2017, 2018",
      },
      {
        name: "JS Coding Project",
        rank: "2nd Prize",
        year: 2016,
      },
    ],
  },
  {
    name: "Vinh University high school for gifted students",
    from: 2014,
    to: 2016,
    rewards: [
      {
        name: "National informatics contest",
        rank: "Silver medal",
        year: 2016,
      },
      {
        name: "Provincial informatics contest",
        rank: "1st Prize",
        year: 2016,
      },
      {
        name: "Provincial informatics contest",
        rank: "2nd Prize",
        year: 2015,
      },
    ],
  },
];
</script>

<style scoped></style>
