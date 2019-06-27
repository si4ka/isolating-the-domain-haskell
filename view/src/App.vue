<template>
  <div id="app">
    <HeaderItem></HeaderItem>
    <router-view/>
  </div>
</template>

<script>
import TopMenu from "./components/TopMenu"
import HeaderItem from "./components/HeaderItem"
export default {
  name: "App",
  components: {HeaderItem, TopMenu}
}
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
