<template>
    <div class="min-h-screen">
        <div class="container sticky top-0 z-10 flex items-center justify-between py-4 backdrop-blur-md">
            <NuxtLink
                to="/"
                class="inline-flex
                    items-center
                    gap-2
                    font-mono
                    font-medium
                    uppercase
                    text-muted-foreground"
            >
                Philipp Glaum
            </NuxtLink>
        </div>
        <slot />
        <Toaster />
    </div>
</template>

<script setup lang="ts">
</script>
