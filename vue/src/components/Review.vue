<template>
  <div class="bigDiv" @mouseenter="hover = true" @mouseleave="hover = false">
    <div
      v-for="rate in ratings"
      v-bind:key="rate.id"
      class="stars-div"
      @mouseenter="hover = true"
      @mouseleave="hover = false"
    >
      <img
        v-if="checkHover == false && checkRating(beer) >= rate"
        src="../resources/ColorHop.png"
        alt=""
      />
      <img
        v-if="checkHover == false && checkRating(beer) < rate"
        src="../resources/noColorHop.png"
        alt=""
      />
    </div>

    <div class="random" v-if="checkHover == true">
      <div @mouseenter="one = true" @mouseleave="one = false">
        <img v-show="!one" src="../resources/noColorHop.png" alt="" />
        <img
          v-on:click="changeRating(1)"
          v-show="one"
          src="../resources/ColorHop.png"
          alt=""
        />
      </div>
      <div
        @mouseenter="(two = true), (one = true)"
        @mouseleave="(two = false), (one = false)"
      >
        <img v-show="!two" src="../resources/noColorHop.png" alt="" />
        <img
          v-on:click="changeRating(2)"
          v-show="two"
          src="../resources/ColorHop.png"
          alt=""
        />
      </div>
      <div
        @mouseenter="(three = true), (one = true), (two = true)"
        @mouseleave="(one = false), (two = false), (three = false)"
      >
        <img v-show="!three" src="../resources/noColorHop.png" alt="" />
        <img
          v-on:click="changeRating(3)"
          v-show="three"
          src="../resources/ColorHop.png"
          alt=""
        />
      </div>
      <div
        @mouseenter="(three = true), (one = true), (two = true), (four = true)"
        @mouseleave="
          (one = false), (two = false), (three = false), (four = false)
        "
      >
        <img v-show="!four" src="../resources/noColorHop.png" alt="" />
        <img
          v-on:click="changeRating(4)"
          v-show="four"
          src="../resources/ColorHop.png"
          alt=""
        />
      </div>
      <div
        @mouseenter="
          (three = true),
            (one = true),
            (two = true),
            (four = true),
            (five = true)
        "
        @mouseleave="
          (one = false),
            (two = false),
            (three = false),
            (four = false),
            (five = false)
        "
      >
        <img v-show="!five" src="../resources/noColorHop.png" alt="" />
        <img
          v-on:click="changeRating(5)"
          v-show="five"
          src="../resources/ColorHop.png"
          alt=""
        />
      </div>
    </div>
  </div>
</template>

<script>
import PassportService from "../services/PassportService";
export default {
  name: "review",
  props: ["beer"],
  data() {
    return {
      ratings: [1, 2, 3, 4, 5],
      hover: false,
      theBeer: {},
      one: false,
      two: false,
      three: false,
      four: false,
      five: false,
    };
  },
  computed: {
    checkHover() {
      let isHover = this.hover;
      return isHover;
    },
  },
  methods: {
    checkRating(beer) {
      this.theBeer = beer;
      return this.theBeer.beerRating;
    },
    changeRating(value) {
      this.theBeer.beerRating = value;
      console.log(value);
      PassportService.updateRating(
        this.$store.state.user.id,
        this.theBeer.beerId,
        value
      );
    },
  },
};
</script>

<style scoped>
img {
  width: 25px;
}
.random {
  display: flex;
  flex-direction: row;
}
.bigDiv {
  display: flex;
  flex-direction: row;
}
#empty {
  color: white;
}
#inRating {
  color: yellow;
}
#unchecked {
  color: white;
  opacity: 50%;
}
</style>>

