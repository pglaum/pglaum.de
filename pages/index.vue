<template>
    <div class="container my-24 grid gap-8 md:max-w-3xl">
        <H2>Hello & welcome to my site!</H2>

        <div>
            <NuxtLink to="/about-me">
                <Button
                    size="lg"
                    variant="primary-outline"
                    class="group"
                >
                    About me
                    <ArrowRight
                        class="
                            size-4
                            transition-transform
                            duration-300
                            group-hover:translate-x-2
                            "
                    />
                </Button>
            </NuxtLink>
        </div>
    </div>
</template>

<script setup lang="ts">
import { ArrowRight, } from 'lucide-vue-next'

import { Button, } from '~/components/ui/button'

useHead({
    title: 'Philipp Glaum',
})
</script>
