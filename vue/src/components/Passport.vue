<template>
  <div>



    <h1 id="welcome" v-show="$store.state.token != ''">
      Welcome {{ $store.state.userInfo.userFirstName }}
    </h1>

    <div class="secondPass">
      <div id="breweryCard" v-for="brewery in filterArray"
        :key="brewery.id" v-on:click="getBeer(brewery.breweryId)">{{brewery.breweryName}}
              <div v-show="beer.breweryId == brewery.breweryId" v-for="beer in beerArray" :key="beer.id" id="beerCard" >{{ beer.beerName }}</div>
        </div>
    </div>

    <div class="passport">
      <!-- <h3>Passport</h3> -->
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
          <b-card id="individual-beer" v-for="beer in beerArray" :key="beer.id">
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
            <!-- <div class="favorited">
              <i class="bi bi-heart" v-show="!true"></i>
              <i class="bi bi-heart-fill" v-show="true"></i>
            </div> -->
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
      let filteredArray = this.$store.state.passportBreweries;
      return filteredArray;
    },
    beerArray(){
      let beerArray=this.beers;
      return beerArray;
    }
  },

  methods: {
    getBreweries() {
      BreweryService.breweryPassport(this.$store.state.user.id).then(
        (response) => {
          this.$store.commit("PASSPORT_BREWERIES", response.data);
        }
      );
    },
    getBeer(breweryId) {
      BeerService.beerPassport(this.$store.state.user.id, breweryId).then(response => {
        this.beers=response.data;
      });
    },
    functionTest() {
      console.log(this.$store.state.user);
    },
    toggleDrank(beer) {
      beer.drank = !beer.drank;
    }

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
#breweryCard {
  width: 500px;
  background-color: white;
  height: auto;
  font-weight: bold;
}
#beerCard {
  font-weight: light;
  background-color: red;
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
  display: none;
  background-color: white;
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
  padding: 25px 0px;

  display: flex;
  flex-grow: 1;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
  color: black;
  -webkit-box-shadow: 3px 3px 6px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 3px 3px 6px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 3px 3px 6px 0px rgba(0, 0, 0, 0.75);
}

#brewery:click {
  background-color: rgb(184, 169, 37);
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
  width: 33%;
  flex-direction: column;
}
/* Adjust beer list positioning */
#beer-list {
  margin: 0 auto;
  position: absolute;
  transform: translate(525px, 0px);
  width: 50%;
}


div.card-body {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}




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
  margin-right: 30px;
  display: inline;
}

.drank img {
  width: 40px;
  height: auto;
}

.favorited {
  display: inline;
  background-color: grey;
  padding-top: 10px;
  margin: 25px;
  width: 25%;
  height: auto;
}

.favorited i {
  font-size: 30px;
  margin-top: 10px;
  padding-top: 10px;
  color: red;
}

</style>
