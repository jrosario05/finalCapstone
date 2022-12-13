<template>
  <div>
    <b>Start:</b>
     <input type="text" v-model="start"/>
    <b>End:</b>
     <input type="text" v-model="end"/>

    <GmapMap :zoom="7" :center="{ lat: 41.85, lng: -87.65 }">
      <DirectionsRenderer travelMode="DRIVING" :origin="origin" :destination="destionation"/>
    </GmapMap>
  </div>
</template>

<script>
import DirectionsRenderer from "@/components/DirectionsRenderer";

export default {
  components: {
    DirectionsRenderer
  },

  data(){
    return{
    start: this.barCrawl[0].address,
    end: this.barCrawl[0].address
      }
    },

  watch:{
    array(barCrawl){
      if(barCrawl.length<=2){
        this.start=barCrawl[0].address;
        this.end=barCrawl[0].address;
      }
    }
  },
  

  computed: {
    origin() {
      if (!this.start) return null;
      return { query: this.start };
    },
    destionation() {
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
</style>