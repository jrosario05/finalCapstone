<template>
  <div>
    <div>
      <h2>Search and add a pin</h2>
      <GmapAutocomplete
        @place_changed='setPlace'
      />
      <button
        @click='addMarker'
      >
        Add
      </button>
      <div v-on:click="getLocations(barCrawl)" class="button">CLICK HERE</div>
    </div>
    <br>
    <gmap-map
      :center='center'
      :zoom='12'
      style='width:60%;  height: 400px;'
    >
      <gmap-marker
        :key="index"
        v-for="(m, index) in markers"
        :position="m.position"
        @click="center=m.position"
      />
    </gmap-map>
  </div>
</template>

<script>
import GoogleService from '../services/GoogleService.js';
export default {
  name: 'GoogleMap',
  props: ['barCrawl'],
  data() {
    return {
      center: { lat: 45.508, lng: -73.587 },
      currentPlace: null,
      markers: [
          {
              lat:39.9814157,
              lng: -83.0428356
          }
      ],
      places: [],
      
    }
  },


  mounted() {
    this.geolocate();

  },

  
  methods: {


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

    setPlace(place) {
      this.currentPlace = place;
    },
    addMarker() {
      if (this.currentPlace) {
        const marker = {
          lat: this.currentPlace.geometry.location.lat(),
          lng: this.currentPlace.geometry.location.lng(),
        };
        this.markers.push({ position: marker });
        this.places.push(this.currentPlace);
        this.center = marker;
        this.currentPlace = null;
      }
    },
    geolocate: function() {
      navigator.geolocation.getCurrentPosition(position => {
        this.center = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
        };
      });
    },
  },
};
</script>

<style scoped>
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