<template>
  <div>
    <h1 id="welcome" v-show="$store.state.token != ''">
      Welcome {{ $store.state.user.username }}
    </h1>

    <div class="passport">
      <h3>Passport</h3>
      <div class="accordion" role="tablist">
        <b-button
          id="brewery"
          v-for="brewery in filterArray"
          :key="brewery.id"
          v-b-toggle.beer-list
          variant="primary"
          v-on:click="getBeer(brewery.breweryId)"
          >{{ brewery.breweryName }}</b-button
        >
        <b-collapse id="beer-list" class="mt-2">
          <b-card id="individual-beer" v-for="beer in beers" :key="beer.id">
            <div class="beer-name">
              {{ beer.beerName }}
            </div>
            <div class="beer-style">
              {{ beer.style }}
            </div>
            <div class="beer-abv">
              {{ beer.abv }}% ABV
            </div>

          </b-card>
        </b-collapse>
      </div>
    </div>
  </div>
</template>

<script>
import BeerService from "../services/BeerService";
import BreweryService from "../services/BreweryService";
export default {
  name: "my-passport",
  data() {
    return {
      brewery: {},
      beers: [],
    };
  },

  computed: {
    filterArray() {
      let filteredArray = this.$store.state.breweries;
      return filteredArray;
    },
  },

  methods: {
    getBreweries() {
      BreweryService.listBreweries().then((response) => {
        this.$store.commit("MAKE_BREWERY_LIST", response.data);
      });
    },
    getBeer(id) {
      BeerService.beerByBrewery(id).then((response) => {
        this.beers = response.data;
      });
    },
    functionTest() {
      console.log(this.$store.state.user);
    },
  },

  created() {
    this.getBreweries();
  },
};
</script>
<style scoped>

h1 {
  color: white;
}

#welcome {
  margin: 20px 0px;
  padding: 15px 0px;
  text-align: center;
  font-size: 3em;
  background-color: rgba(99, 98, 98, 0.718);
  text-shadow: 6px 6px 6px #272727;
}

.passport {
  margin: 0 auto;
  width: 80vw;
  border-top-left-radius: 15px;
  border-top-right-radius: 15px;
     /* -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75); */
}

#brewery {
  background-color: rgb(221, 204, 50);
  width: auto;
  border: none;
  margin: 10px;
  
  display: flex;
  flex-direction: row;
  justify-content:space-around;
  align-items: center;
  color: black;
     -webkit-box-shadow: 3px 3px 6px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 3px 3px 6px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 3px 3px 6px 0px rgba(0, 0, 0, 0.75);
  
}

.passport h3 {
  padding: 10px;
  margin-bottom: -10px;
  background-color: rgb(169, 169, 170);
  width: 100%;
  text-align: center;
  border-top-left-radius: 15px;
  border-top-right-radius: 15px;
}
.accordion {
  margin-top: 10px;
  display: flex;
  width: 100%;
  flex-direction: row;
}


#beer-list {
  margin: 0 auto;
  position: absolute;
  transform: translate(0px, 75px);
  width: 80vw;
  
  

}

.beer-name {
  /* margin: 0px 25px; */
  width: 25%;
 font-size: 1em;
  font-weight:bold;
}

.beer-style {
  width: 25%;
  font-size: 1em;
  font-style:italic;
}
.beer-abv {
  width: 25%;
    font-style:italic;
    font-size: 1em;

}

</style>
