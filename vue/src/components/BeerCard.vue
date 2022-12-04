<template>
  <div>
    <div class="card" >
      <h5 class="card-title">Hilda</h5>
      <img class="card-img-top" src="https://static.wixstatic.com/media/27257e_5f093056bab54186a556035be344b5ab~mv2.png/v1/crop/x_762,y_0,w_1508,h_3000/fill/w_265,h_528,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/hildahefe.png" alt="Card image cap" />
      <div class="card-body">
        <p class="card-text">
          This classic take on the Bavarian Hefeweizen boasts plentiful notes of clove, spice, and ripe fruit as well as plenty of effervescence to carry those aromas to your nose. With a remarkably silky and full body, this beer satisfies in a truly unique way, while the crisp and refreshing finish begs for another glass. So indulge with us in this lively weizenbier. Prost.
        </p>
        <a href="#" class="btn btn-primary">Add TO PASSPORT</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "beer-cards",
};
</script>

<style>
.card{
  color: black;
  width: 15%;
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