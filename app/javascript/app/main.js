import Vue from 'vue'
import App from './app.vue'
import axios from 'axios'
// TODO: add vuex for toggle users visibility
import { API_HOST } from './constants'

axios.defaults.baseURL = API_HOST

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)
})

