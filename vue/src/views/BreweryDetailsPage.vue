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

<style scoped>
body {
     background: url("../resources/background-image.jpg")
 no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100%;
  background-color: black;

}


</style>