<template>
  <div id="register" class="text-center">
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
        <label for="firstName" class="sr-only">Password</label>
      <input
        type="name"
        id="fname"
        class="form-control"
        placeholder="First Name"
        v-model="userInfo.userFirstName"
        required
      />
            <label for="lastName" class="sr-only">Password</label>
      <input
        type="name"
        id="lname"
        class="form-control"
        placeholder="Last Name"
        v-model="userInfo.userLastName"
        required
      />
      <label for="address" class="sr-only">Password</label>
      <input
        type="address"
        id="address"
        class="form-control"
        placeholder="Street Address"
        v-model="userInfo.address"
        required
      />
      <label for="city" class="sr-only">Password</label>
      <input
        type="city"
        id="city"
        class="form-control"
        placeholder="city"
        v-model="userInfo.city"
        required
      />
      <label for="state" class="sr-only">Password</label>
      <input
        type="state"
        id="state"
        class="form-control"
        placeholder="state"
        v-model="userInfo.state"
        required
      />
      <label for="zip" class="sr-only">Password</label>
      <input
        type="zip"
        id="zip"
        class="form-control"
        placeholder="Zip Code"
        v-model="userInfo.zipCode"
        required
      />
      <router-link :to="{ name: 'login' }">Have an account?</router-link>
      <button class="btn btn-lg btn-primary btn-block" type="submit">
        Create Account
      </button>
    </form>
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

 #register{
   background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100vh;
  background-color: black;

}

</style>
