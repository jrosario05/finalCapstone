/* v-show="$store.state.token != ''" */

<template>
  <div>
          

    <div class="card" v-on:click="toggleShow">
      <transition name="fade">
        <div class="front" v-show="show">
          <div id="beer-image" v-on:click="someFunctions()">
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
export default {
  name: "beer-card",
  props: ["beer"],
  data() {
    return {
      beerForDetails: {},
      show: true,
    };
  },

  methods: {
    someFunctions() {
      this.$store.commit("BEER_FOR_DETAILS", this.beer);
      console.log(this.$store.state.currentBeer);
    },

    toggleShow() {
      if (this.show == false) {
        this.show = true;
      } else {
        this.show = false;
      }
    },
  },
};
</script>
<style scoped>
.card {
  flex-direction: row;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  width: 300px;
  height: 300px;
  border-radius: 10px;
  border: none;
  margin: 25px 100px;
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
  width: 300px;
  height: 300px;
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
  font-size: 2em;
}

.details h3 {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  font-size: 1.25em;
}

.description {
  padding: 0px 20px;
  margin-top: 10px;
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
  width: 300px;
  height: 300px;
  object-fit: cover;
  border-radius: 10px;
  opacity: 20%;
}

/* Animation Properties */

.fade-enter-active {
  animation: fade-in .5s;
}
.fade-leave-active {
  animation: fade-out .5s;
}
@keyframes fade-out {
  0% {
    opacity: 1;
    transform:rotateY(0deg);

  }
  
  100% {
    opacity: 0;
    transform:rotateY(180deg);

  }
}

@keyframes fade-in {
  0% {
    opacity: 0;
        transform:rotateY(180deg);

  }
  
  100% {
    opacity: 1;
            transform:rotateY(0deg);

  }
}




</style>







