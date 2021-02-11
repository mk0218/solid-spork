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
    height: 60px;
    font-size: 1em;
    padding: 0;
    background-color: #2196F3;
    color: white;
    font-weight: bold;
    font-size: 1.2em;
    border: none;
    border-radius: 4px;
}
button:disabled {
    background-color: rgb(200,200,200);
}
</style>