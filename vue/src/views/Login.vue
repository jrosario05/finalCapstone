<template>
  <div id="loginContainer">
    <div id="login" class="text-center">
      <form class="form-signin">
        <div id="signOnHeader">
          <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
        </div>
        <p>Sign in to view and update your passport</p>
        <div class="alert alert-danger" role="alert" v-if="invalidCredentials">
          Invalid username and password!
        </div>
        <div
          class="alert alert-success"
          role="alert"
          v-if="this.$route.query.registration"
        >
          Thank you for registering, please sign in.
        </div>
        <div id="inputBoxes">
          <label id="usernameLabel" for="username" class="sr-only"
            >Username</label
          >
          <input
            type="text"
            id="username"
            class="form-control"
            placeholder="Username"
            v-model="user.username"
            required
            autofocus
          />
          <label id="passwordLabel" for="password" class="sr-only"
            >Password</label
          >
          <input
            type="password"
            id="password"
            class="form-control"
            placeholder="Password"
            v-model="user.password"
            required
          />
        </div>
        <div id="button-full-div">
          <div id="sign-in-button-div">
            <p v-on:click="login()">Sign in</p>
          </div>
        </div>
        <router-link id="register-button" :to="{ name: 'register' }"
          >CREATE A PASSPORT ACCOUNT</router-link
        >
      </form>
    </div>
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
        password: "",
      },
      invalidCredentials: false,
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then((response) => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.setUserInfo();
            this.$router.push("/passport");
          }
        })
        .catch((error) => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },

    setUserInfo() {
      let id = this.$store.state.user.id;
      authService.get(id).then((response) => {
        this.$store.commit("SET_USER_INFO", response.data);
      });
    },
  },
};
</script>

<style scoped>


#loginContainer {
  background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg")
    no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100vh;
  background-color: black;
}

.form-signin {
 margin-top: 4rem;

  width: 20rem;
	padding: 2.1rem 2rem;
	border-radius: 0.7rem;
	display: flex;
	flex-direction: column;
	background: #fff;
	justify-items: center;
	align-items: center;
	box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
}
.h3{
  font-weight: 700;
	font-size: 2rem;
  color: #bfcf5f
}
#inputBoxes {
  grid-area: forms;
  width: 100%;
  margin: 10px;
  display: grid;
  grid-template-rows: 0.5fr 1fr 0.5fr 1fr;
  grid-template-areas: "userLabel" "userInput" "passwordLabel" "passwordInput";
  padding: 0.7rem 0.1rem;
	margin-bottom: 0.9rem;
	border: none;
	width: 100%;
 
}
input {
  width: 90%;
}

#usernameLabel {
  grid-area: userLabel;
  
}
#username {
  grid-area: userInput;
   background: #eeeeee;
	padding: 0.7rem 0.2rem;
	text-transform: capitalize;
}
#passwordLabel {
  grid-area: passwordLabel;
}
#password {
  grid-area: passwordInput;
   background: #eeeeee;
	padding: 0.7rem 0.2rem;
	text-transform: capitalize;
}

#signOnHeader {
  grid-area: header;
  color: black;
  font-weight: bold;
  font-size: xx-large;
  display: flex;
  justify-content: center;
}
login p {
font-size: 1.2rem;
text-decoration: none;

}


#login {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
#register-button {
  grid-area: register;
  color: #333233;
  font-size: 18px;
}
#button-full-div {
  grid-area: button;
  display: flex;
  width: 100%;
  height: 100%;
  align-items: center;
  justify-content: center;
}
#sign-in-button-div {
  grid-area: button;
  
 
  border-width: 10px;
  border: solid;
  background: none;
 
  margin-right: 10px;
  padding: 16px 28px;
  
	border-radius: 5px;
	font-weight: 700;
	border: 1px solid #333232;
	transition: all 200ms linear;
	margin-bottom: 2rem;
  background-color: #bfcf5f;
  
}
#sign-in-button-div p{
  color: white;
}

#sign-in-button-div:hover {
  background-color: #515A20;
}

#sign-in-button-div p {
  margin: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  
}



#register-button:hover {
  color: #292e0e;
}


</style>
