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
#app {
    background-image: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg");
    height: 100%;
    position: sticky;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
