<template>
  <div>
    <div>
       <h4>How many times a participant speaks during a call</h4>
       <ul>
        <li v-for="(key, value) in summary.times_per_participant">
          {{ `${key}: ${value}` }}
        </li>
       </ul>
       <h4>The average duration of each participant's contribution</h4>
       <ul>
        <li v-for="(key, value) in averageDuration">
          {{ `${key}: ${value}` }}
        </li>
       </ul>
       <h4>Who contributes the most and least to a call</h4>
       <p>Best user - {{ bestUser }}</p>
       <p>Worst user - {{ worstUser }}</p>
    </div>
  </div>
</template>

<script>
import Api from '../../api/audio_segments' // TODO: webpacker alias @
export default {
  name: 'AudioSummary',
  data() {
    return {
      summary: {}
    }
  },
  created() {
    Api.summary().then((response) => {
      this.summary = response.data
    })
  },
  computed: {
    averageDuration() {
      return this.summary.average_duration
    },

    sortedStats() {
      let list = this.averageDuration
      if (!list) { return [] }
      return Object.keys(list).sort((a,b) => {
        return list[a] - list[b]
      })
    },
    bestUser() {
      return this.sortedStats[this.sortedStats.length - 1]
    },
    worstUser() {
      return this.sortedStats[0]
    }
  }
}
</script>

