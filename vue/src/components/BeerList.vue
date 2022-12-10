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
          beerFilter:[]
      }
  },
  computed:{
      filterArray(){
          let filter=this.beerFilter
          return filter;
      }
  },

  created() {
          beerService.listBeer().then(response =>{
              this.beers=response.data;
          });

  },
    methods:{

   
    }

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

body {
   background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100vh;
  background-color: black;

}

</style>