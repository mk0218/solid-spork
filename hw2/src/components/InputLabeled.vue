<template>
    <div class="input-labeled">
        <div class="label-area">
            {{ label }}
        </div>
        <div class="items">
            <slot></slot>
        </div>
    </div>
</template>

<script>
export default {
    name: 'InputLabeled',
    props: { label: String },
}
</script>

<style scoped>
.input-labeled {
    font-size: 18px;
    position: relative;
    display: flex;
    height: 40px;
    width: 100%;
}
.label-area {
    padding-top: 7px;
    width: 15%;
}
.items {
    width: 85%;
}
</style>