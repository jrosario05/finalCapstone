<template>
    <div class="card">
      <div id="beer-image">
        <img v-bind:src="beer.imgUrl" />
      </div>
      <div id="beer-name">
        <h1>{{ beer.beerName }}</h1>
      </div>
      <!-- <div id="description">
      {{ beer.description }}
    </div> -->
    </div>
  <!-- </router-link> -->
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
  background-color: black;
  border: none;
  margin: 25px auto;
  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
}

#beer-name {
  position: absolute;
}

#beer-name h1 {
  padding: 0px 10px;
  font-size: 2em;
  color: white;
  text-shadow: 6px 6px 6px #272727;
}



#description {
  color: black;
}

#beer-image img {
  width: 300px;
  height: 300px;
  object-fit: cover;
  border-radius: 10px;
  opacity: 0.65;
}

#beer-image img:hover {

  opacity: 1;
}

</style>