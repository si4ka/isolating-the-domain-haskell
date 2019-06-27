<template>
  <div id="time-record" class="ui container">
    <form id="form" class="ui large form" v-on:submit="submitRecord">
      <EmployeesCombobox
        v-model="record.employeeNumber"
      >
      </EmployeesCombobox>
      <WorkDateInput
        v-model="record.workDate"
        placeholder="勤務日"
        name="WorkDateInput"
        type="date"
      ></WorkDateInput>
      <input type="submit" value="Submit record">
      <router-view></router-view>
    </form>
  </div>
</template>

<script>
import EmployeesCombobox from "./EmployeesCombobox"
import WorkDateInput from "./WorkDateInput"

export default {
  name: "TimeRecord",
  components: {WorkDateInput, EmployeesCombobox},
  data () {
    return {
      record: {
        employeeNumber: "",
        workDate: "",
        startHour: "",
        startMinute: "",
        endHour: "",
        endMinute: "",
        daytimeBreakTime: "",
        midnightBreakTime: ""
      }
    }
  },
  methods: {
    submitRecord: function (e) {
      e.preventDefault()
      console.log(this)
    }
  }
}
</script>

<style scoped>
  .form {
    max-width: 400px;
    margin: 0 auto;
  }
</style>
