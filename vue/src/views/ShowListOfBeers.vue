<template>
  <div>
      <beer-list>
      </beer-list>
       <!-- <beer-detail/> -->
  </div>
</template>

<script>
// import BeerDetail from '../components/BeerDetail.vue'
import BeerList from '../components/BeerList.vue'
export default {
    name: 'beers',
  components: { BeerList, 
  // BeerDetail
  },

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