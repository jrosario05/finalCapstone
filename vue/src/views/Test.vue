<template>
  <div class="display">
    <carousel class="imgCarousel" @next="next" @prev="prev">
      <carousel-slide
        v-for="(slide, index) in slides"
        :key="slide"
        :index="index"
        :visibleSlide="visibleSlide"
        :direction="direction"
      >
        <div id="textContainer">
          <p
            class="slideText"
            v-for="(msg, i) in messages"
            :key="msg"
            :index="i"
            :visibleSlide="visibleSlide"
            :direction="direction"
            v-show="visibleSlide === i"
          >
            {{ msg }}
          </p>
          <img :src="slide" />
        </div>
      </carousel-slide>
    </carousel>
  </div>
</template>

<script>
import Carousel from "../components/Carousel.vue";
import CarouselSlide from "../components/CarouselSlide.vue";

export default {
  components: { Carousel, CarouselSlide },

  data() {
    return {
      slides: [
        "https://media.istockphoto.com/id/532132774/photo/wooden-cask-and-bricks.jpg?s=612x612&w=0&k=20&c=-_Du5tUGq9_YeC4UqkNRiDoFTLjUZrqyiWsDsop1gio=",
        "https://cadomzalski.files.wordpress.com/2018/08/brewerypassport2-e1535425383945.jpeg",
        "https://images.unsplash.com/photo-1615332579037-3c44b3660b53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJlZXJ8ZW58MHx8MHx8&w=1000&q=80",
      ],
      messages: [
        "Discover All The Amazing Brewery That Columbus Has To Offer",
        "Come And Explore All The Beers and Get Your Stamp Here",
        "Helping Local Brewery Show Off All Their Craft Beers",
      ],

      visibleSlide: 0,
      direction: "left",
    };
  },
  computed: {
    slidesLen() {
      return this.slides.length;
    },
  },
  methods: {
    next() {
      if (this.visibleSlide >= this.slidesLen - 1) {
        this.visibleSlide = 0;
      } else {
        this.visibleSlide++;
      }
      this.direction = "left";
    },
    prev() {
      if (this.visibleSlide <= 0) {
        this.visibleSlide = this.slidesLen - 1;
      } else {
        this.visibleSlide--;
      }
      this.direction = "right";
    },
  },
};
</script>

<style scoped>
#app {
  display: none;
}
#textContainer {
  width: 100%;
  height: 100%;
  position: absolute;
  bottom: 100;
  color: white;
  height: 40px;
}

img {
  object-fit: cover;
  border-left: 100%;
  width: 100%;
  padding-right: 0px;
}
.imgCarousel {
  margin-top: 150px;
}

.slideText {
  top: 100%;
  left: 5%;
  font-size: 2em;
  text-shadow: 6px 6px 6px #272727;

  position: absolute;
  margin-bottom: none;
  padding-bottom: none;
  border-bottom: none;
}
body {
  background-color: white;
}
</style>
