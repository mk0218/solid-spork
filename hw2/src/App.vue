<template>
  <div id="app">
    <header>
      <app-header>회원가입</app-header>
    </header>
        <form-custom :values="values">
        <input-plain class="row" v-model="id" placeholder="아이디" type="text"></input-plain>
        <input-plain class="row" v-model="passwd" placeholder="비밀번호" type="password"></input-plain>
<!--        <div class="test">테스트용아이디확인: {{ id }} </div>
        <div class="test">테스트용비밀번호확인: {{ passwd }}</div> -->
        <button-xor class="row" value-left="남자" value-right="여자" @change="changeSex"></button-xor>
        <div class="row space"></div>
        <input-label class="row" label="생일">
          <input-date v-model="birthday"></input-date>
        </input-label>
        <input-label class="row" label="전화">
          <input-phone v-model="phone"></input-phone>
        </input-label>
        <agree @toggle="toggleAgree"></agree>
      </form-custom>
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
    'app-header': AppHeader,
    'button-xor': ButtonXor,
    'agree': Agree,
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
      return [
        this.id,
        this.passwd,
        this.sex,
        this.birthday,
        this.phone,
        this.agree
      ];
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
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
  /* margin-top: 60px; */
  padding: 30px;
}
#yr
input {
  height: 100%;
  font-size: 1.2em;
}
button {
  font-size: 1em;
}
.row {
  width: 100%;
  margin-bottom: 12px;
}
.container {
  position: relative;
  height: 25px;
  margin-bottom: 12px;
  padding: 0;
}
.space {
  height: 50px;
}
.test {
  font-size: 0.8em;
}

</style>
