<template>
<div>
<iframe
  width="450"
  height="250"
  frameborder="0" style="border:0"
  referrerpolicy="no-referrer-when-downgrade"
  src= "https://www.google.com/maps/embed/v1/directions?key=AIzaSyCL1XzlXTKruk54s6UzGLyyNojd33Q7XR0&origin=1275+Kinnear+rd&destination=edison+brewing"

  allowfullscreen>
</iframe>
  </div>
</template>



// SCRIPT STARTS HERE

<script>

export default {
  name: "test",
  data(){
    return{
      url: 'https://www.google.com/maps/embed/v1/directions?key=AIzaSyCL1XzlXTKruk54s6UzGLyyNojd33Q7XR0&origin=1',
      origin: '1275 Kinnear rd',
      destination: "destination=",
      brewing1: '935 thayer dr',
      brewing2: 'endeavor brewing'
    }
  }


}
</script>
<style scoped>


</style>