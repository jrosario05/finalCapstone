<template><div class="passportContainer">  
  <my-passport/> 
  </div>
</template>

<script>
import MyPassport from '../components/Passport.vue';

export default {
  name: "passport",
  components: {MyPassport},
 
}
</script>
<style scoped>
.passportContainer {
     background: url("../resources/background-image.jpg")
 no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height:100vh;
  background-color: black;
}


</style>
