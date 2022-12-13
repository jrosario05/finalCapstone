<template>
  <div id="background">
    <div class="brewery_detail">
      <div class="brewery_photo">
        <img v-bind:src="brewery.imgUrl" />
        <div id="color-box"></div>
      </div>
      <div id="title-info">
        <h1 id="brewery_name" >{{ brewery.breweryName}}</h1>
        <p id="description">
          {{ brewery.description}}
        </p>
      </div>
    </div>

    <div class="information">
      <div class="address">
        <p>{{brewery.streetAddress}}  {{brewery.city}},  {{brewery.state}}  {{brewery.zip}}</p>
      </div>
      <div class="hours">
        <p>Monday - {{brewery.hours.monOpen}} - {{brewery.hours.monClose}}</p>
        <p>Tuesday - {{brewery.hours.tuesOpen}} - {{brewery.hours.tuesClose}}</p>
        <p>Wednesday - {{brewery.hours.wedOpen}} - {{brewery.hours.wedClose}}</p>
        <p>Thursday - {{brewery.hours.thursOpen}} - {{brewery.hours.thursClose}}</p>
        <p>Friday - {{brewery.hours.friOpen}} - {{brewery.hours.friClose}}</p>
        <p>Saturday - {{brewery.hours.satOpen}} - {{brewery.hours.satClose}}</p>
        <p>Sunday - {{brewery.hours.sunOpen}} - {{brewery.hours.sunClose}}</p>
      </div>

      <div class="contact">
        <div id="phone"><a v-bind:href="`tel:brewery.phoneNumber`">Call</a></div>
        <div id="website">
          <a v-bind:href="brewery.website">Visit</a>
        </div>
      </div>
    </div>

  <div class="beer-container">
      <beer-card v-for="beer in beers" 
      v-bind:key="beer.id"  
      v-bind:beer="beer"
      />
  </div>
  </div>
</template>

<script>
import BeerService from '../services/BeerService';
import BreweryService from "../services/BreweryService";
import BeerCard from "./BeerCard.vue";

export default {
  name: "brewery-details",
  components: { BeerCard },

  data() {
    return {
      brewery: {},
      beers: [],
    };
  },
  created(){
      BreweryService.breweryById(this.$route.params.id).then((response)=>{
        this.brewery=response.data;
      });
      BeerService.beerByBrewery(this.$route.params.id).then(response =>{
            this.beers=response.data;
        });

    },

};
</script>

<style scoped>
#background {
   background: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100%;
  background-color: black;

}


.beer-container {
    display:flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
    width: 65vw;
    margin: 0 auto;
    background-color: transparent !important;}

.brewery_detail {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-areas: "photo title-info";
  -webkit-box-shadow: 0px 8px 12px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 0px 8px 12px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 0px 8px 12px 0px rgba(0, 0, 0, 0.75);
}

#title-info {
  grid-area: title-info;
  padding-left: 50px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  background: rgba(0, 0, 0, 0.6);
  color: white;
}

#title-info h1 {
  text-shadow: 6px 6px 6px #272727;
}

.brewery_photo {
  grid-area: photo;
  -webkit-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 12px 0px 24px 0px rgba(0, 0, 0, 0.75);
}

.brewery_photo img {
  display: flex;
  margin: 0;
  padding: 0;
  width: 100%;
}

#brewery_name {
  margin: 0;
  color: white;
}

#description {
  margin: 0;
  margin-top: 10px;
}

.information {
  text-shadow: 1px 1px 1px #000000;
  padding: 0px 0px 10px 0px;
  background-color: rgb(167, 167, 167, 0.6);
  width: 100%;
  display: grid;
  grid-template-rows: 1fr 1fr 1fr;
  grid-template-areas:
    "address"
    "hours"
    "contact";
}

.address {
  grid-area: address;
  font-size: 1.45em;
  display: flex;
  flex-direction: row;
  justify-content: center;
  margin-top: 10px;
  margin-bottom: -30px;
}

.hours {
  display: flex;
  flex-direction: columns;
  justify-content: space-around;
  align-items: center;
  grid-area: hours;
  margin: 0;
  font-size: 0.75em;
}

.contact {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-template-areas: ". phone website .";
  margin: 0px 20px;
  margin-bottom: 10px;
}

#phone {
  grid-area: phone;
  display: flex;
  align-content: center;
  justify-content: center;
  margin-right: 25px;
  margin-left: 50px;
}

#phone a {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-content: center;
  width: 200px;
  height: 50px;
  color: black;
  text-decoration: none;
  text-align: center;
  background: rgb(238, 238, 238);
  border-radius: 15px;
  -webkit-box-shadow: 6px 3px 10px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 6px 3px 10px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 6px 3px 10px 0px rgba(0, 0, 0, 0.75);
  background-image: linear-gradient(160deg, #ffffff 0%, #979797 100%);
}

#phone a:hover {
  background-image: linear-gradient(160deg, #d8e7e2 0%, #95a19d 100%);
}
#website {
  grid-area: website;
  display: flex;
  align-content: center;
  justify-content: center;
  margin-right: 50px;
  margin-left: 25px;
}

#website a {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-content: center;
  width: 200px;
  height: 50px;
  background-image: linear-gradient(160deg, #ffffff 0%, #979797 100%);
  color: black;
  text-decoration: none;
  text-align: center;
  border-radius: 15px;
  -webkit-box-shadow: 6px 3px 10px 0px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 6px 3px 10px 0px rgba(0, 0, 0, 0.75);
  box-shadow: 6px 3px 10px 0px rgba(0, 0, 0, 0.75);
}

#website a:hover {
  background-image: linear-gradient(160deg, #d8e7e2 0%, #95a19d 100%);
}
</style>


         
         .btn-grad {

            transition: 0.5s;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }
         