<template>
    <div class="container">
        <select class="phone phone-prefix" v-model="prefixValue">
            <option v-for="p in prefix" :key="p">{{ p }}</option>
        </select>
        <input
            class="phone phone-number"
            type="number"
            v-model="inputDigits"
            @input="update">
        <button
            class="phone phone-button"
            type="button"
            :disabled="!validInput"
            @click="certify">인증</button>
    </div>
</template>

<script>
export default {
    name: 'InputPhone',
    data: function () {
        return {
            inputDigits: "",
            prefix: ["010", "011", "019"],
            prefixValue: "010",
        };
    },
    computed: {
        validInput: function () {
            if (!this.inputDigits ||
                typeof Number(this.inputDigits) !== "number"
                ) {
                return false;
            } else {
                return true;
            }
        }
    },
    methods: {
        certify: function () {
            const msg =
                "본인인증하는 창\n" + "전화번호: " +
                this.prefixValue + this.inputDigits;
            alert(msg);
        },
        update: function () {
            let phone = "";
            if (this.validInput) {
                phone = this.prefixValue + this.inputDigits;
            }
            console.log(phone);
            this.$emit('input', phone);
        }
    }
}
</script>

<style scoped>
.phone {
    outline: none;
    width: calc(100% - 10px);
    border-radius: 4px;
    border: 1px solid rgb(120, 120, 120);
    padding: 0 8px;
    font-size: 1rem;
    display: inline;
    margin-left: 5px;
    height: 40px;
}
.phone:focus {
    border: 1px solid #2196F3;
}
.container {
    display: flex;
    width: 100%;
    height: 100%;
}
.phone-prefix {
    width: calc(25% - 5px);
    height: 42px;
    padding: 0 4px;
}
.phone-number {
    padding: 0 8px;
    width: calc(50% - 5px);
}
.phone-button {
    padding: 0;
    margin-top: auto;
    margin-bottom: auto;
    font-size: 0.9rem;
    width: calc(25% - 10px);
    height: 42px;
}
button.phone {
    background-color: #2196f3;
    border: none;
    color: white;
    font-weight: bold;
}
button:disabled {
    background-color: rgb(200,200,200);
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
input[type=number] { -moz-appearance: textfield; }
</style>