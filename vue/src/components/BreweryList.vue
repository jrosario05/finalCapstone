<template>
  <div class="brewery-container">
      <brewery-card 
      v-for="brewery in breweriesArray"
      v-bind:key="brewery.id"
      v-bind:brewery="brewery"
    />
  </div>
</template>

<script>
import breweryService from '../services/BreweryService.js'
import BreweryCard from './BreweryCard.vue'
export default {
name: 'brewery-list',

components:{BreweryCard},

methods: {
    getBreweries(){
        breweryService.listBreweries().then(response =>{
            this.$store.commit("MAKE_BREWERY_LIST", response.data)
        });
    }
},

computed:{
  breweriesArray(){
    const breweriesArray=this.$store.state.breweries;
    return breweriesArray;
  }
},


created(){
    this.getBreweries();
}
}
</script>

<style scoped>
.brewery-container {
    display:flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
}

</style>