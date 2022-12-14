<template>
  <div id="app">
    <!-- <div id="nav"> -->
    <the-header />
    <router-view />
  </div>
  <!-- </div> -->
</template>

<script>
import TheHeader from "./components/TheHeader.vue";
export default {
  components: { TheHeader },
};
</script> 

<style>
body {
  margin: 0px auto;
  font-family: "Helvetica";
  background-color: #33323280;
  background: url("./resources/background-image.jpg")
    no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100%;
}
</style>>

