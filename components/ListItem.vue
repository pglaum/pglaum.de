<template>
    <NuxtLink
        class="flex items-center gap-4 rounded-lg px-4 py-2 hover:bg-muted/50"
        :to="href"
        :target="external ? '_blank' : undefined"
    >
        <img
            v-if="image"
            :src="image"
            class="size-12 object-fill"
        >
        <div class="flex flex-col">
            <div class="inline-flex items-center gap-2 font-medium">
                {{ title }}
                <ExternalLink class="size-4" />
            </div>
            <div class="text-sm text-muted-foreground">
                <slot />
            </div>
        </div>
    </NuxtLink>
</template>

<script setup lang="ts">
import { ExternalLink, } from 'lucide-vue-next'

defineProps<{
    title: string
    href: string
    image?: string
    external?: boolean
}>()
</script>
