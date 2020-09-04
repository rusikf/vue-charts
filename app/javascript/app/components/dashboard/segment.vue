<template>
  <tr>
    <th scope="row">{{ segment.id }}</th>
    <td>{{ segment.user.name }} </td>
    <td>{{ displayTime(segment.started_at) }}</td>
    <td>{{ displayTime(segment.ended_at) }}</td>
  </tr>
</template>

<script>
  export default {
    name: 'Segment',
    props: {
      segment: Object
    },
    methods: {
      displayTime(dateString) {
        return new Date(dateString).toUTCString().split(" ")[4]
      }
    }
  }
</script>
