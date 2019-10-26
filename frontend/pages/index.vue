<template>
  <div class="container">
    <div>
      <img src="/main_logo.png" class="main-logo"/>
      <p>商品のリアルタイムの人気が分かるより楽しいクイズアプリです。</p>
      <p>アイスブレイクなどで使えば一緒にクイズを考えることで自然と仲が深まるきっかけになるかもしれません。</p>
      <div class="links">
        <a
          href="https://pannel-break.herokuapp.com/quiz/new"
          target="_blank"
          class="button--green"
        >
          Start Quiz
        </a>
        <a
          href="https://github.com/jphacks/ON_1902"
          target="_blank"
          class="button--grey"
        >
          GitHub
        </a>
      </div>
    </div>
  </div>
</template>


<style>
.main-logo {
  width: 80%;
}
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.links {
  padding-top: 15px;
}
</style>
