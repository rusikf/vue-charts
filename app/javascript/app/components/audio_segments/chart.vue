<script>
import { Bar } from 'vue-chartjs'
export default {
  extends: Bar,
  props: {
    chartdata: Object,
    options: Array
  },
  mounted () {
    this.renderChart(this.chartdata, this.options)
  }
}
</script>

