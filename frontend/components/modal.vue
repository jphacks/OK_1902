<template>
  <transition name="modal">
    <div class="modal-mask" @click="$emit('close')">
      <div class="modal-wrapper">
        <div class="modal-container text-center">
          <img class="maru-image" v-if="val" src="~/assets/mark_maru.png">
          <img class="batsu-image" v-else src="~/assets/mark_batsu.png">
          <h4 class="maru-text" style="color:#5D99FF;" v-if="val"><b>正解！😊</b></h4>
          <h4 class="batsu-text" style="color:red;" v-else><b>残念...😭別の順位で試してみよう</b></h4>
          <p v-if="description">{{ description }}</p>
          <a v-if="productUrl" :href="productUrl" target="_blank">商品はこちらから</a>
        </div>
      </div>
    </div>
  </transition>
</template>

<script>
  export default {
    name: 'modal',
    props: {
      val: Boolean,
      description: String,
      productUrl: String
    }
  }
</script>

<style scoped>
  .modal-mask {
    position: fixed;
    z-index: 9998;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, .5);
    display: table;
    transition: opacity .3s ease;
  }
  .modal-wrapper {
    display: table-cell;
    vertical-align: middle;
  }
  .modal-container {
    width: 70%;
    margin: 0px auto;
    padding: 20px 30px;
    background-color: #fff;
    border-radius: 2px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, .33);
    transition: all .3s ease;
    font-family: Helvetica, Arial, sans-serif;
  }

  .maru-image {
    width: 40%;
  }

  .batsu-image {
    width: 40%;
  }

  .maru-text {
    /* font-size: 120%; */
  }
</style>
