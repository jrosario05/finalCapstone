<template>
  <div class="pop-up">
    <div class="image">
      <img
        src="https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png"
      />
    </div>

    <div class="beer-name"><h1>Nikola</h1></div>
    <div class="beer-abv">
      <h3>5.3</h3>
    </div>
    <div class="beer-style">
      <h3>Lager</h3>
    </div>
    <div class="description">
      <p>
        Nikola is a celebration of balance. Pronounced malt flavors and aromas
        reminiscent of European bread compliment subtle hop aromas and the
        remarkably clean finish. Enjoy this testament of practical perfection.
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "beer-detail",
  props: ["beer"],
};
</script>

<style>

.pop-up {
  width: 500px;
  height: 500px;
  position: absolute;
  background-color: white;
}

.image {
  width: 50%;
  height: auto;
  display: flex;
  flex-direction: column;
  align-content: center;
  justify-content: center;

}



</style>