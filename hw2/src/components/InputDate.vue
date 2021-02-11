<template>
    <div class="container">
        <input
            class="year"
            type="number"
            :min="minYear"
            :max="year"
            v-model="year"
            @input="update">
        <div class="text">년</div>
        <input
            class="month"
            type="number"
            min="1"
            max="12"
            v-model="month"
            @input="update">
        <div class="text">월</div>
        <input class="date"
            type="number"
            min="1"
            max="31"
            v-model="date"
            @input="update">
        <div class="text">일</div>
    </div>
</template>

<script>

let today = new Date();
let maxYear = today.getFullYear();

export default {
    name: 'SelectDate',
    data: function () {
        return {
            minYear: 1900,
            year: maxYear,
            month: today.getMonth() + 1,
            date: today.getDate(),
        }
    },
    computed: {
        valid: function () {
            if (!this.year || !this.month || !this.date) {
                return false;
            }
            if (this.year > maxYear || this.year < this.minYear) {
                return false;
            }
            if (this.month < 1 || this.month > 12) {
                return false;
            }
            if (this.date < 1 || this.date > 31) {
                return false;
            }
            return true;
        }
    },
    methods: {
        update: function () {
            let dateStr = "";
            if (this.valid) {
                dateStr = this.year.toString() + "/" +
                    this.month.toString() + "/" + this.date.toString()
            }
            this.$emit('input', dateStr);
        }
    }
}
</script>

<style scoped>
input {
    outline: none;
    min-width: 1px;
    position: relative;
    margin-left: 5px;
    padding: 0 8px;
    border: 1px solid rgb(120, 120, 120);
    border-radius: 4px;
    height: 40px;
    font-size: 1rem;
}
input:focus {
    border: 1px solid #2196F3;
}
.container {
    width: 100%;
    display: flex;
    flex-shrink: 1;
    width: 100%;
}
.year {
    width: calc(30% - 5px);
}
.month {
    width: calc(20% - 5px);
}
.date {
    width: calc(50% - 59px);
}
.text {
    font-size: 18px;
    margin-left: 3px;
    padding-top: 7px;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
input[type=number] { -moz-appearance: textfield; }
</style>