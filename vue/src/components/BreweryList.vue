<template>
<div>
  <h1 class="header">BREWERY LIST</h1>


  <select name="citySearch" id="" v-model="cityFilter">
    <option value="" selected>City</option>
    <option v-for="city in cityFilterArray"  :key="city.id" >{{ city }}</option>
  </select>


      <div id="search">
        <label for="breweryName">name filter:</label>
        <input type="text" name="breweryName" v-model="nameFilter"/>
      </div>

  <div class="brewery-container">
      <brewery-card 
      v-for="brewery in  filteredBreweries"
      v-bind:key="brewery.id"
      v-bind:brewery="brewery"
    />
  </div>
  </div>
</template>

<script>
import breweryService from '../services/BreweryService.js'
import BreweryCard from './BreweryCard.vue'

export default {
name: 'brewery-list',

components:{BreweryCard},

data(){
  return{
    cityFilter: '',
    nameFilter:"",
  }
},

methods: {
    getBreweries(){
        breweryService.listBreweries().then(response =>{
            this.$store.commit("MAKE_BREWERY_LIST", response.data)
        });
    },


},
computed:{
  
  filteredBreweries(){
    let filteredBreweriesArray=this.$store.state.breweries;
    if (this.nameFilter !=""){
      filteredBreweriesArray = filteredBreweriesArray.filter((brewery)=>{
         return brewery.breweryName.toLowerCase().includes(this.nameFilter.toLowerCase())
      });
    }
    if (this.cityFilter != ''){
      filteredBreweriesArray = filteredBreweriesArray.filter((brewery)=>{
        return brewery.city.includes(this.cityFilter)
      })
    }
    return filteredBreweriesArray;
    },

    cityFilterArray(){
      let cityArray=[]
      let array=this.$store.state.breweries;
      let count=1;
      array.forEach(brewery=>{
        if(cityArray.includes(brewery.city)){
          count+1;
        }else{
          cityArray.push(brewery.city)
        }
      })
      return cityArray;
    }
    
},



created(){
    this.getBreweries();
},
}
</script>

<style scoped>
.brewery-container {
    display:flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
}
.header{
  text-align: center;
  color: white;
}

</style>