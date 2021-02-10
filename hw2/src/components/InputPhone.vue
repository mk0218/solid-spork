<template>
    <div class="container">
        <select class="phone phone-prefix" v-model="prefixValue">
            <option v-for="p in prefix" :key="p">{{ p }}</option>
        </select>
        <input
            class="phone phone-number"
            type="text"
            @input="$emit('input', prefixValue + $event.target.value)">
        <button
            class="phone phone-button"
            type="button"
            @click="certify">인증</button>
    </div>
</template>

<script>
export default {
    name: 'InputPhone',
    data: function () {
        return {
            prefix: ["010", "011", "019"],
            prefixValue: "010"
        };
    },
    methods: {
        certify: function () {
            alert('본인인증하는 창');
        }
    }
}
</script>

<style scoped>
.container {
    width: 100%;
}
.phone {
    position: relative;
    display: inline;
    margin-left: 5px;
    padding: 4px;
    font-size: 1em;
}
.phone-prefix {
    width: calc(25% - 5px);
}
.phone-number {
    width: calc(45% - 5px);
}
.phone-button {
    top: -4px;
    font-size: 0.7em;
    height: calc(100% + 10px);
    width: calc(30% - 15px);
}
</style>