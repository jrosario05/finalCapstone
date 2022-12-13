
<template>
  <div :rendered="populateFilter()">
    <div
      :rendered="checkPassport(beer)"
      class="visible"
      v-show="$store.state.token != ''"
    >
      <div @mouseenter="hover = true" @mouseleave="hover = false" class="card" id="addToPassport" v-show="!beer.inPassport" v-on:click="addBeerToPassport(beer)">
        <p v-show="hover"  id="addText" >Add to Passport</p>
        <img src="https://i.imgur.com/o3yJ5PP.png" />
      </div>
      <div class="card" id="currentlyInPassport" v-show="beer.inPassport">
        <p id="addedText">Added to Passport</p>
        <img src="https://i.imgur.com/kZz7FLZ.png" />
      </div>

      <div class="overlay" v-show="this.msg != ''" v-on:click="closeMsg">
        <div id="successMsg">
          <h1 class="msg">{{ this.msg }}</h1>
          <p>Click to close</p>
        </div>
      </div>
    </div>

    <div class="card" v-on:click="toggleShow">
      <transition name="fade">
        <div class="front" v-show="show">
          <div id="beer-image">
            <img v-bind:src="beer.imgUrl" />
          </div>
          <div class="banner-details">
            <div id="beer-name">
              <h1>{{ beer.beerName }}</h1>
            </div>
          </div>
        </div>
      </transition>
      <transition name="fade">
        <div class="back" v-show="!show">
          <div class="details">
            <h1>{{ beer.beerName }}</h1>
            <h3>Style: {{ beer.style }}</h3>
            <h3>ABV: {{ beer.abv }}</h3>
            <p class="description">{{ beer.description }}</p>
          </div>

          <img v-bind:src="beer.imgUrl" />
        </div>
      </transition>
    </div>
  </div>
</template>
<script>
import PassportService from "../services/PassportService";
export default {
  name: "beer-card",
  props: ["beer"],
  data() {
    return {
      beerForDetails: {},
      filterArray: [],
      show: true,
      msg: "",
      hideMsg: false,
      check: "",
      hover: false
    };
  },

  methods: {
    addBeerToPassport(beer) {
      console.log("it clicked");
      PassportService.addBeerToPassport(this.$store.state.user.id, beer)
        .then((response) => {
          if (response.status == 200) {
            beer.inPassport = true;
            this.msg = beer.beerName + " has been added to your passport";
          }
        })
        .catch((error) => {
          console.log(error);
        });
    },
    closeMsg() {
      this.msg = "";
    },

    toggleShow() {
      if (this.show == false) {
        this.show = true;
      } else {
        this.show = false;
      }
    },
    checkPassport(beer) {
      this.filterArray.forEach((b) => {
        if (b.beerId == beer.beerId) {
          beer.inPassport = true;
          console.log(beer.beerName + " flipped");
        } else {
          console.log(beer.beerName + " didnt flip");
        }
      });
    },
    populateFilter() {
      PassportService.getBeerFilter(this.$store.state.user.id).then(
        (response) => {
          this.filterArray = response.data;
        }
      );
    },
  },
};
</script>
<style scoped>
.overlay {
  text-align: center;
  width: 250px;
  height: auto;

  /* padding: 15px 0px; */
  z-index: 10;
  margin: 0 auto;
  border-radius: 3px;

  background-color: rgba(93, 216, 104, 0.85);
  color: white;
  transform: translate(100px, 200px);
  position: absolute;
}

.msg {
  margin: 0 auto;

  font-size: 1em;
  display: inline-block;
}

#successMsg p {
  margin: 0 auto;

  font-size: 0.5em;
}

#closeMsg {
  display: inline-block;
  position: absolute;
  width: 25px;
  height: auto;
  filter: brightness(50%) grayscale(100%);
  transform: translate(0, -25px);
}

#addToPassport {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

  background-color: rgb(240, 230, 174);
  border: 3px outset rgba(230, 230, 230), 0.75;
  width: 45px;
  height: 45px;
  border-radius: 100%;
  z-index: 10;
  transform: translate(225px, 40px);

  -webkit-box-shadow: 5px 5px 6px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 5px 5px 6px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 5px 5px 6px 0px rgba(0, 0, 0, 0.75);
}


#currentlyInPassport {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  background-color: rgb(0, 139, 12);
  border: 3px outset rgba(230, 230, 230), 0.75;
  width: 45px;
  height: 45px;
  border-radius: 100%;
  z-index: 10;
  transform: translate(225px, 40px);

  -webkit-box-shadow: 5px 5px 6px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 5px 5px 6px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 5px 5px 6px 0px rgba(0, 0, 0, 0.75);
}

#addText  {
  text-align: center;
  font-size: 0.5em;
  position: absolute;
  z-index: 4;
  font-weight: bold;
  color: rgb(0, 0, 0);
  margin: 0 auto;
  text-shadow: 0.5px 0.5px 0.25px #8d8d8d;
}

#addedText {
  text-align: center;
  font-size: 0.25em;
  position: absolute;
  z-index: 4;
  font-weight: bold;
  color: white;
  margin: 0 auto;
  text-shadow: 0.5px 0.5px 0.25px #8d8d8d;
}

#addToPassport img {
  width: 35px;
  height: auto;
  filter:  brightness(100%) grayscale(100%) hue-rotate(46deg);
}

#addToPassport:hover img {

  opacity: 0.2;
}

#currentlyInPassport img {
  width: 30px;
  height: auto;
  opacity: 1;
  transform:translate(1px,-1px);
  filter: invert(100%) brightness(100%);
}

.card {
  z-index: 1;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  width: 250px;
  height: 250px;
  border-radius: 10px;
  border: none;
  margin: 15px 50px;
  background-color: transparent;

  animation: fadeinout 4s linear forwards;
}

.front {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: white;
  border-radius: 10px;
  border: none;
  position: absolute;
  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -webkit-animation: fadeinout 4s linear forwards;
}

#beer-image img {
  filter: grayscale(75%);
  width: 250px;
  height: 250px;
  object-fit: cover;
  border-radius: 10px;
}

#beer-image:hover img {
  filter: grayscale(0);
}

.back {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 100%;
  height: 100%;
  color: white;
  border-radius: 20px;
  background-color: rgb(48, 31, 0);
  border-radius: 10px;
  border: none;
  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -webkit-animation: fadeinout 4s linear forwards;
}

.details h1 {
  text-align: center;
  font-size: 1.5em;
}

.details h3 {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  font-size: 1em;
}

.description {
  z-index: 15;
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  justify-content: center;
  overflow: hidden;
  max-width: 200px;
  max-height: 110px;
  text-overflow: ellipsis;
  margin: 10px 20px 0px;
  font-size: 0.75em;
}

#beer-name {
  text-align: center;
  margin: 0 auto;

  font-size: 1em;
}

.banner-details {
  position: absolute;
  padding: 15px 0px;
  background-color: #636363b7;
  width: 100%;
  transform: translate(0, 0px);
}

#beer-name h1 {
  padding: 0px 10px;
  margin: 0;
  font-size: 1.6em;
  color: white;
  text-shadow: 6px 6px 6px #272727;
}
#description {
  color: black;
}

.back img {
  position: absolute;
  filter: grayscale(75%);
  width: 250px;
  height: 250px;
  object-fit: cover;
  border-radius: 10px;
  opacity: 20%;
}

/* Animation Properties */

.fade-enter-active {
  animation: fade-in 0.5s;
}
.fade-leave-active {
  animation: fade-out 0.5s;
}
@keyframes fade-out {
  0% {
    opacity: 1;
    transform: rotateY(0deg);
  }

  100% {
    opacity: 0;
    transform: rotateY(180deg);
  }
}

@keyframes fade-in {
  0% {
    opacity: 0;
    transform: rotateY(180deg);
  }

  100% {
    opacity: 1;
    transform: rotateY(0deg);
  }
}
</style>







