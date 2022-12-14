<template>
  <div id="header">
    <div id="logo">
      <router-link v-bind:to="{ name: 'home' }">
        <img src="../resources/hop-logo-black.png"
      /></router-link>
    </div>

    <div id="navigation">
      <router-link class="link" v-bind:to="{ name: 'breweries' }">
        Breweries</router-link
      >
      <router-link
        class="link"
        v-bind:to="{ name: 'passport' }"
        v-show="$store.state.token != ''"
        >MyPassport</router-link
      >

      <router-link class="link" v-bind:to="{ name: 'beers' }">
        All Beers</router-link
      >
          <div id="login">
      <router-link
        class="login-link"
        v-bind:to="{ name: 'login' }"
        v-if="$store.state.token == ''"
        >Login</router-link
      >
      <router-link
        class="login-link"
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token != ''"
        >Logout</router-link
      >
    </div>
    </div>

  </div>
</template>

<script>
export default {
  name: "the-header",
};
</script>

<style scoped>
#header {
  background-color: rgba(255, 255, 255, 0.822);

  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
}
#logo img {
  width: 150px;
  margin-left: 25px;
}
.link {
  margin-right: 50px;
  font-size: larger;
  font-weight: bolder;
  color: #bfcf5f;
}

.link:hover {
  opacity: 0.85;
  color: #515a20;
}

.link:focus {
  color: #292e0e;
}

#navigation {
  float: right;
  display: flex;
  flex-direction: row;
  justify-content: space-between ;
  align-items: center;
}

#navigation a {
  text-decoration: none;
}

#login {
  margin-right: 25px;
    font-size: 1.25e,;
  font-weight: bolder;
  width: 100px;
  height: 45px;
  border-radius: 5px;
  background-color:#bfcf5f; 
    display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
#login:hover {
  opacity: 0.85;
  background-color: #515a20;
}

#login:focus {
  opacity: 0.85;
  background-color:#292e0e;
}

#login a {
  color: white;
    text-decoration: none;
    margin-top: 2px;
    font-size: 1.5em;


}


</style>

