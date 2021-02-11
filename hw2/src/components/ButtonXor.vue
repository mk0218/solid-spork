<template>
    <div class="xor-button">
        <button
            type="button"
            :class="class_left"
            @click="selectLeft">
        {{ valueLeft }}
        </button><button
            type="button"
            :class="class_right"
            @click="selectRight">
        {{ valueRight }}
        </button>
    </div>
</template>

<script>

const choices = { 'LEFT': 0, 'RIGHT': 1 }

export default {
    name: 'ButtonXor',
    props: {
        valueLeft: String,
        valueRight: String,
    },
    data: function () {
        return {
            class_left: ['xor', 'left', 'selected'],
            class_right: ['xor', 'right'],
            value: this.valueLeft,
            selected: choices.LEFT
        }
    },
    watch: {
        selected: function () {
            if (this.selected === choices.LEFT) {
                this.class_left.push('selected');
                this.class_right.pop();
                this.value = this.valueLeft;
            } else {
                this.class_left.pop();
                this.class_right.push('selected');
                this.val = this.valueRight;
            }
        }
    },
    methods: {
        selectLeft: function () {
            this.selected = choices.LEFT;
            this.$emit('change', this.valueLeft);
        },
        selectRight: function () {
            this.selected = choices.RIGHT;
            this.$emit('change', this.valueRight);
        }
    }
}
</script>

<style scoped>
div.xor-button {
    position: relative;
    width: 100%;
    margin: 20px 0 20px 0;
    border-radius: 6px;
}
.xor {
    width: 50%;
    height: 40px;
    float: left;
    padding: 0;
    font-size: 1.1rem;
    font-weight: bold;
    border: 1px solid rgb(180, 180, 180);
}
.xor.selected {
    background-color: #2196F3;
    border: 1px solid #0b7ad1;
    color: white;
}
.left {
    border-right: 0;
    border-radius: 6px 0 0 6px;
}
.right {
    border-left: 0;
    border-radius: 0 6px 6px 0;
}
</style>