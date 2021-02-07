<template>
    <button
        type="submit"
        @click="$emit('click')">
        <slot></slot>
    </button>
</template>

<script>
export default {
    
}
</script>

<style scoped>

</style>