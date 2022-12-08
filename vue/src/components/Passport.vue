<template>
  <div>
    <h1 id="welcome" v-show="$store.state.token != ''">
      Welcome {{ $store.state.userInfo.userFirstName }}
    </h1>
    <div class="passport" v-for="brewery in this.passport" :key="brewery.id">
      <div id="breweryCard" v-on:click="cardOpen(brewery)">
        <div id="breweryName">{{ brewery.breweryName }}</div>
        <div class="open">
          <img
            v-show="brewery.cardOpen"
            src="https://i.imgur.com/3OjzTy2.png"
          />
          <img
            v-show="!brewery.cardOpen"
            src="https://i.imgur.com/YjdeFuu.png"
          />
        </div>
      </div>
      <div
        v-show="brewery.cardOpen"
        v-for="beer in brewery.passportBeers"
        :key="beer.id"
        id="beerCard"
      >
        <div class="beer-name">
          {{ beer.beerName }}
        </div>
        <div class="beer-style">
          {{ beer.styleName }}
        </div>
        <div class="beer-abv">{{ beer.abv }}% ABV</div>
        <div class="drank" v-on:click="toggleDrank(beer)">
          <img v-show="beer.drank" src="https://i.imgur.com/6XCzZEQ.png" />
          <img v-show="!beer.drank" src="https://i.imgur.com/YnuPcOd.png" />
        </div>
        <div class="remove">
          <img src="https://i.imgur.com/vdqV5fW.png" />
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import BreweryService from "../services/BreweryService";
export default {
  name: "my-passport",
  data() {
    return {
      passport: {
        brewery: {},
      },
    };
  },
  computed: {
    filterArray() {
      let filteredArray = this.breweries;
      return filteredArray;
    },
  },
  methods: {
    getBreweries() {
      BreweryService.breweryPassport(this.$store.state.user.id).then(
        (response) => {
          this.passport = response.data;
        }
      );
          
    },
    toggleDrank(beer) {
      beer.drank = !beer.drank;
    },
    cardOpen(brewery) {
      brewery.cardOpen = !brewery.cardOpen;
    },
  },
  created() {
    this.getBreweries();
  },
};
</script>
<style scoped>
#welcome {
  margin: 20px 0px;
  color: white;
  padding: 15px 0px;
  text-align: center;
  font-size: 3em;
  background-color: rgba(99, 98, 98, 0.718);
  text-shadow: 6px 6px 6px #272727;
}

/* Sets size of the passport */
.passport {
  margin: 0 auto;
  width: 60vw;
}

/* Styles individual brewery tiles */
#breweryCard {
  display: flex;
  height: 50px;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;

  height: 50px;
  border-radius: 5px;
  margin: 10px;

  background-color: white;

  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
}

#breweryName {
  margin-left: 50px;
  font-weight: bold;
}

.open {
  margin-right: 50px;
}

.open img {
  /* display: inline-block; */
  width: 25px;
  height: auto;
}

#beerCard {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  border-radius: 5px;
  margin: 0px 20px 10px 20px;
  height: 50px;
  background-color: rgba(56, 56, 56, 0.801);
  color: white;
  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
}

/*  Beer tile styling and positioning */

.beer-name {
  display: inline-block;
  margin-left: 30px;
  font-size: 1em;
  font-weight: bold;
}
.beer-style {
  display: inline-block;
  /* margin: 0 auto; */
  font-size: 1em;
  font-style: italic;
}
.beer-abv {
  display: inline-block;
  font-style: italic;
  font-size: 1em;
}
.drank {
  display: inline;
}
.drank img {
  width: 40px;
  height: auto;
}
.remove {
  margin-right: 30px;
  display: inline;
}
.remove img {
  width: 40px;
  height: auto;
}
</style>