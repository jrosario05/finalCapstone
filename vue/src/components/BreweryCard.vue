<template>
    <div class="card" v-on:click="viewBreweryDetails(brewery.breweryId)">
      <div id="brewery-image">
        <img v-bind:src="brewery.imgUrl" />
      </div>
      <div id="brewery-name">
        <h1>{{ brewery.breweryName }}</h1>
      </div>

    </div>
</template>

<script>
export default {
  name: "brewery-card",
  props: ["brewery"],

  methods:{
        viewBreweryDetails(id) {
      this.$router.push(`breweries/${id}`);
  },
  }
};
</script>

<style scoped>
body {
   background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100%;
  background-color: black;

}
.card {
  flex-direction: row;
  justify-content: center;
  align-items: center;
  width: 250px;
  height: 250px;
  border-radius: 10px;
  background-color: black;
  border: none;
  margin: 25px;
  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
}

#brewery-name {
  width: 250px;
  text-align: center;
  position: absolute;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

#brewery-name h1 {
  transform: translate(0px,-150px);
  margin: 0 auto;
  font-size: 1.75em;
  color: white;
  text-shadow: 6px 6px 6px #272727;
  width: 95%;
  text-align: center;
}



#description {
  color: black;
}

#brewery-image img {
  width: 250px;
  height: 250px;
  object-fit: cover;
  border-radius: 10px;
  opacity: 0.65;
}

#brewery-image img:hover {

  opacity: 1;
}

</style>