<template>
  <div class="margin-top3 container">
    <form>
      <div class="form-group">
        <h2 class="text-center quiz-create">クイズを作成しよう！</h2>
          <div class="input-group margin-top3">
            <input type="text" v-model="inputCategory" class="form-control quiz-input" aria-describedby="emailHelp" placeholder="カテゴリーを選択しよう！">
            <button type="button" @click="chooseRandom" class="btn btn-outline-info">ランダムで選ぶ</button>
          </div>
      </div>
      <div class="text-center margin-top2">
        <button type="submit" class="btn btn-primary">作成する！</button>
      </div>

      <div class="choice-group text-center">
        <button type="button" @click="chooseCategory(choice.name)" class="btn btn-warning choice-button" v-for="choice in choices" :key="choice.id">{{ choice.name }}</button>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      inputCategory: '',
      choices: [
        { id: 1, name: 'hoge1'},
        { id: 2, name: 'hoge2'},
        { id: 3, name: 'hoge3'},
        { id: 4, name: 'hoge4'},
        { id: 5, name: 'hoge5'},
        { id: 6, name: 'hoge6'},
        { id: 7, name: 'hoge7'},
        { id: 8, name: 'hoge8'},
        { id: 9, name: 'hoge9'},
        { id: 10, name: 'hoge10'},
        { id: 11, name: 'hoge11'},
        { id: 12, name: 'hoge12'},
        { id: 13, name: 'hoge13'},
        { id: 14, name: 'hoge14'},
        { id: 15, name: 'hoge15'}
      ]
    }
  },
  methods: {
    chooseCategory(choiceName) {
      this.inputCategory = choiceName
    },
    chooseRandom() {
      this.inputCategory = this.choices[Math.floor(Math.random() * this.choices.length)].name
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
