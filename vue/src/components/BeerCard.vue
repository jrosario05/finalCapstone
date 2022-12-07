<template>
  <div>
      <div class="card" v-on:click="toggleShow">
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
        <div class="back" v-show="!show">
          <div class="details">
            <h1>{{ beer.beerName }}</h1>
            <h3>Style: {{ beer.style }}</h3>
            <h3>ABV: {{ beer.abv }}</h3>
            <p class="description">{{ beer.description }}</p>
          </div>

          <img v-bind:src="beer.imgUrl" />
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
  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
}

.front {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.back {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  /* position: absolute; */
  width: 300px;
  height: 300px;
  color: black;
  border-radius: 20px;
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

#beer-image img {
  filter: grayscale(75%);
  width: 300px;
  height: 300px;
  object-fit: cover;
  border-radius: 10px;
}

/* #beer-image:hover img {
  filter: grayscale(0);
} */

.beer-details img {
  width: 25%;
}

</style>







