<template>
    <h1><slot></slot></h1>
</template>

<script>
export default {
    name: 'AppHeader',
}
</script>

<style scoped>
h1 {
    font-size: 2em;
    margin-top: 0;
}
</style>