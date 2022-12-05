<template>
  <div class="beer-container">
      <beer-card v-for="beer in beers" 
      v-bind:key="beer.id"  
      v-bind:beer="beer"
      />
  </div>
</template>

<script>
import beerService from '../services/BeerService.js';
import BeerCard from './BeerCard.vue';

export default {
    name:'beer-list',
  components: { BeerCard },
  data(){
      return{
          beers: []
      }
  },

  created() {
          beerService.listBeer().then(response =>{
              this.beers=response.data;
          });
  },


  computed:{
      beersArray(){
          const beersArray=this.$store.state.beers;
          return beersArray;
      }
  },
    
}
</script>

<style>
.beer-container {
    display:flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
}

</style>