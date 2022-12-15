<template>
  <div>
    <div class="beer-container">
      <beer-card
        v-for="beer in beers"
        v-bind:key="beer.id"
        v-bind:beer="beer"
      />
    </div>
    <beer-detail></beer-detail>
  </div>
</template>

<script>
import beerService from "../services/BeerService.js";
import BeerCard from "./BeerCard.vue";
import BeerDetail from "./BeerDetail.vue";

export default {
  name: "beer-list",
  components: { BeerCard, BeerDetail },
  data() {
    return {
      beers: [],
    };
  },

  created() {
    beerService.listBeer().then((response) => {
      this.beers = response.data;
    });
  },

  //   computed:{
  //       beersArray(){
  //           const beersArray=this.$store.state.beers;
  //           return beersArray;
  //       }
  //   },
};
</script>

<style scoped>
.beer-container {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
  width: 70vw;
  margin: 0 auto;
}

.pop-up {
  font-size: 5em;
}

body {
  background: url("../resources/background-image.jpg") no-repeat center center
    fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100%;
  background-color: black;
}
</style>