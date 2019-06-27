import Vue from "vue"
import Router from "vue-router"
import TopMenu from "../components/TopMenu"
import "semantic-ui-css/semantic.min.css"
import TimeRecord from "../components/TimeRecord"

Vue.use(Router)

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      name: "TopMenu",
      component: TopMenu
    },
    {
      path: "/timerecord",
      name: "TimeRecord",
      component: TimeRecord
    }
  ]
})
