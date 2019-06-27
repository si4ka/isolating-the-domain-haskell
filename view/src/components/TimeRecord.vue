<template>
  <div id="time-record" class="ui container">
    <form id="form" class="ui large form" method="post">
      <EmployeesCombobox></EmployeesCombobox>
      <WorkDateInput
        v-model="record.workDate"
        placeholder="勤務日"
        name="WorkDateInput"
        type="date"
      ></WorkDateInput>
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
  }
}
</script>

<style scoped>
  .form {
    max-width: 400px;
    margin: 0 auto;
  }
</style>
