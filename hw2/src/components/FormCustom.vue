<template>
    <form class="custom">
        <slot></slot>
        <button-submit class="submit-button" @click="submit" :disabled="!validated">가입하기</button-submit>
    </form>
</template>

<script>
import Submit from "./ButtonSubmit.vue";

export default {
    name: 'FormCustom',
    props: {
        values: Object,
    },
    components: {
        'button-submit': Submit,
    },
    computed: {
        validated: function () {
            if (this.values.length === 0) {
                return false;
            }
            let key = "";
            for (key in this.values) {
                if (!this.values[key]) {
                    return false;
                }
            }
            return true;
        }
    },
    methods: {
        submit: function () {
            let msg = ""
            let key = ""
            for (key in this.values) {
                msg += key + ": ";
                msg += this.values[key] + "\n"
            }
            alert(msg);
        }
    }
}
</script>

<style scoped>
form {
    font-size: 18px;
    width: 100%;
    height: 100%;
}
.submit-button {
    position: absolute;
    width: inherit;
    bottom: 0;
}
</style>