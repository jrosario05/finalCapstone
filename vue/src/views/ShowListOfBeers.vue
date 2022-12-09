<template>
  <div>
      <beer-list>
      </beer-list>
       <!-- <beer-detail/> -->
  </div>
</template>

<script>
// import BeerDetail from '../components/BeerDetail.vue'
import BeerList from '../components/BeerList.vue'
export default {
    name: 'beers',
  components: { BeerList, 
  // BeerDetail
  },

}
</script>

<style scoped>

</style>