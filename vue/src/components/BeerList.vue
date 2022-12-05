<template>
  <div class="beer-container">
      <beer-card v-for="beers in beersArray" 
      v-bind:key="beers.id"  
      v-bind:beers="beers"
      />
  </div>
</template>

<script>
import beerService from '../services/BeerService.js';
import BeerCard from './BeerCard.vue';

export default {
    name:'beer-list',
  components: { BeerCard },

  methods: {
      getBeers(){
          beerService.listBeer().then(response =>{
              this.$store.commit("MAKE_BEER_LIST", response.data)
          });
      }
  },


  computed:{
      beersArray(){
          const beersArray=this.$store.state.beers;
          return beersArray;
      }
  },

  created(){
      this.getBeers();
  }
    
}
</script>

<style>

</style>