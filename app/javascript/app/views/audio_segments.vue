<template>
  <div>
    <div class="container">
      <h3 class='my-5'>Meeting audio segment data for Important Decision Meeting at 12pm on 24 June 2020</h3>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">User</th>
            <th scope="col">Audio start</th>
            <th scope="col">Audio end</th>
          </tr>
        </thead>
        <tbody>
          <Segment
            v-for="segment in segments"
            :segment="segment"
            :key="segment.id"/>
        </tbody>
        <tfoot>
          <p class='py-3'>COUNT {{ segments.length }}</p>
        </tfoot>
      </table>
      <Summary />
    </div>
  </div>
</template>

<script>
import Api from '../api/audio_segments'
import Segment from '../components/audio_segments/segment'
import Summary from '../components/audio_segments/summary'
export default {
  name: 'AudioSegments',
  components: { Segment, Summary },
  data() {
    return {
      segments: [],
      summary: {}
    }
  },
  created() {
    Api.index().then((response) => {
      this.segments = response.data
    })
    Api.summary().then((response) => {
      this.summary = response.data
    })
  }
}
</script>

