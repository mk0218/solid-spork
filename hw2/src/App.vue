<template>
  <div id="app">
    <header>
      <app-header>회원가입</app-header>
    </header>
  </div>
</template>

<script>
import AppHeader from "./components/Header.vue"

export default {
  name: 'App',
  components: {
    'app-header': AppHeader
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
  /* margin-top: 60px; */
  padding: 30px;
}
</style>
