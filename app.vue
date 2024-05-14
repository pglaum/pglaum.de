<template>
    <div>
        <NuxtLayout>
            <NuxtPage />
        </NuxtLayout>
    </div>
</template>

<script setup lang="ts">
useSeoMeta({
    title: 'Philipp Glaum',
    ogTitle: 'Philipp Glaum',
    description: 'Hi, I am Philipp',
    ogDescription: 'Hi, I am Philipp',
})
</script>

<style>
.page-enter-active,
.page-leave-active {
    transition: all 0.2s;
}

.page-enter-from,
.page-leave-to {
    opacity: 0;
    filter: blur(.1rem);
}
</style>
