<template>
  <div class="home">
    <h1 v-show="$store.state.token != ''">Welcome {{$store.state.user.username}}</h1>

<div class="accordion" role="tablist">
  <b-button v-for="brewery in filterArray" :key="brewery.id" v-b-toggle.collapse-1 variant="primary" v-on:click="getBeer(brewery.breweryId)">{{brewery.breweryName}}</b-button>
  <b-collapse id="collapse-1" class="mt-2">
    <b-card v-for="beer in beers" :key="beer.id">
      <p class="card-text">{{beer.beerName}}</p>

    </b-card>
  </b-collapse>
</div>
  <div class="accordion" role="tablist" v-for="brewery in filterArray" :key="brewery.id" >
    <b-card no-body class="mb-1" >
      <b-card-header  header-tag="header" class="p-1" role="tab">
        <b-button  v-b-toggle.accordion-2 variant="info" v-on:click="getBeer(brewery.breweryId)">{{brewery.breweryName}} </b-button>
      </b-card-header>
      <b-collapse id="accordion-2" visible accordion="my-accordion" role="tabpanel">
        <b-card-body>
          <b-card-text v-for="beer in beers" :key="beer.id">{{beer.beerName}}</b-card-text>
        </b-card-body>
      </b-collapse>
    </b-card>
</div>


<button v-on:click="functionTest()">TEST</button>


  </div>
</template>

<script>
import BeerService from '../services/BeerService';
import BreweryService from "../services/BreweryService";
export default {
  name: "home",
  data(){
    return{
      brewery: {},
      beers: [],
    }
  },

  computed:{
    filterArray(){
      let filteredArray=this.$store.state.breweries;
      return filteredArray;
    },
  },

 methods: {
    getBreweries(){
        BreweryService.listBreweries().then(response =>{
            this.$store.commit("MAKE_BREWERY_LIST", response.data)
        });
    },
    getBeer(id){
            BeerService.beerByBrewery(id).then(response =>{
            this.beers=response.data});
    },
    functionTest(){
      console.log(this.$store.state.userInfo.userFirstName)
    }
    

},

created(){
    this.getBreweries();

},
};
</script>
<style scoped>

h1 {
  color: white;
}

</style>
