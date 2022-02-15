<template>
  <div class="flex justify-end pr-5 bg-black text-white py-3 overflow-visible">
    <div
      class="flex justify-end space-x-4"
      v-scroll-spy-active="{ selector: '.menu-item' }"
    >
      <div
        v-for="item in menu"
        :key="item.name"
        class="menu-item relative"
        @click="active(item.name)"
      >
        <a class="menu-link" :href="item.url"> [{{ item.name }}] </a>
        <div class="sub-item absolute bg-black w-max hidden">
          <div
            v-for="sub in item.sub"
            :key="sub.name"
            :href="sub.url"
            class="p-3 sub-item-text"
          >
            <a :href="sub.url">
              {{ sub.name }}
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";

const menu = [
  {
    name: "Home",
    url: "#home",
  },
  {
    name: "About Me",
    url: "#about-me",
    sub: [
      {
        name: "Myself",
        url: "#about-me",
      },
      {
        name: "Education - Reward",
        url: "#education",
      },
    ],
  },
  {
    name: "Work",
    url: "#work",
  },
  {
    name: "Project",
    url: "#project",
  },

  {
    name: "Contact",
    url: "#contact",
  },
];

const activated = ref("Home");

const active = (name) => {
  activated.value = name;
};
</script>

<style scoped lang="postcss">
.active {
  text-decoration: underline;
  a {
    transform: scale(1.3);
    opacity: 100% !important;
  }
}
.menu-item {
  transition-duration: 0.5s;
  a {
    opacity: 50%;
  }
  &:hover {
    .sub-item {
      display: block;
    }
    a {
      opacity: 90%;
    }
  }
}

.sub-item {
  &-text {
    &:hover {
      ::before {
        content: "> ";
      }
    }
  }
}
</style>
