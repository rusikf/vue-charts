import axios from 'axios'

export default {
  index() {
    return axios.get('/audio_segments')
  }
}

