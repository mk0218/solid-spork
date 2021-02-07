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
div.xor_button {
    width: 100%;
}
.xor {
    width: 50%;
    float: left;
    padding: 0;
}
.xor.selected {
    background-color: darkgrey;
}
.left {
    border-right: 0;
}
.right {
    border-left: 0;
}
</style>