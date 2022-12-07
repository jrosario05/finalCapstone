<template>
  <div>
    <div class="card" v-show="true" >
      <div id="beer-image">
        <img v-bind:src="beer.imgUrl" />
      </div>
      <div class="banner-details">
        <div id="beer-name">
          <h1>{{ beer.beerName }}</h1>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      beer: {}
    }
  },

computed: {
    getBeer(){
        this.$forceUpdate() 
        // eslint-disable-next-line vue/no-side-effects-in-computed-properties
        return this.beer=this.$store.state.currentBeer;
       
    }

},
}
</script>

<style>

</style>