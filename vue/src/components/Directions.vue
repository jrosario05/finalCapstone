<template>
  <div>

<div v-on:click="origin() + destionation()+ addWayPoints()" class="button">CLICK HERE</div>


    <GmapMap :zoom="10" :center="{ lat: 39.9612, lng: -82.9988 }">
      <DirectionsRenderer travelMode="DRIVING" :origin="origin2" :destination="destionation2" :waypoints="waypoints1" />
    </GmapMap>
  </div>
</template>

<script>
import GoogleService from '../services/GoogleService.js'
import DirectionsRenderer from "@/components/DirectionsRenderer";

export default {
  components: {
    DirectionsRenderer
  },
  props:['barCrawl'],

  data(){
    return{
    start: '',
    end: '',
    waypts:[],
    otherArray:[]
      }
    },


  computed: {

  watch: {
    itemsLength (val, oldVal) {
      console.log('length changed')
      console.log(val, oldVal);
    }
  },

  

  computed: {

    itemsLength() {
      return this.barCrawl.length
    }
  },
    origin2() {
      
      if (!this.start) return null;
      return { query: this.start };
    },
    destionation2() {
      if (!this.end) return null;
      return { query: this.end };
    },
    waypoints1(){
      let otherArray=[];
      this.waypts.forEach((brewery)=>{
      let object= {};
      object.location=brewery.address;
      object.stopover=true;
      otherArray.push(object)
      })
      return otherArray
      },

  },

    

    methods:{
    origin() {
      console.log("hit origin")
      this.start=this.$store.state.userInfo.address;
      if (!this.start) return null;
      return { query: this.start };
    },
    destionation() {
    console.log('hit destination')
    this.end=this.barCrawl[this.barCrawl.length-1].address;
      if (!this.end) return null;
      return { query: this.end };
    },
    addWayPoints(){
      if (this.barCrawl.length>1){
        for(let i=0; i<this.barCrawl.length-1; i++){
          this.waypts.push(this.barCrawl[i])
        }
      }
    },



    getLocations(address){
            GoogleService.get(address).then((response)=>{
                if (response.data.error_message){
                    console.log(response.data.error_message);
                }else{
                  let location={};
                    location.lat=response.data.results[0].geometry.location.lat;
                    location.lng=response.data.results[0].geometry.location.lng;
                    return location;
                }
            }).catch((error)=>{
                console.log(error.message)
            })
            
        

    },


    
  }
};
</script>

<style scoped>
.vue-map-container {
  height: 300px;
  width: 80%;
  height: 400px;
}

    .button {
        background-color: red;
        width: 10%;
        text-align: center;
        color: white;
    }

    .button:hover {
        background-color: white;
        color: red;
        cursor: pointer;
    }
</style>