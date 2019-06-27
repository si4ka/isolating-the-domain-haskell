import Vue from "vue"
import Router from "vue-router"
import TopMenu from "../components/TopMenu"
import "semantic-ui-css/semantic.min.css"

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: "/",
      name: "TopMenu",
      component: TopMenu
    }
  ]
})
