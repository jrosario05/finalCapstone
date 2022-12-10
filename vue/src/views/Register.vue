<template>
<div class="registerContainer">
  <div  class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
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
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      />
        <label for="firstName" class="sr-only">First Name</label>
      <input
        type="name"
        id="fname"
        class="form-control"
        placeholder="First Name"
        v-model="userInfo.userFirstName"
        required
      />
            <label for="lastName" class="sr-only">Last Name</label>
      <input
        type="name"
        id="lname"
        class="form-control"
        placeholder="Last Name"
        v-model="userInfo.userLastName"
        required
      />
      <label for="address" class="sr-only">Street Address</label>
      <input
        type="address"
        id="address"
        class="form-control"
        placeholder="Street Address"
        v-model="userInfo.address"
        required
      />
      <label for="city" class="sr-only">City</label>
      <input
        type="city"
        id="city"
        class="form-control"
        placeholder="city"
        v-model="userInfo.city"
        required
      />
      <label for="state" class="sr-only">State</label>
      <input
        type="state"
        id="state"
        class="form-control"
        placeholder="state"
        v-model="userInfo.state"
        required
      />
      <label for="zip" class="sr-only">ZipCode</label>
      <input
        type="zip"
        id="zip"
        class="form-control"
        placeholder="Zip Code"
        v-model="userInfo.zipCode"
        required
      />
      <router-link :to="{ name: 'login' }">Have an account?</router-link>
      <div class="btn btn-lg btn-primary btn-block" type="submit">
        Create Account
      </div>
    </form>
  </div>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      userInfo: {
        userName:''
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.updateUserName();
              this.sendUserInfo();
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
    sendUserInfo(){
      authService.sendInfo(this.userInfo)
    },
    updateUserName(){
      this.userInfo.userName=this.user.username;
    },
  }
};
</script>

<style scoped> 

 .registerContainer{
   background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100%;
  background-color: black;
  display: flex;
  justify-content: center;


}

.text-center{
  height:1000px;
  width: 400px;
  border-radius: 5px;
  border-width: 5px;
  border-color: 2px;
  border: black;
  background-color: white;
  margin-top: 35px;
  display: flex;
  justify-content: center;
}
#inputBoxes{
  grid-area: forms;
  width: 100%;
  margin: 10px;
  display: grid;
  grid-template-rows: .5fr 1fr .5fr 1fr;
  grid-template-areas: "userLabel" "userInput" "passwordLabel" "passwordInput";
;
}
input{
  width:90%
}

#usernameLabel{
  grid-area: userLabel;
}
#username{
  grid-area: userInput;
}
#passwordLabel{
  grid-area: passwordLabel;
}
#password{
  grid-area: passwordInput;
}




#signOnHeader{
  grid-area: header;
  color: black;
  font-weight: bold;
  font-size: xx-large;
  display: flex;
  justify-content: center;
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
#button-full-div{
  grid-area: button;
  display: flex;
  width: 100%;
  height: 100%;
  align-items: center;
  justify-content: center;
}
#sign-in-button-div{
  grid-area: button;
  border-radius: 4px;
  border: black;
  border-width: 5px;
  border: solid;
  background: none;
  color: black;
  width: 100px;
  height: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
  
}

#sign-in-button-div:hover{
  background-color: rgb(190, 190, 190);
}



#sign-in-button-div p{
  margin: 0;
  display: flex;
  align-items: center;
  justify-content: center;


}

#register-button:hover{
  color: blue;
}

</style>
