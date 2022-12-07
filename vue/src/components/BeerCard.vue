<template>
  <div>
    <div class="card">
      <div class="front">
        <div id="beer-image" v-on:click="someFunctions()">
          <img v-bind:src="beer.imgUrl" />
        </div>
        <div class="banner-details">
          <div id="beer-name">
            <h1>{{ beer.beerName }}</h1>
          </div>
        </div>
      </div>
      <div class="back">
        <h3>{{ beer.style }}</h3>
        <h3>{{ beer.abv }}</h3>
        <p class="description">{{ beer.description }}</p>
      </div>
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
    };
  },

  methods: {
    someFunctions() {
      this.$store.commit("BEER_FOR_DETAILS", this.beer);
      console.log(this.$store.state.currentBeer);
    },
  },
};
</script>
<style scoped>
.card {
  flex-direction: row;
  justify-content: center;
  align-items: center;
  width: 300px;
  height: 300px;
  border-radius: 10px;
  background-color: white;
  border: none;
  margin: 25px 25px;
  /* -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75); */
}

.front {
  position: absolute;
  width: 275px;
  height: 400px;
  background: linear-gradient(135deg, #f1f1f1, #e7e7e7 20%);
  border: 0.5px solid;
  color: black;
  border-radius: 20px;
  -webkit-backface-visibility: hidden; /* Safari */
  backface-visibility: hidden;
}

.back {
  position: absolute;
  width: 275px;
  height: 400px;
  background: linear-gradient(135deg, #f1f1f1, #e7e7e7 20%);
  box-shadow: 3px 3px 18px 1px;
  color: black;
  border-radius: 20px;
}
#beer-name {
  text-align: center;
  font-size: 0.75em;
}
/* #ABV {
  background-color: rgba(236, 236, 236, 0.75);
  text-align: center;
  transform: translate(0, 100px);
  color: gold;
  font-size: 2em;
  margin: 20px;
}
#beer-style {
  text-align: center;
} */
.banner-details {
  position: absolute;
  padding: 15px 0px;
  background-color: #636363b7;
  width: 100%;
  transform: translate(0, 0px);
  /* border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px; */
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
#beer-image img {
  filter: grayscale(75%);
  width: 300px;
  height: 300px;
  object-fit: cover;
  border-radius: 10px;
  /* opacity: 0.65; */
  /* -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75); */
  /* filter: drop-shadow(12px 0px 24px rgba(0, 0, 0, 0.75)); */
}
#beer-image:hover img {
  filter: grayscale(0);
}
.pop-up {
  width: 300px;
  height: 300px;
  margin: 50px;
  display: flex;
  flex-direction: column;
  position: absolute;
  z-index: 50;
}
.beer-details img {
  width: 25%;
}
</style>







