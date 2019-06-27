<template>
  <div class="field">
    <label>勤務日</label>
    <div class="eight wide field">
      <input class="short-input"
             :type="type"
             :name="name"
             :value="value"
             :placeholder="placeholder"
             @input="updateValue"
      >
    </div>
  </div>
</template>

<script>
export default {
  name: "WorkDateInput",
  props: {
    value: { type: String, require: true },
    type: { type: String, require: true },
    name: { type: String, require: true },
    placeholder: { type: String, require: false }
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
