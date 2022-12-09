<template>
  <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
      <p>Sign in to view and update your passport</p>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <div id="inputBoxes">
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      </div>
      <div class="sign-in-button">
      <button  type="submit" >Sign in</button>
      </div>
      <router-link id="register-button" :to="{ name: 'register' }">CREATE A PASSPORT</router-link>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.setUserInfo();
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },
    setUserInfo(){
      let id=this.$store.state.user.id;
      authService.get(id).then(response=>{
        this.$store.commit('SET_USER_INFO', response.data)
      })
    }
  }
};
</script>

<style scoped>
body {
   background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100vh;
  background-color: black;
}
.form-signin{
  margin-top:25px;
  height:400px;
  width: 400px;
  border-radius: 5px;
  border-width: 5px;
  border-color: 2px;
  border: black;
  background-color: white;
  display: grid;
  grid-template-rows: .5fr 1fr 2fr 1fr 1fr;
  grid-template-areas: "header" "mini-text" "forms" "button" "register";
}
#inputBoxes{
  grid-area: forms;
  width: 80%;
  margin: 5px;
  justify-content: center;
  align-content: center;
}
h1{
  grid-area: header;
  color: black;
  font-weight: bold;
  font-size: xx-large;
}
p{
  grid-area: mini-text;
}
#login{
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
#register-button{
  grid-area: register;
  color: black;
  font-size: x-large;
}
.sign-in-button{
  grid-area: button;
  position: relative;
  background: none;
  color: black;
}



</style>
