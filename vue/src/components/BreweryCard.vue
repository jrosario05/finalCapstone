<template>
  <div>
    <div>
      {{ brewery.breweryName }}
    </div>
    <div>
      {{ brewery.description }}
    </div>
    <router-link v-bind:to="{name: 'brewery'}">Click for brewery Details</router-link>
  </div>
</template>

<script>
export default {
  name: "brewery-card",
  props: ["brewery"],
};
</script>

<style scoped>
div {
  color: white;
}
</style>