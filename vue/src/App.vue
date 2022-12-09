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


</style> 
