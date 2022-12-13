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

  data: () => ({
    start: "endeavor company",
    end: "edison brewing company"
  }),

  computed: {
    origin() {
      if (!this.start) return null;
      return { query: this.start };
    },
    destionation() {
      if (!this.end) return null;
      return { query: this.end };
    }
  }
};
</script>

<style>
.vue-map-container {
  height: 300px;
  width: 80%
}
</style>