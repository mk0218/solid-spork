<template>
    <div>
        <h1><slot></slot></h1>
    </div>
</template>

<script>
export default {
    name: 'AppHeader',
}
</script>

<style scoped>
h1 {
    position: absolute;
    font-size: 1.7rem;
    margin: 0;
    bottom: 25px;
}
</style>