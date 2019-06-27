<template>
  <div class="field">
    <label>氏名</label>
    <div class="eight wide field">
      <select class="ui search dropdown">
        <option v-for="(employee, index) in employees" :key=index>
          {{ employee.name }}
        </option>
      </select>
    </div>
  </div>
</template>

<script>
import axios from "axios"
export default {
  name: "EmployeesCombobox",
  data () {
    return {
      employees: [],
      errorMessage: []
    }
  },
  created: function () {
    axios.get("http://localhost:8090/employees")
      .then(response => {
        this.employees = response.data
      })
      .catch(err => {
        this.errorMessage = err
      })
  }
}
</script>

<style scoped>

</style>
