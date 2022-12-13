<template>
  <div class="main-container">
    <h1 id="welcome" v-show="$store.state.token != ''">
      Welcome {{ this.firstName }}
    </h1>
    <div id="user-avatar">
      <img src="../resources/no-image.png" />
    </div>
    <div id="score-container">
      <img :src="getImageURL(this.rating)" />
    </div>
  </div>
</template>

<script>
import AuthService from "../services/AuthService.js";

export default {
  name: "userProfile",
  props: ["passport"],
  data() {
    return {
      drankBeers: [],
      beersInPassport: [],
      rating: "",

      numberOfBeersDrank: 0,
      numberOfTotalBeers: 0,
    };
  },

  computed: {
    firstName() {
      return this.$store.state.userInfo.userFirstName;
    },
    passportBrews() {
      return this.$store.state.passportBeers;
    },

    allBeers() {
      //   let allBreweries = this.passport;
      this.passport.forEach((brewery) => {
        this.$store.commit("PASSPORT_BEERS", brewery);
        this.numberOfTotalBeers += 1;
        brewery.passportBeers.forEach((beer) => {
          if (beer.drank) {
            this.drankBeers.push(beer.beerName);
            this.numberOfBeersDrank += 1;
          }
        });
      });
      return this.numberOfBeersDrank;
    },
    updateScore() {
      return this.score();
    },
  },

  methods: {
    Beers() {
      let allBreweries = this.passport;
      allBreweries.forEach((brewery) => {
        this.$store.commit("PASSPORT_BEERS", brewery);

        brewery.passportBeers.forEach((beer) => {
          if (beer.drank) {
            this.drankBeers.push(beer.beerName);
            this.numberOfBeersDrank += 1;
          }
        });
      });
    },
    score() {
      console.log("firing score");
      let ratingNumber = this.numberOfBeersDrank / this.numberOfTotalBeers;
      let ratingUpdate = "";
      if (ratingNumber > 8) {
        ratingUpdate = "../resources/HighScore.png";
      } else if (ratingNumber > 6) {
        ratingUpdate = "../resources/MidScore.png";
      } else {
        ratingUpdate = "../resources/LowScore.png";
      }
      return (this.rating = ratingUpdate);
    },

    getUserInfo() {
      AuthService.get(this.$store.state.user.id).then((response) => {
        this.$store.commit("SET_USER_INFO", response.data);
      });
    },
    created() {
      this.Beers();
      this.score();
      this.getUserInfo();
    },
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

.main-container {
  width: 100vw;
  background-color: white;
}

#user-avatar img {
  border-radius: 100%;
  width: 200px;
  margin: 25px;
  border: 2px solid black;
}
</style>
