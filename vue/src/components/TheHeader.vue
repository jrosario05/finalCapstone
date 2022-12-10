<template>
  <div>
    <img src="https://i.imgur.com/d67GqPG.png">
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
  padding: 0px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-around;
}
img{
  width: 100px;
  margin: 2px;
}
.link{
font-size: larger; 
font-weight: bolder;
color: #bfcf5f
}



.link:hover {
  opacity: .85;
color: #515a20
}



.link:focus {
  color: #292e0e

}
</style>

