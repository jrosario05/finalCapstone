<template>
  <div>
    <h1 id="welcome" v-show="$store.state.token != ''">
      Welcome {{ $store.state.userInfo.userFirstName }}
    </h1>

    
      <div
        class="passport"
        v-for="brewery in this.passport"
        :key="brewery.id"
        
        v-on:click="cardOpen(brewery)"
      >
        <div id="breweryCard">
          <div id="beerName">
            
          {{ brewery.breweryName }}
          </div>
          <div class="open" >
            <img v-show="brewery.cardOpen" src="https://i.imgur.com/3OjzTy2.png" />
            <img v-show="!brewery.cardOpen" src="https://i.imgur.com/YjdeFuu.png" />
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
      passport:{
        brewery:{}
      }
      }
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
          this.passport=response.data;
          
          })        
    },
    
    toggleDrank(beer) {
      beer.drank = !beer.drank;
    },
    cardOpen(brewery){
      brewery.cardOpen=!brewery.cardOpen

    }
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

.passport {
  margin: 0 auto;
  width: 60vw;
  /* height: 50px; */
  border-radius: 5px;

}
#breweryCard{
background-color: white;
}
#breweryCard {
  display: flex;
  height: 50px;
    border-radius: 5px;

  margin: 10px;
  flex-direction: column;
  justify-content: center;
  background-color: white;
    -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
}
#beerName{
  margin-left: 20px;
}

#beerCard {
  font-weight: light;
  margin-left: 10px;
  border-radius: 5px;

  background-color: rgb(202, 78, 78);
  margin-top: 10px;
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
</style>
