<template>
  <div>
      <brewery-details></brewery-details>
  </div>
</template>

<script>
import BreweryDetails from '../components/BreweryDetails.vue'
export default {
    name: 'brewery-details-page',
  components: { BreweryDetails },

}
</script>

<style>
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