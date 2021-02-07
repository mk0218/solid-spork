<template>
    <div>
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
div {
    display: inline-block;
}
.label-area {
    width: 15%;
}
.items {
    width: 85%;
}
</style>