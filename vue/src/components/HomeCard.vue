<template>
  <div id="full-homepage">
    <div id="splash-screen">
      <img src="../resources/city-background.png" />
      <div class="splash-text">
        <h3 id="main-text">
          COME HOP AROUND<br />
          COLUMBUS WITH YOUR PASSPORT!
        </h3>
        <p id="header-text">Discover new breweries throughout Columbus</p>

        <div id="splash-button">Get Your Passport</div>
      </div>
    </div>

    <div class="welcome">
      <h1>Welcome</h1>
      <p>
        If you like beer as much as we do, you are in the right place. We
        partner with local breweries, so you can connect with them from.
      </p>
      <p />
      <p>Explore local breweries, get stamps, enjoy beer.</p>
      <p id="strong">Cheers!</p>
    </div>

    <div class="tri-fold">


        <div class="tri-fold-element" id="first-image">
          <img src="../resources/passport.png" />
          <h3 class="title">Get Your Passport</h3>
          <p class="description">
            Track all the breweries you want to visit <br />
            and add their beers to your passport
          </p>
          <button class="bottom-button">Passport</button>
        </div>


        <div class="tri-fold-element" id="second-image">
          <img src="../resources/huge-kegs.png" />
          <h3 class="title">Explore our Partner Breweries</h3>
          <p class="description">
            Track all the breweries you want to visit <br />
            and add their beers to your passport
          </p>
          <button class="bottom-button">View Breweries</button>
        </div>



        <div class="tri-fold-element" id="third-image">
          <img src="../resources/slave-pouring.png" />
          <h3 class="title">Enjoy Responsibly</h3>
          <p class="description">
            Track all the breweries you want to visit <br />
            and add their beers to your passport
          </p>
          <button class="bottom-button">View Beer List</button>
        </div>


    </div>
    <div id="app">

  <transition name="fade" appear>
    <div class="modal-overlay" 
         v-if="showModal" 
         @click="showModal = false"></div>
  </transition>
  <transition name="pop" appear>
    <div class="modal" 
         role="dialog" 
         v-if="showModal"
         >
      <h1>Vue Transitions</h1>
      <p>The <code>&lt;transition&gt;</code> component in Vue can create wonderful animated entrances and exits.</p>
      <button @click="showModal = false" class="button">Hide Modal</button>

    </div>
  </transition>
</div>

  </div>
</template>

<script>
export default {
  data(){
    return{
      showModal: true
    }
  }
};
</script>

<style scoped>
#splash-screen {
  background-color: #000000;
  /* width: 100vw; */
  height: 500px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
footer {
  position: absolute;
  background-color: #555;
  color: white;
  padding: 15px;
}

#splash-screen img {
  width: 100%;
  height: 500px;
  object-fit: cover;
  object-position: center top;
  opacity: 0.8;
}

.splash-text {
  position: absolute;
}

#main-text {
  font-family: serif;
  color: white;
  font-size: 3em;
  margin: 0;
  text-align: center;
  text-shadow: 0.5px 0.5px 0.25px #8d8d8d;
}

#header-text {
  color: white;
  font-size: 2em;
  text-align: center;
  padding: 0;
  margin: 10px 0px 35px;
  text-shadow: 0.5px 0.5px 0.25px #8d8d8d;
}

#splash-button {
  width: 300px;
  height: 50px;
  background-color: #809766;
  color: white;
  border-radius: 5px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  font-size: 1.5em;
  margin: 0 auto;
  box-shadow: 12px 6px 10px 0px black;
}

.welcome {
  background-color: white;
  color: #809766;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.welcome h1 {
  font-size: 3em;
  font-family: serif;
  margin-top: 25px;
  margin-bottom: 15px;
}

.welcome p {
  width: 50%;
  font-size: 1.5em;
  text-align: center;
  margin-top: 0px;
  margin-bottom: 10px;
}

#strong {
  margin-top: 20px;
  font-weight: bolder;
  font-size: 2em;
}

.tri-fold {
background-color: #333232;
display: flex;
flex-direction: row;
justify-content: space-evenly
}

.tri-fold-element {
    margin-top: 35px;

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

}
.tri-fold-element img {
  width: 300px;
  height: 300px;
  object-fit: contain;
}

.title {
  color: white;
  text-align: center;
  font-size: 1.25em;
  margin-top: 10px;
  margin-bottom: 6px;
}

.description {
  color: white;
  margin-top: 5px;
  margin-bottom: 0px;
  text-align: center;
  
  font-size: 1em;

}

.bottom-button {
  width: 150px;
  height: 35px;
  margin-top: 15px;
  margin-bottom: 35px;
  color: white;
  background-color:  #809766;
  border: 1px solid white;
}


.button {
  border: none;
  color: #FFF;
  background: #42b983;
  appearance: none;
  font: inherit;
  font-size: 1.8rem;
  padding: .5em 1em;
  border-radius: .3em;
  cursor: pointer;
}

.modal {
  position: absolute;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  text-align: center;
  width: fit-content;
  height: fit-content;
  max-width: 22em;
  padding: 2rem;
  border-radius: 1rem;
  box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
  background: #FFF;
  z-index: 999;
  transform: none;
}
.modal h1 {
  margin: 0 0 1rem;
}

.modal-overlay {
  content: '';
  position: absolute;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 998;
  background: #2c3e50;
  opacity: 0.6;
  cursor: pointer;
}

/* ---------------------------------- */
.fade-enter-active,
.fade-leave-active {
  transition: opacity .4s linear;
}

.fade-enter,
.fade-leave-to {
  opacity: 0;
}

.pop-enter-active,
.pop-leave-active {
  transition: transform 0.4s cubic-bezier(0.5, 0, 0.5, 1), opacity 0.4s linear;
}

.pop-enter,
.pop-leave-to {
  opacity: 0;
  transform: scale(0.3) translateY(-50%);
}


</style>


