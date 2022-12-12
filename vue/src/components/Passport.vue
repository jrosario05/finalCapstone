<template>
  <div>
    <h1 id="welcome" v-show="$store.state.token != ''">
      Welcome {{ $store.state.userInfo.userFirstName }}
    </h1>

        <div 
          class="main-passport"
          v-for="brewery in fullObject"
          :key="brewery.id"
          :isRendered="checkBrewery(brewery)"
          v-show="beerCrawlBreweries.length == 0"
        >
          <input
            :checked="toggleCheckBox(brewery)"
            type="checkbox"
            id="addToBeerCrawl"
            name="beerCrawlToggle"
            v-on:change="addToBeerCrawl(brewery)"
          />
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
            <div class="review">
              <review :beer="beer" />
            </div>
            <div class="drank" v-on:click="toggleDrank(beer)">
              <img v-show="beer.drank" src="https://i.imgur.com/6XCzZEQ.png" />
              <img v-show="!beer.drank" src="https://i.imgur.com/YnuPcOd.png" />
            </div>
            <div
              id="remove"
              class="remove"
              v-on:click="removeFromPassport(beer.beerId, brewery)"
            >
              <img src="https://i.imgur.com/vdqV5fW.png" />
            </div>
          </div>
          </div>


    <div class="main" v-show="beerCrawlBreweries.length > 0"
>
      <div class="leftPanel">
        <div
          class="passport"
          v-for="brewery in fullObject"
          :key="brewery.id"
          :isRendered="checkBrewery(brewery)"
        >
          <input
            :checked="toggleCheckBox(brewery)"
            type="checkbox"
            id="addToBeerCrawl"
            name="beerCrawlToggle"
            v-on:change="addToBeerCrawl(brewery)"
          />
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
            <div class="review">
              <review :beer="beer" />
            </div>
            <div class="drank" v-on:click="toggleDrank(beer)">
              <img v-show="beer.drank" src="https://i.imgur.com/6XCzZEQ.png" />
              <img v-show="!beer.drank" src="https://i.imgur.com/YnuPcOd.png" />
            </div>
            <div
              id="remove"
              class="remove"
              v-on:click="removeFromPassport(beer.beerId, brewery)"
            >
              <img src="https://i.imgur.com/vdqV5fW.png" />
            </div>
          </div>
        </div>
      </div>

      <!-- BAR CRAWL LIST STARTS HERE  -->
      <div class="rightPanel">
        <div class="barCrawlList" v-show="beerCrawlBreweries.length > 0">
            <h1>Beer Crawl Itinerary</h1>
      <div id="print-button" v-on:click="printItinerary">
        <p>Print</p>
        </div>

          <div
            class="brewery-info"
            v-for="brewery in beerCrawlBreweries"
            :key="brewery.id"
          >
            <div class="brewery-name">
              {{ beerCrawlBreweries.indexOf(brewery) + 1 }})
              {{ brewery.breweryName }}
            </div>
            <div :rendered="getBreweryAddress(brewery)" class="brewery-address">
              {{ address }}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>



// SCRIPT STARTS HERE

<script>
import PassportService from "../services/PassportService";
import BreweryService from "../services/BreweryService.js";
import Review from "./Review.vue";
export default {
  components: { Review },
  name: "my-passport",
  data() {
    return {
      allBreweries: [],
      passport: {
        brewery: {},
      },
      beerCrawlBreweries: [],
      address: "",
      breweryToOpen: "",
    };
  },

  computed: {
    fullObject() {
      let PassportObject = this.passport;
      console.log("changing");
      return PassportObject;
    },
  },

  methods: {


    printItinerary() {
      
     let contents = this.beerCrawlBreweries;
     let dialog = window.open('', '', 'height=500, width=500');
            dialog.document.write('<html>');
            dialog.document.write('<body > <h1>Bar Crawl Itinerary</h1>');

            contents.forEach(pub => {
              this.getBreweryAddress(pub);
              dialog.document.write(`<p><strong>${contents.indexOf(pub)+1}) ${pub.breweryName}</strong> <br> ${this.address}</p>`);
            });

            dialog.document.write('</body></html>');
            dialog.document.close();
            dialog.print();
    },


    addToBeerCrawl(brewery) {
      let pub = this.beerCrawlBreweries;
      if (!this.beerCrawlBreweries.includes(brewery)) {
        pub.push(brewery);
      } else {
        let index = pub.indexOf(brewery);
        pub.splice(index, 1);
      }
    },
    getBreweryAddress(brewery) {
      this.allBreweries.forEach((b) => {
        if (brewery.breweryId == b.breweryId) {
          return this.address =
            b.streetAddress + " " + b.city + ", " + b.state + " " + b.zip;
        }
      });
    },

    toggleCheckBox(brewery) {
      if (this.beerCrawlBreweries.includes(brewery)) {
        return true;
      } else {
        return false;
      }
    },

    getBreweries() {
      PassportService.breweryPassport(this.$store.state.user.id).then(
        (response) => {
          this.passport = response.data;
        }
      );
      BreweryService.listBreweries().then((response) => {
        this.allBreweries = response.data;
        console.log(this.allBreweries);
      });
    },

    toggleDrank(beer) {
      beer.drank = !beer.drank;
      PassportService.updateDrank(this.$store.state.user.id, beer.beerId);
    },
    cardOpen(brewery) {
      brewery.cardOpen = !brewery.cardOpen;
    },
    checkBrewery(brewery) {
      if (brewery.breweryId == this.breweryToOpen) {
        brewery.cardOpen = true;
      }
    },

    removeFromPassport(beerId, brewery) {
      PassportService.deleteFromPassport(this.$store.state.user.id, beerId)
        .then((response) => {
          if (response.status === 200) {
            this.breweryToOpen = brewery.breweryId;
            this.getBreweries();
          }
        })
        .catch((error) => {
          console.log(error);
        });

      this.beerCrawlBreweries.forEach((brewery) => {
        if (brewery.breweryId == brewery.breweryId) {
          let index = this.beerCrawlBreweries.indexOf(brewery);
          this.beerCrawlBreweries.splice(index, 1);
        }
      });
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
.main-passport {
  margin: 0 auto;
  width: 60vw;
}

.passport {
  margin: 0 auto;
  /* width: 100vw; */
}

/* Styles individual brewery tiles */
#breweryCard {
  display: flex;
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
  width: 20%;
  margin-left: 30px;
  font-size: 1em;
  font-weight: bold;
}
.beer-style {
  width: 20%;
  font-size: 1em;
  font-style: italic;
}
.beer-abv {
  width: 20%;
  display: inline-block;
  font-style: italic;
  font-size: 1em;
}
.review {
  width: 12%;
}
.drank {
  width: 9%;
}
.drank img {
  display: flex;
  margin: 0 auto;
  width: 40px;
  height: auto;
}
.remove {
  width: 9%;
  margin-right: 30px;
}
.remove img {
  float: right;
  width: 40px;
  margin: 0 auto;
  height: auto;
}

#button {
  width: 25px;
  height: 25px;
  background-color: red;
}

/* STYLING FOR THE BAR CRAWL LIST */

.barCrawlList {
  /* width: 58vw; */

  margin: 36px 10px 10px 20px;

  height: auto;
  margin: 0 auto;

  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0main, 0.75);
}

.barCrawlList h1 {
  font-size: 2em;
  background-color: rgba(99, 98, 98, 0.718);
  color: white;
  text-align: center;
  display: flex;
  flex-direction: column;
  justify-self: center;
  align-self: center;
  padding: 10px 0px;
}

.brewery-info {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  background-color: white;
  margin: 3px 0px;

  -webkit-box-shadow: 0 8px 6px -6px black;
  -moz-box-shadow: 0 8px 6px -6px black;
  box-shadow: 0 8px 6px -6px black;
}

.brewery-name {
  float: left;
  margin-left: 50px;
  font-weight: bold;
}

.brewery-address {
  margin-right: 50px;
  font-style: italic;
}

/* positions checkbox */
#addToBeerCrawl {
  position: absolute;
  width: 20px;
  height: 20px;
  transform: translate(25px, 15px);
}

#print-button {
  background-color: rgb(44, 72, 235);
  border-radius: 5px;
  width: 50px;
  height: 30px;
  position: absolute;
  transform: translate(500px,-50px);  
    -webkit-box-shadow: 3px 0px 6px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 3px 0px 6px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 3px 0px 6px 0px rgba(0, 0, 0, 0.75);
}

#print-button:hover {
  background-color: #1d309e;
  cursor: pointer;
}
#print-button p {
  color: white;
  text-align: center;
  font-size: 1em;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

}


.main {
  width: 75vw;
  background-color: rgba(228, 228, 228, 0.164);
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1.0fr 1fr;
  grid-template-areas: "left-panel right-panel";

}

.leftPanel {
  width: 100%;
  grid-area: left-panel;
  
}

.rightPanel {
  margin-right: 15px;
  grid-area: right-panel;




}


</style>