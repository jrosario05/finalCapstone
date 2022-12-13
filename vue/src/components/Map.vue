<template>
<div :rendered="getUserInfo()">
<iframe
  width="450"
  height="250"
  frameborder="0" style="border:0"
  referrerpolicy="no-referrer-when-downgrade"
  :src=this.urlToCall

  allowfullscreen>
</iframe>
<div class="button" v-on:click="buildString">Click Me!</div>

{{this.crawlList[0].address}}

<div></div>
  </div>
</template>



// SCRIPT STARTS HERE

<script>
import GoogleService from '../services/GoogleService.js'
import PassportService from "../services/PassportService.js"
export default {
  name: "g-map",
  props: ['crawlList'],
  data(){
    return{
      startUrl: 'https://www.google.com/maps/embed/v1/directions?key=AIzaSyCL1XzlXTKruk54s6UzGLyyNojd33Q7XR0',
      origin: '',
      destination: "",
      waypoints: '&waypoints=',
      userInfo:{},
      urlToCall: ''
    }
  },

computed:{
  // loadOrigin() {
  //   return this.getUserInfo();
  // },
  // loadDestination() {
  //   return this.buildDestination();
  // },
  // loadWaypoints() {
  //   return this.buildWaypoints();
  // }


},

  methods: {

    buildString() {
      if(this.crawlList.length == 1) {
        console.log("in the first part")
          this.buildDestination();
          return this.urlToCall = this.startUrl + this.origin + this.destination;
      }
      else {
        console.log('in the second part')
          this.buildDestination();
          this.buildWaypoints();
          return this.urlToCall = this.startUrl + this.origin + this.destination + this.waypoints;
      }

    },


    getUserInfo(){
        let id =this.$store.state.user.id
        this.origin="&origin="
        PassportService.getPassportUserInfo(id).then(response=>{
            this.userInfo=response.data;
            this.origin += (this.userInfo.address +" "+ this.userInfo.city+", " +this.userInfo.state+" "+this.userInfo.zipCode)
        })
    },

    buildDestination(){
      let string="&destination="
      string += this.crawlList[this.crawlList.length - 1].breweryName;
      this.destination = string;

      
    },

    buildWaypoints() {
      let stops="&waypoints=";
      let waypoints = "";
      for(let i = 0; i < this.crawlList.length-1; i++) {
        waypoints += stops + this.crawlList[i].breweryName;
      } 
      // stops += this.crawlList[this.crawlList.length-1].breweryName;
      this.waypoints = waypoints;
    },


    getLocations(array){
        array.forEach(bar => {
            GoogleService.get(bar.address).then((response)=>{
                if (response.data.error_message){
                    console.log(response.data.error_message);
                }else{
                    let marker={
                        lat:"",
                        lng:""
                    };
                    marker.lat=response.data.results[0].geometry.location.lat;
                    marker.lng=response.data.results[0].geometry.location.lng;
                  this.markers.push({ position: marker });
                }
            }).catch((error)=>{
                console.log(error.message)
            })
            
        });

    },

  },

  created(){
    // this.getUserInfo();
    // this.buildDestination();
  }


}
</script>
<style scoped>
.button {
  width: 100px;
  height: auto;
  background: red;
}

</style>