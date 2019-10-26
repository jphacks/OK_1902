<template>
  <div class="conatainer">
    <h3 class="text-center margin-top1">協力して全問正解を目指そう🤔</h3>
    <div class="row margin-top2">
      <div class="col-4 text-center pannel"><b>1</b></div>
      <div class="col-4 text-center pannel"><b>2</b></div>
      <div class="col-4 text-center pannel"><b>3</b></div>
    </div>
    <div class="row">
      <div class="col-4 text-center pannel"><b>4</b></div>
      <div class="col-4 text-center pannel"><b>5</b></div>
      <div class="col-4 text-center pannel"><b>6</b></div>
    </div>
    <div class="row">
      <div class="col-4 text-center pannel"><b>7</b></div>
      <div class="col-4 text-center pannel"><b>8</b></div>
      <div class="col-4 text-center pannel"><b>9</b></div>
    </div>
    <div class="choice-group text-center">
      <button type="button" class="btn btn-warning choice-button" v-for="r in response.ranking" :key="r.rank">{{ r.name }}</button>
    </div>
  </div>
</template>

<script>
export default {
  async asyncData({ route, app }) {
    const response = await app.$axios.$get(`https://pannel-break-backend.herokuapp.com/api/v1/quizes/${route.params.id}`);
    // const keywords = await app.$axios.$get(`${process.env.apiBaseUrl}/api/v1/quizes/new`);
    return {
      response
    }
  }
}
</script>

<style>
.margin-top1 {
  margin-top: 1em;
}
.margin-top2 {
  margin-top: 2em;
}
.margin-top3 {
  margin-top: 3em;
}

.pannel {
  height: 6em;
  line-height:125px;
  border-style: solid;
  font-size: 1.5rem;
  background-color: aquamarine;
}

.pannel-button {
  width: 100%;
  height: 100%;
}

.choice-button {
  margin-left: 1em;
  margin-top: 2em;
}

.choice-group {
}
</style>

