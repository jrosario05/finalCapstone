<template>
  <div>
      <p>SHOW LIST OF ALL BREWERIES</p>
      <router-link v-bind:to="{name: 'brewery'}" >Click Here for details of a brewery</router-link>
  </div>
</template>

<script>
import breweryService from '../services/BreweryService.js'
export default {
name: 'brewery-list',

methods: {
    getBreweries(){
        breweryService.listBreweries().then(response =>{
            this.$store.commit("MAKE_BREWERY_LIST", response.data)
        });
    }
},


created(){
    this.getBreweries
}
}
</script>

<style>

</style>