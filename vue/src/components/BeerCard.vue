<template>
  <div>
    <div class="card" v-show="true">
      <div id="beer-image">
        <img v-bind:src="beer.imgUrl" />
      </div>
      <div class="banner-details">
        <div id="beer-name">
          <h1>{{ beer.beerName }}</h1>
        </div>
      </div>
    </div>
    <!-- <div class="pop-up" v-show="true">
      <div class="beer-details">
        <img v-bind:src="beer.imgUrl" />
        <h1>
          {{ beer.beerName }}
        </h1>
        <div id="ABV">
          <p>{{ beer.abv }}%</p>
        </div>
        <div id="beer-style">
          <p>{{ beer.style }}</p>
        </div>
        <div id="description">
          <p>{{ beer.description }}</p>
        </div>
      </div>
    </div> -->
  </div>
</template>
<script>
export default {
  name: "beer-card",
  props: ["beer"],
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







