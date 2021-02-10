<template>
    <div>
        <input
            class="plain"
            :type="type"
            :value="value"
            :placeholder="placeholder"
            @input="$emit('input', $event.target.value)">
    </div>
</template>

<script>
export default {
    name: 'InputPlain',
    props: ['value', 'placeholder', 'type'],
}
</script>

<style scoped>
input.plain {
    padding: 4px;
    width: calc(100% - 10px);
    height: 100%;
    font-size: 1em;
}
</style>