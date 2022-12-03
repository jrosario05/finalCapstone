<template>
  <div id="background">
    <div class="brewery_detail">
      <div class="brewery_photo">
        <div id="overlay"></div>
        <img
          src="https://drinkupcolumbus.com/wp-content/uploads/2020/08/edison-brewing.jpg"
        />
      </div>
      <div id="title-info">
        <h1 id="brewery_name">Edison Brewing Company</h1>
        <p id="description">
          European-style Brewpub with spacious Biergarten to enjoy views of Port
          Columbus Airport, Downtown Skylines, Sunsets and Golf.
        </p>
      </div>
    </div>

    <div class="information">
      <div class="address">
        <p>785 Science Blvd Gahanna, OH 43230</p>
      </div>
      <div class="hours">
        <p>Monday - Closed</p>
        <p>Tuesday - 3:00pm to 9:00pm</p>
        <p>Wednesday - 3:00pm to 9:00pm</p>
        <p>Thursday - 3:00pm to 10:00pm</p>
        <p>Friday - 12:00pm to 11:00pm</p>
        <p>Saturday - 11:00am to 11:00pm</p>
        <p>Sunday - 12:00pm to 8:00pm</p>
      </div>

      <div class="contact">
        <p id="phone">(614) 762-6183</p>
        <a id="website" href="https://www.drinkedison.com/">drinkedison.com</a>
      </div>
    </div>

    <beer-card />
  </div>
</template>

<script>
import BeerCard from "./BeerCard.vue";
export default {
  name: "brewery-details",

  components: { BeerCard },
};
</script>

<style scoped>
/* #background {
    background-image: url("https://www.patriot-place.com/wp-content/uploads/2019/09/Wormtown-beer-garden-hero-bg.jpg");
    height: 100%;
    position: sticky;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
} */

.brewery_detail {
  /* background-image: url();
  background-repeat: no-repeat;
  background-color: #f3f3f4; */
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-areas: "photo title-info";
  width: 100%;
}

#title-info {
  grid-area: title-info;
  padding-left: 50px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  background-color: black;
  color: white;
  opacity: 0.6;
}

/* #overlay {
  background-color: black;
  width: 100%;
  height: auto;
} */

.brewery_photo {
  grid-area: photo;
  background-color: black;
}

#brewery_name {
  margin: 0;
}

#description {
  margin: 0;
  margin-top: 10px;
}

.brewery_photo img {
  width: 100%;
  height: auto;
}

.information {
  background-color: rgb(230, 230, 230);
  width: 100%;
  opacity: 0.7;
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-areas:
    "address address"
    "hours hours"
    "phone website";
}

.hours {
  display: flex;
  flex-direction: columns;
  justify-content: space-around;
  grid-area: hours;
}

.address {
  grid-area: address;
}

#phone {
  grid-area: phone;
}
#website {
  grid-area: website;
}
</style>