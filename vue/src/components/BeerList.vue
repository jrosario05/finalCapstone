<template>
<div>
  <div class="beer-container">
      <beer-card v-for="beer in beers" 
      v-bind:key="beer.id"  
      v-bind:beer="beer"
      />
  </div>
        <beer-detail></beer-detail>
    

</div>

</template>

<script>
import beerService from '../services/BeerService.js';
import BeerCard from './BeerCard.vue';
import BeerDetail from './BeerDetail.vue';


export default {
    name:'beer-list',
  components: { BeerCard, 
  BeerDetail 
  },
  data(){
      return{
          beers: [],
      }
  },

  created() {
          beerService.listBeer().then(response =>{
              this.beers=response.data;
          });
  },


//   computed:{
//       beersArray(){
//           const beersArray=this.$store.state.beers;
//           return beersArray;
//       }
//   },
    
}
</script>

<style scoped>
.beer-container {
    display:flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
    
}

.pop-up {
    font-size: 5em;
}

</style>