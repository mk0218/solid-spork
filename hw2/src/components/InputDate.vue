<template>
    <div class="container">
        <input
            class="year"
            type="number"
            min="1900"
            :max="year"
            v-model="year"
            @input="update">
        <input
            class="month"
            type="number"
            min="1"
            max="12"
            v-model="month"
            @input="update">
        <input class="date"
            type="number"
            min="1"
            max="31"
            v-model="date"
            @input="update">
    </div>
</template>

<script>

let today = new Date();

export default {
    name: 'SelectDate',
    data: function () {
        return {
            year: today.getFullYear(),
            month: today.getMonth() + 1,
            date: today.getDate(),
        }
    },
    methods: {
        update: function () {
            let dateStr = this.year.toString() + "/" +
                this.month.toString() + "/" + this.date.toString()
            this.$emit('input', dateStr);
        }
    }
}
</script>

<style scoped>
input {
    position: relative;
    display: inline;
    margin-left: 5px;
    height: 100%;
    padding: 4px;
    font-size: 1em;
}
.container {
    width: 100%;
}
.year {
    width: calc(40% - 5px);
}
.month {
    width: calc(20% - 5px);
}
.date {
    width: calc(40% - 35px);
}
</style>