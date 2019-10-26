<template>
  <div class="margin-top3 container">
    <form>
      <div class="form-group">
        <h2 class="text-center quiz-create">クイズを作成しよう！</h2>
          <div class="input-group margin-top3">
            <input type="text" v-model="inputCategory" class="form-control quiz-input" aria-describedby="emailHelp" placeholder="カテゴリーを選択しよう！">
            <button type="button" @click="chooseRandom(response.keywords)" class="btn btn-outline-info">ランダムで選ぶ</button>
          </div>
      </div>
      <div class="text-center margin-top2">
        <button type="submit" class="btn btn-primary">作成する！</button>
      </div>

      <div class="choice-group text-center">
        <button type="button" @click="chooseCategory(keyword.keyword)" class="btn btn-warning choice-button" v-for="keyword in response.keywords" :key="keyword.id">{{ keyword.keyword }}</button>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  async asyncData({ app }) {
    const response = await app.$axios.$get('https://pannel-break-backend.herokuapp.com/api/v1/quizes/new');
    // const keywords = await app.$axios.$get(`${process.env.apiBaseUrl}/api/v1/quizes/new`);
    return {
      response
    }
  },
  data() {
    return {
      inputCategory: ''
    }
  },
  methods: {
    chooseCategory(choiceName) {
      this.inputCategory = choiceName
    },
    chooseRandom(keywords) {
      this.inputCategory = keywords[Math.floor(Math.random() * keywords.length)].keyword
    }
  }
}
</script>

<style>
.margin-top2 {
  margin-top: 2em;
}
.margin-top3 {
  margin-top: 3em;
}
.choice-group {
  margin-top: 3em;
}

.choice-button {
  margin-right: 1em;
  margin-top: 1em;
}

.input-area li{
  float: left;
  list-style: none;
  margin: 1em;
}
</style>
