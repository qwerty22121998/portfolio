import {
  createApp
} from 'vue'
import App from './App.vue'
import {
  registerScrollSpy
} from 'vue3-scroll-spy'
import "./index.css"
import "./assets/css/anim.css"
import "./assets/css/utils.css"
import "./assets/css/global.css"
const app = createApp(App)
registerScrollSpy(app)
app.mount('#app')