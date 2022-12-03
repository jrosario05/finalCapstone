<template>
  <div>
      <router-link v-bind:to="{name: 'breweries'}"> Breweries</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
  </div>
</template>

<script>
export default {
    name: 'the-header',

}
</script>

<style>

</style>