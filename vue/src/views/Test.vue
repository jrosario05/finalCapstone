<template>
  <test/>
</template>

<script>
import Test from "../components/Test.vue";

export default {
  components: { Test },

  data() {
    return {

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
