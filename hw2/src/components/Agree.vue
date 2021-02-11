<template>
    <div class="agree">
        <span>모든 약관 내용에 동의합니다.</span>
        <label class="switch">
            <input type="checkbox" @input="$emit('toggle')">
            <span class="slider round"></span>
        </label>
    </div>
</template>

<script>
export default {
    name: 'Agree',
}
</script>

<style scoped>
.agree {
    width: 100%;
}
span {
    font-size: 1rem;
}
.switch-box {
    position: absolute;
}

/* The switch - the box around the slider */
.switch {
    position: absolute;
    top: 6px;
    right: 0;
    width: 40px;
    height: 20px;
}

/* Hide default HTML checkbox */
.switch input {
    opacity: 0;
    width: 0;
    height: 0;
}

/* The slider */
.slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    -webkit-transition: .4s;
    transition: .4s;
}
.slider:before {
    position: absolute;
    content: "";
    height: 14px;
    width: 14px;
    left: 3px;
    bottom: 3px;
    background-color: white;
    -webkit-transition: .4s;
    transition: .4s;
}
input:checked + .slider {
    background-color: #2196F3;
}
input:focus + .slider {
    box-shadow: 0 0 1px #2196F3;
}
input:checked + .slider:before {
    -webkit-transform: translateX(20px);
    -ms-transform: translateX(20px);
    transform: translateX(20px);
}

/* Rounded sliders */
.slider.round {
    border-radius: 10px;
}
.slider.round:before {
    border-radius: 50%;
}
</style>