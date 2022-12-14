<template>
   <div class="main-container">
    <h1 id="welcome" v-show="$store.state.token != ''">
      Welcome {{ this.firstName }}
    </h1>
 <div class="sub-container">
    <div id="user-avatar">
      <img src="https://ca.slack-edge.com/T0GNFLF6D-U03UY0PV0QP-91e4f0a326eb-512" @isRendered="updateScore" />
    </div>
    <div class="text-container">
    <div id="favorite-brewery">
      <h3>Favorite Brewery: {{ favoriteBrewery}}</h3>
    </div>
    <div id="favorite-beer">
      <h3>Favorite Beer: Nikola</h3>
    </div>
    <div id="beers-drank" @isRendered="allBeers()">
      <h3>Number of Beers Tired: {{ allBeers }}</h3>
    </div>
    <div id="beer-passport">
        <h3>Number of Beers in Passport: {{totalBeers}}</h3>
    </div>
    </div>
    </div>
    <div id="score-container">
        
      <img
        src="../resources/LowScore.png"
        v-if="this.allBeers > 0 && this.allBeers < 4"
      />
      <img src="../resources/MidScore.png" v-if="this.allBeers > 1 && this.allBeers <8" />
      <img src="../resources/HighScore.png" v-if="this.allBeers >= 8" />
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
      rating: 0,

      numberOfBeersDrank: 0,
      numberOfTotalBeers: 0,
    };
  },

  computed: {

      totalBeers(){
      let numberOfBeersDrank = 0;
      this.passport.forEach((brewery) => {
        brewery.passportBeers.forEach((beer) => {
            numberOfBeersDrank += 1;
          if (beer.drank) {
            this.drankBeers.push(beer.beerName);
          }
        });
      });
      return numberOfBeersDrank;

      },

      
    favoriteBrewery() {
      
      let allBreweries = this.passport;
      let favorite = 0;
      let  favBrewery='';
      allBreweries.forEach((brewery) => {
        let beerCounter = 0;

        brewery.passportBeers.forEach((beer) => {
            if(beer.beerName != "")
            {beerCounter++}
          })
            
          if (beerCounter > favorite) {
             favorite = beerCounter
              favBrewery = brewery.breweryName
          }
        });
      
           return favBrewery
           
      
    },



    firstName() {
      return this.$store.state.userInfo.userFirstName;
    },
    passportBrews() {
      return this.$store.state.passportBeers;
    },

    allBeers() {
      //   let allBreweries = this.passport;
      let numberOfBeersDrank = 0;
      
    
      this.passport.forEach((brewery) => {
        this.$store.commit("PASSPORT_BEERS", brewery);
      
        brewery.passportBeers.forEach((beer) => {
            
          if (beer.drank) {
            this.drankBeers.push(beer.beerName);
           
            numberOfBeersDrank += 1;
          }
        });
      });
      return numberOfBeersDrank;
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
        ratingUpdate = 1;
      } else if (ratingNumber > 6) {
        ratingUpdate = 2;
      } else {
        ratingUpdate = 3;
      }
      return (this.rating = ratingUpdate);
    },

    getUserInfo() {
      AuthService.get(this.$store.state.user.id).then((response) => {
        this.$store.commit("SET_USER_INFO", response.data);
      });
    },
  },

  created() {
    this.Beers();
    this.score();
    this.getUserInfo();
    
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
  width: 100vw;

  background-color: rgba(99, 98, 98, 0.718);
  text-shadow: 6px 6px 6px #272727;
}

.main-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: white;
  
}

#user-avatar img {
  border-radius: 100%;
  width: 200px;
  margin: 25px;
  border: 2px solid black;
}

.sub-container{
    display: flex;
    flex-direction: column;
}

#score-container img {
  width: 90px;
  margin: 0 auto;
  position: absolute;
  transform: translate(18px, -260px);
}


h3{
    color:black;
}
</style>
