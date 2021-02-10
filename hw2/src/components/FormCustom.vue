<template>
    <form class="custom">
        <slot></slot>
        <button-submit @click="submit" :disabled="!validated">가입하기</button-submit>
    </form>
</template>

<script>
import Submit from "./ButtonSubmit.vue";

export default {
    name: 'FormCustom',
    props: {
        values: Array,
    },
    components: {
        'button-submit': Submit,
    },
    computed: {
        validated: function () {
            if (this.values.length === 0) {
                return false;
            }
            for (let i = 0; i < this.values.length; i++) {
                if (!this.values[i]) {
                    return false;
                }
            }
            return true;
        }
    },
    methods: {
        submit: function () {
            alert(this.values);
        }
    }
}
</script>

<style scoped>
form {
    font-size: 1.2em;
}
</style>