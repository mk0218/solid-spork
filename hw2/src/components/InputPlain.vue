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
    outline: none;
    position: relative;
    padding: 0 8px;
    width: calc(100% - 18px);
    height: 40px;
    border: 1px solid rgb(120, 120, 120);
    border-radius: 4px;
    font-size: 1rem;
}
input.plain:focus {
    border: 1px solid #2196F3;
}
</style>
