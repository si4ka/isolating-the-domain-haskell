<template>
  <div class="field">
    <label>氏名</label>
    <div class="eight wide field">
      <select class="ui search dropdown" @change="updateValue">
        <option selected></option>
        <option v-for="(employee, index) in employees"
                :key="index"
                :value="employee.number">
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
  props: {
    value: { type: String, require: true }
  },
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
  },
  methods: {
    updateValue: function (e) {
      this.$emit("input", e.target.value)
    }
  }
}
</script>

<style scoped>

</style>
