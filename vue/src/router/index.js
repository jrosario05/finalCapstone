import Vue from 'vue'
import Router from 'vue-router'
import Passport from '../views/Passport.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import Register from '../views/Register.vue'
import ShowListOfBreweries from '../views/ShowListOfBreweries.vue'
import BreweryDetailsPage from '../views/BreweryDetailsPage.vue'
import ShowListOfBeers from '../views/ShowListOfBeers.vue'

import store from '../store/index'
import Home from '../views/Home.vue'

Vue.use(Router)

/**npm run serve
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/passport',
      name: 'passport',
      component: Passport, 
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: Logout,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/breweries/:id",    //THIS IS INDIVIDUAL BREWERIES
      name: "breweryDetails",
      component: BreweryDetailsPage,
      meta: {
        requiresAuth: false
      }
    },
    {
    
      path: "/breweries",   //THIS IS LIST OF ALL BREWERIES
      name: "breweries",
      component: ShowListOfBreweries,
      meta: {
        requiresAuth: false
      }
    },
  {
    path:"/beers",  //THIS IS A LIST OF ALL BEERS
    name: "beers",
    component: ShowListOfBeers,
    meta: {
      requiresAuth: false
    }
  },


  {
    path:"/",
    name: "home",
    component: Home,
    meta:{
      requiresAuth: false
    }

  }

    
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && store.state.token === '') {
    next("/login");
  } else {
    // Else let them go to their next destination
    next();
  }
});

export default router;
