<template>
  <div>
      <brewery-list></brewery-list>
  </div>
</template>

<script>
import BreweryList from '../components/BreweryList.vue'
export default {
  name: 'breweries',
  components: { BreweryList },

}
</script>

<style scoped>

body {
   background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100vh;
  background-color: black;

}

</style>