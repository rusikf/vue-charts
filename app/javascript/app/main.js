import Vue from 'vue'
import App from './app.vue'
// TODO: add vuex import store from './store/index'
import axios from 'axios'
import { API_HOST } from './constants'

axios.defaults.baseURL = API_HOST

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)
})

