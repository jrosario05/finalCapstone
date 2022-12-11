<template>
  <div class="bigDiv"  @mouseenter="hover=true"
       @mouseleave="hover = false">
      <div
      v-for="rate in ratings"
      v-bind:key="rate.id"
      class="stars-div"
      @mouseenter="hover=true"
       @mouseleave="hover = false"
      >
      
    <i  v-if="checkHover==false && checkRating(beer)>=rate" id=inRating class="bi bi-star-fill"></i>
    <i v-if="checkHover==false && checkRating(beer)<rate" id=NotInRating class="bi bi-star-fill"></i>
 </div>

        <div class=random v-if="checkHover==true">
         <div @mouseenter="one=true" @mouseleave="one=false">
        <i v-show="!one" class="bi bi-star-fill"></i>
        <i v-on:click="changeRating(1)" v-show="one" id=inRating class="bi bi-star-fill"></i>
            </div>
         <div @mouseenter="two=true, one=true"  @mouseleave="two=false, one=false"> 
        <i v-show="!two" class="bi bi-star-fill"></i>
        <i v-on:click="changeRating(2)" v-show="two" id=inRating class="bi bi-star-fill"></i>
            </div>
         <div @mouseenter="three=true, one=true, two=true" @mouseleave="one=false, two=false, three=false">
        <i v-show="!three" class="bi bi-star-fill"></i>
        <i v-on:click="changeRating(3)" v-show="three" id=inRating class="bi bi-star-fill"></i>
            </div>
         <div @mouseenter="three=true, one=true, two=true, four=true" @mouseleave="one=false, two=false, three=false, four=false">
        <i v-show="!four" class="bi bi-star-fill"></i>
        <i v-on:click="changeRating(4)" v-show="four" id=inRating class="bi bi-star-fill"></i>
            </div>
         <div @mouseenter="three=true, one=true, two=true, four=true, five=true" @mouseleave="one=false, two=false, three=false, four=false, five=false">
        <i v-show="!five" class="bi bi-star-fill"></i>
        <i v-on:click="changeRating(5)" v-show="five" id=inRating class="bi bi-star-fill"></i>
            </div>
    
      </div>


  </div>
</template>

<script>
import PassportService from '../services/PassportService';
export default {
    name: 'review',
    props: ['beer'],
    data(){
        return{
            ratings:[1,2,3,4,5],
            hover:false,
            theBeer:{},
            one: false,
            two: false,
            three: false,
            four: false,
            five: false,
            
        }
    },
    computed:{
        checkHover(){
        let isHover=this.hover;
        return isHover;
        },


    },
    methods:{
        checkRating(beer){
            this.theBeer=beer
            return this.theBeer.beerRating
        },
        changeRating(value){
            this.theBeer.beerRating=value;
            console.log(value)
            PassportService.updateRating(this.$store.state.user.id, this.theBeer.beerId, value)
        }
    }

}
</script>

<style scoped>
.random{
    display: flex;
    flex-direction: row;
}
.bigDiv{
    display: flex;
    flex-direction: row;
}
#empty{
    color:white;
}
#inRating{
    color: yellow;
}
#unchecked{
    color: white;
    opacity: 50%;
}
</style>>

