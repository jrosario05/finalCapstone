<template>
  <div>
      <h1 class="header">BREWERY LIST</h1>
    <div id="search">
      <p>City Filter:</p>
      <select name="citySearch" id="citySearch" v-model="cityFilter">
        <option  value="" selected>City</option>
        <option id="dropdown" v-for="city in cityFilterArray" :key="city.id">
          {{ city }}
        </option>
      </select>
      <div id="nameFilter">
        <label for="breweryName" id='forms'>Name Filter:</label>
        <input type="text" name="breweryName" v-model="nameFilter" />
      </div>
    </div>

    <div class="brewery-container">
      <brewery-card
        v-for="brewery in filteredBreweries"
        v-bind:key="brewery.id"
        v-bind:brewery="brewery"
      />
    </div>
  </div>
</template>

<script>
import breweryService from "../services/BreweryService.js";
import BreweryCard from "./BreweryCard.vue";

export default {
  name: "brewery-list",

  components: { BreweryCard },

  data() {
    return {
      cityFilter: "",
      nameFilter: "",
    };
  },

  methods: {
    getBreweries() {
      breweryService.listBreweries().then((response) => {
        this.$store.commit("MAKE_BREWERY_LIST", response.data);
      });
    },
  },
  computed: {
    filteredBreweries() {
      let filteredBreweriesArray = this.$store.state.breweries;
      if (this.nameFilter != "") {
        filteredBreweriesArray = filteredBreweriesArray.filter((brewery) => {
          return brewery.breweryName
            .toLowerCase()
            .includes(this.nameFilter.toLowerCase());
        });
      }
      if (this.cityFilter != "") {
        filteredBreweriesArray = filteredBreweriesArray.filter((brewery) => {
          return brewery.city.includes(this.cityFilter);
        });
      }
      return filteredBreweriesArray;
    },

    cityFilterArray() {
      let cityArray = [];
      let array = this.$store.state.breweries;
      let count = 1;
      array.forEach((brewery) => {
        if (cityArray.includes(brewery.city)) {
          count + 1;
        } else {
          cityArray.push(brewery.city);
        }
      });
      return cityArray;
    },
  },

  created() {
    this.getBreweries();
  },
};
</script>

<style scoped>
.brewery-container {
  width: 60vw;
  display: flex;
  margin: 0 auto;
  justify-content: space-evenly;
  flex-wrap: wrap;
  
}
#citySearch{
  margin: 20px;
    font-size: 1em;

}
#nameFilter{
  margin: 10px;
}

.header {
  margin: 20px 0px;
  color: white;
  margin: 0 auto;
  padding: 15px 0px;
  text-align: center;
  font-size: 3em;
  background-color: rgba(99, 98, 98, 0.718);
  text-shadow: 6px 6px 6px #272727;
}

#search {
  background-color: rgba(0,0,0,.95);
  color: white;
  height: 50px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  font-size: 1.2em;

}
#forms{
  margin: 20px;
}
#dropdown {
    border: 1px solid #fff;
    background-color: rgba(255, 255, 255, 0);
}


</style>