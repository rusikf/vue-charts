<template>
  <div v-if="Object.keys(summary.average_duration).length > 0">
    <div class='row' >
       <div class='col-6'>
         <Chart :chartdata="timesChartData"/>
       </div>

       <div class='col-6'>
         <Chart :chartdata="averageChartData"/>
       </div>
    </div>
    <h4>Who contributes the most and least to a call</h4>
    <p>Best user - {{ bestUser }}</p>
    <p>Worst user - {{ worstUser }}</p>
    </div>
  </div>
</template>

<script>
import Api from '../../api/dashboard' // TODO: webpacker alias @
import Chart from './chart'
export default {
  name: 'AudioSummary',
  components: { Chart },
  data() {
    return {
      summary: {
        times_per_participant: {},
        average_duration: {}
      }
    }
  },
  created() {
    Api.summary().then((response) => {
      this.summary = response.data
    })
  },
  methods: {
    chartData({ obj, title }) {
      return {
        labels: Object.keys(obj),
        datasets: [{
          label: title,
          data: Object.values(obj)
        }]
      }
    }
  },
  computed: {
    averageDuration() {
      return this.summary.average_duration
    },

    averageChartData() {
      return this.chartData({
        obj: this.averageDuration,
        title: "The average duration of each participant's contribution"
      })
    },

    timesChartData() {
      return this.chartData({
        obj: this.summary.times_per_participant,
        title: 'How many times a participant speaks during a call'
      })
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

