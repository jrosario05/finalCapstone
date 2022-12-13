import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

/*
 * The authorization header is set for axios when you login but what happens when you come back or
 * the page is refreshed. When that happens you need to check for the token in local storage and if it
 * exists you should set the header so that it will be attached to each request
 */
const currentToken = localStorage.getItem('token')
const currentUser = JSON.parse(localStorage.getItem('user'));

if(currentToken != null) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

export default new Vuex.Store({
  state: {
    breweries: [],
    token: currentToken || '',
    user: currentUser || {},
    userInfo: {},
    beers: [],
    passportBreweries: [],
    passportBeers: [],
    currentBeer:{
      beerName: 'test',
      imgURL: 'test',
      abv: 5,
    },
  },
  mutations: {
    PASSPORT_BEERS(state,data){
      state.passportBeers.push(data);
    },
    PASSPORT_BREWERIES(state,data){
      state.passportBreweries=data;
    },
    SET_USER_INFO(state, data){
      state.userInfo=data;
    },
    BEER_FOR_DETAILS(state, data){
      state.currentBeer=data;
    },
    MAKE_BREWERY_LIST(state, data){
      state.breweries=data;
    },
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    },
    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user',JSON.stringify(user));
    },
    LOGOUT(state) {
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      state.token = '';
      state.user = {};
      axios.defaults.headers.common = {};
    },
    MAKE_BEER_LIST(state, data) {
      state.beers=data;
    },
    
  }
})
