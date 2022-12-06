<template>
  <div>
      <img v-bind:src="beer.imgUrl"/>
      <h1>{{ beer.beerName }}</h1>
      <h3>{{ beer.abv }}</h3>
      <h3>{{ beer.style }}</h3>
      <p>{{ beer.description }}</p>


  </div>
</template>

<script>
export default {
    name: "beer-detail",
    props: ["beer"]

}
</script>

<style>

</style>