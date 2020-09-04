<template>
  <tr>
    <th scope="row">{{ segment.id }}</th>
    <td>{{ segment.user.name }} </td>
    <td>{{ segment.started_at }}</td>
    <td>{{ segment.ended_at }}</td>
  </tr>
</template>

<script>
  export default {
    name: 'Segment',
    props: {
      segment: Object
    }
  }
</script>
