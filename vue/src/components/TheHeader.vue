<template>
  <div>
    <img src="https://images.squarespace-cdn.com/content/v1/576fd738f5e231ddf3c84701/1657991335226-D0J2ET5PKNZ4S3SDXVUC/BH+Logo.png">
      <router-link class="link" v-bind:to="{name: 'breweries'}"> Breweries</router-link>
      <router-link class="link" v-bind:to="{ name: 'passport' }" v-show="$store.state.token != ''" >MyPassport</router-link>
      
      <router-link class="link" v-bind:to="{ name: 'beers'}"> All Beers</router-link>
      <router-link class="link" v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>
      <router-link class="link" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
  </div>
</template>

<script>
export default {
    name: 'the-header',

}
</script>

<style scoped>

div{
  background-color: rgba(255, 255, 255, 0.938);
  padding: 5px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-around;
}
img{
  width: 3%;
  margin: 10px;
}



.link:hover {
  box-shadow: rgba(0, 1, 0, .2) 0 2px 8px;
  opacity: .85;
}



.link:focus {
  box-shadow: rgba(0, 0, 0, .5) 0 0 0 3px;
}
</style>

