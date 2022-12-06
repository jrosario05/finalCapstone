<template>
  <div id="app">
    <!-- <div id="nav"> -->
      <the-header/>
      <router-view/>
    </div>
  <!-- </div> -->
</template>

<script>
import TheHeader from './components/TheHeader.vue';
export default {
  components: { TheHeader },

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
