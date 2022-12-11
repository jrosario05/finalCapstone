<template>
  <div>
      <div
      v-for="rate in ratings"
      v-bind:key="rate.id"
      />
      <i class="bi bi-star"></i>
  </div>
</template>

<script>
export default {
    name: 'review',
    props: ['beer'],
    data(){
        return{
            ratings:[1,2,3,4,5]
        }
    }

}
</script>

<style scoped>

</style>>

