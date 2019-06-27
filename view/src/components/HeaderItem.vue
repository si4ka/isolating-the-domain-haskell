<template>
  <header id="header">
    <div class="ui top fixed inverted stackable teal menu">
      <router-link class="item" to="/" exact>
        ダッシュボード
      </router-link>
      <router-link class="item" to="/timerecord">
        勤務時間の入力
      </router-link>
      <router-link class="item" to="/payroll">
        給与の一覧
      </router-link>
      <router-link class="item" to="/employees">
        従業員の一覧
      </router-link>
    </div>
  </header>
</template>

<script>
export default {
  name: "HeaderItem"
}
</script>

<style scoped>
</style>
