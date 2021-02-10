<template>
    <div>
        <button
            type="submit"
            :disabled="disabled"
            @click="$emit('click')">
            <slot></slot>
        </button>
    </div>
</template>

<script>
export default {
    name: 'Submit',
    props: ['disabled']
}
</script>

<style scoped>
button {
    width: 100%;
    font-size: 1em;
}
</style>