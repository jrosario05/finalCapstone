<template>
  <div>

           <div v-on:click="origin(), destionation()" class="button">CLICK HERE</div>


    <GmapMap :zoom="7" :center="{ lat: 41.85, lng: -87.65 }">
      <DirectionsRenderer travelMode="DRIVING" :origin="origin2" :destination="destionation2"/>
    </GmapMap>
  </div>
</template>

<script>
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
    waypts:[]
      }
    },

  watch:{
    array(barCrawl){
      if(barCrawl.length>0){
        this.start=this.barCrawl[0].address;
        this.end=this.barCrawl[1].address;
      }
    }
  },
  

  computed: {
    origin2() {
      
      if (!this.start) return null;
      return { query: this.start };
    },
    destionation2() {
      if (!this.end) return null;
      return { query: this.end };
    },
      },

    

    methods:{
    origin() {
      console.log("hit origin")
      this.start=this.barCrawl[0].address;

      if (!this.start) return null;
      return { query: this.start };
    },
    destionation() {
      console.log('hit destination')
    this.end=this.barCrawl[1].address;

      if (!this.end) return null;
      return { query: this.end };
    },
  }
};
</script>

<style>
.vue-map-container {
  height: 300px;
  width: 80%
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