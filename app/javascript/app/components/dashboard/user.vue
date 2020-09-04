<template>
  <tr>
    <th scope="row">{{ user.id }}</th>
    <td>{{ user.name }} </td>
    <td>
      {{ user.visible ? 'Yes' : 'No' }}
    </div>
    </td>
  </tr>
</template>

<script>
  export default {
    name: 'User',
    props: {
      user: Object
    }
  }
</script>
