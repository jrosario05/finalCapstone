<template>
  <div class="container-fluid text-center">
    <div class="row content">
      <div id="border">
        <h3 id="main-text">
          COME HOP AROUND<br />
          COLUMBUS WITH YOUR PASSPORT!
        </h3>

        <p id="header-text">Discover new breweries throughout Columbus</p>

        <button class="header-button">Get Your Passport</button>
      </div>

      <h1>Welcome</h1>
      <p>
        If you like beer as much as we do, you are in the right place.<br />
        We partner with local breweries, so you can connect with them from.<br />

        Explore local breweries, get stamps, enjoy beer. Cheers!
      </p>
      <hr />
      <div id="img-container">
        <div class="footer-img" id="footer-1">
          <img src="../resources/passport.png" class="img-footer" />
          <h3 class="footer-text">Get Your Passport</h3>
          <p class="footer-text">
            Track all the breweries you want to visit <br />
            and add their beers to your passport
          </p>
          <button class="button-bottom">Passport</button>
        </div>
        <div class="footer-img" id="footer-2">
          <img src="../resources/huge-kegs.png" class="img-footer" />
          <h3 class="footer-text">
            Explore Our Partner <br />
            Breweries
          </h3>
          <p class="footer-text">sldfkjs;lkdfjsfls</p>
          <button class="button-bottom">sdfs</button>
        </div>
        <div class="footer-img" id="footer-3">
          <img src="../resources/slave-pouring.png" class="img-footer" />
          <h3 class="footer-text">Drink Beer</h3>
          <p class="footer-text">sldfkjs;lkdfjsfls</p>

          <button class="button-bottom">slfjsljf</button>
        </div>
      </div>
      <!-- </div> -->
      <h3>Test</h3>
      <p>Lorem ipsum...</p>

      <!-- <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div> -->
    </div>
  </div>

  <!-- <footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer> -->

  <!-- </body> -->
</template>

<script>
export default {};
</script>

<style scoped>
#header-logo {
  max-width: 100%;
  position: relative;
}


#img-container {
  /* width:1300px; */
  /* padding-top: 50px;
  padding-bottom: 50px;
  padding-right: 100px;
  padding-left: 100px; */
  padding: 2rem;
  display: flex;

  justify-content: space-between;
  background-color: #333232;
}
footer {
  position: absolute;
  background-color: #555;
  color: white;
  padding: 15px;
}

.footer-img {
  /* margin-left: 115px; */
  display: flex;

  height: 350px;
}

#main-text {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -140%);
  color: white;
  font-weight: bold;

  font-size: 3em;
}
#header-text {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -10%);
  color: white;
  font-weight: bold;
  font-size: 2em;
  bottom: 10px;
}
.header-button {
  background-color: #809766;
  color: white;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, 125%);
  color: white;
  /* font-weight: bold; */
  /* transform: translate(10px, 10px); */
}
#border {
  display: flex;
  flex-direction: column;

  box-align: center;
  align-items: center;
  box-pack: center;
  justify-content: center;
  background-image: url(https://i.imgur.com/Su0fBEM.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  padding: 20% 0;
  min-height: 400px;
}



.button-bottom {
  background-color: #809766;
  color: white;
  padding: 0.5rem 1rem;
  margin: 0.5rem;
  left: 50%;
  top: 50%;
  color: white;
}

.footer-text {
  color: white;
}


#footer-1 {
  display: flex;
  flex-direction: column;
  padding: 0.5rem 1rem;
  margin: 0.5rem;
}

#footer-2 {
  display: flex;
  flex-direction: column;
}
#footer-3 {
  display: flex;
  flex-direction: column;
}

.img-footer {
  height: 250px;
}

.app {
  margin-top: 1px;
  margin-bottom: 1px;
  margin-right: 12px;
  margin-left: 12px;
}

img {
  border: 0;
}

r {
  padding-right: none;
}
</style>
