<template>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Visible</th>
      </tr>
    </thead>
    <tbody>
      <User
        v-for="user in users"
        :user="user"
        :key="user.id" />
    </tbody>
  </table>
</template>
<script>
  import User from './user'
  import Api from '../../api/dashboard'
  export default {
    name: 'DashboardUsers',
    components: { User },
    data() {
      return { users: [] }
    },
    created() {
      Api.users().then((response) => {
        this.users = response.data
      })
    }
  }
</script>

