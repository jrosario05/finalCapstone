<template>
  
    <router-link class='card' v-bind:to="{name: 'beer'}">
      <!-- <p>{{beers.beerName}}</p>
      <p>{{beers.description}}</p> -->
    <div class="card" >
      <h5 class="card-title">{{beers.beerName}}</h5>
      <img class="card-img-top" src="https://static.wixstatic.com/media/27257e_5f093056bab54186a556035be344b5ab~mv2.png/v1/crop/x_762,y_0,w_1508,h_3000/fill/w_265,h_528,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/hildahefe.png" alt="Card image cap" />
      <div class="card-body">
        <p class="card-text">{{beers.description}}</p>
        <a href="#" class="btn btn-primary">Add TO PASSPORT</a>
      </div>
    </div>
    </router-link>
  
</template>

<script>
export default {
  name: "beer-card",
  props: ["beers"]
};
</script>

<style>
.card{
  color: black;
  width: 25%;
  height: 250px;
  margin: 15px;
  text-align: center;
}
.card-img-top{
  max-height: 200px ;
  width: auto;
}
.card-text{
  font-size: 75%;
}
</style>