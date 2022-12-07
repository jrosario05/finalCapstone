<template>
  <div>
    
      <router-link class="link" v-bind:to="{name: 'breweries'}"> Breweries</router-link>
      <router-link class="link" v-bind:to="{ name: 'passport' }" v-show="$store.state.token != ''" >MyPassport</router-link>
      <img src="https://www.pngkey.com/png/full/15-151006_picture-stock-beer-tap-clipart-beer-on-tap.png">
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
  background-color: rgba(0, 0, 0, 0.938);
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

.link {
  align-items: center;
  background-color: initial;
  background-image: linear-gradient(#464d55, #25292e);
  border-radius: 8px;
  border-width: 0;
  box-shadow: 0 10px 20px rgba(0, 0, 0, .1),0 3px 6px rgba(0, 0, 0, .05);
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-flex;
  flex-direction: column;
  font-family: expo-brand-demi,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  font-size: 18px;
  height: 52px;
  justify-content: center;
  line-height: 1;
  margin: 0;
  outline: none;
  overflow: hidden;
  padding: 0 32px;
  text-align: center;
  text-decoration: none;
  transform: translate3d(0, 0, 0);
  transition: all 150ms;
  vertical-align: baseline;
  white-space: nowrap;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.link:hover {
  box-shadow: rgba(0, 1, 0, .2) 0 2px 8px;
  opacity: .85;
}

.link:active {
  outline: 0;
}

.link:focus {
  box-shadow: rgba(0, 0, 0, .5) 0 0 0 3px;
}
</style>

