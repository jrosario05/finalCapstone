<template>
  <div>
      <p>SHOW BREWERY DETAILS</p>
      <beer-cards/>
  </div>
</template>

<script>
import BeerCards from './BeerCards.vue'
export default {
name: 'breweries-details',

components: { BeerCards },

}
</script>

<style>

</style>