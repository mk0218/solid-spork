<template>
    <div id="app">
        <header class="app-header">
            <app-header>회원가입</app-header>
        </header>
        <div class="app-contents">
            <form-custom class="form" :values="values">
                <input-plain class="row" v-model="id" placeholder="아이디" type="text"></input-plain>
                <input-plain class="row" v-model="passwd" placeholder="비밀번호" type="password"></input-plain>
                <button-xor class="row" value-left="남자" value-right="여자" @change="changeSex"></button-xor>
                <!-- Empty space -->
                <div style="height: 15px;"></div>

                <input-label class="row" label="생일">
                    <input-date v-model="birthday"></input-date>
                </input-label>
                <input-label class="row" label="전화">
                    <input-phone v-model="phone"></input-phone>
                </input-label>
                <agree class="agree" @toggle="toggleAgree"></agree>
            </form-custom>
        </div>
    </div>
</template>

<script>
import AppHeader from "./components/Header.vue"
import ButtonXor from "./components/ButtonXor.vue"
import Agree from "./components/Agree.vue"
import InputDate from "./components/InputDate.vue"
import InputLabeled from "./components/InputLabeled.vue"
import InputPhone from "./components/InputPhone.vue"
import InputPlain from "./components/InputPlain.vue"
import FormCustom from "./components/FormCustom.vue"

let today = new Date();
let todayStr = today.getFullYear().toString() + "/" +
               (today.getMonth() + 1).toString() + "/" + today.getDate().toString();

export default {
    name: 'App',
    components: {
        'agree': Agree,
        'app-header': AppHeader,
        'button-xor': ButtonXor,
        'form-custom': FormCustom,
        'input-date': InputDate,
        'input-label': InputLabeled,
        'input-phone': InputPhone,
        'input-plain': InputPlain,
    },
    data: function () {
        return {
            id: '',
            passwd: '',
            sex: '남자',
            birthday: todayStr,
            phone: '',
            agree: false,
        };
    },
    computed: {
        values: function () {
            return {
                id: this.id,
                password: this.passwd,
                sex: this.sex,
                birthday: this.birthday,
                phone: this.phone,
                agree: this.agree
            };
        }
    },
    methods: {
        changeSex: function (sex) {
            this.sex = sex;
        },
        toggleAgree: function () {
            this.agree = !this.agree;
        }
    }
}
</script>

<style>
#app {
    font-family: 'Noto Sans KR', sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #2c3e50;
    overflow: hidden;
    height: 90vh;
    padding: 8vw;
}
.app-header {
    position: relative;
    height: 13%;
}
.app-contents {
    position: relative;
    height: 87%;
}
.row {
    width: 100%;
    height: 40px;
    margin-bottom: 14px;
}
.agree {
    position: absolute;
    bottom: 80px;
}

</style>
