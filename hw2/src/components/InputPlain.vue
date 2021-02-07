<template>
    <input
        :type="type"
        :value="value"
        :placeholder="placeholder"
        @input="$emit('input', $event.target.value)">
</template>

<script>
export default {
    name: 'InputPlain',
    props: ['value', 'placeholder', 'type'],
}
</script>

<style scoped>

</style>