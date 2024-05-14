<template>
    <div class="container my-24 grid gap-24 lg:gap-36 xl:max-w-7xl">
        <div class="grid gap-6 lg:grid-cols-2 lg:items-center">
            <div class="flex flex-col gap-6">
                <div>
                    <H3>Immanuel Wetzlar</H3>
                    <P>
                        This church website has a very clear sermon archive with good
                        discoverability and it automatically updates content via the
                        ChurchTools API (for calendar & groups).<br>
                        All changes can be made on the admin dashboard. The site content
                        is rendered with Markdown Components for additional flexibility.
                    </P>
                </div>
                <div>
                    <NuxtLink
                        href="https://immanuel-wetzlar.de"
                        class="
                            inline-flex
                            items-center
                            gap-2
                            text-primary
                            underline-offset-4
                            hover:underline
                            "
                        target="_blank"
                    >
                        immanuel-wetzlar.de
                        <ExternalLink class="size-4" />
                    </NuxtLink>
                </div>
                <div class="flex flex-wrap items-center gap-2">
                    <div class="font-semibold">
                        Technologies:
                    </div>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:language-python"
                            size="16"
                        />
                        Flask
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:vuejs"
                            size="16"
                        />
                        Vue.js
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:tailwind"
                            size="16"
                        />
                        Tailwind
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:language-typescript"
                            size="16"
                        />
                        Typescript
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="devicon-plain:postgresql"
                            size="16"
                        />
                        PostgreSQL
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="logos:typesense-icon"
                            size="16"
                        />
                        Typesense
                    </Badge>
                </div>
            </div>
            <NuxtLink
                class="aspect-square w-full rounded-lg border"
                href="https://immanuel-wetzlar.de"
                target="_blank"
            >
                <img
                    class="size-full rounded-lg object-cover object-top"
                    src="/images/immanuel_wetzlar.png"
                >
            </NuxtLink>
        </div>

        <div class="grid gap-6 lg:grid-cols-2 lg:items-center">
            <div class="order-1 flex flex-col gap-6 lg:order-2">
                <div>
                    <H3>Gyrnal</H3>
                    <P>
                        Gyrnal is a simple and flexible workout tracker.
                        It supports many different types of workouts & movements, with a clear
                        input & notes.
                        A set break timer automatically starts, when you enter a new performance.<br>
                        You can create your own workout templates from an existing workout or completely
                        new.
                    </P>
                </div>
                <div class="flex flex-wrap items-center gap-x-6 gap-y-2">
                    <NuxtLink
                        href="https://gyrnal.pglaum.de"
                        class="
                            inline-flex
                            items-center
                            gap-2
                            text-primary
                            underline-offset-4
                            hover:underline
                            "
                        target="_blank"
                    >
                        gyrnal.pglaum.de
                        <ExternalLink class="size-4" />
                    </NuxtLink>
                    <NuxtLink
                        href="https://github.com/pglaum/gyrnal_web"
                        class="
                            inline-flex
                            items-center
                            gap-2
                            text-primary
                            underline-offset-4
                            hover:underline
                            "
                        target="_blank"
                    >
                        <Icon name="mdi:github" />
                        Github
                        <ExternalLink class="size-4" />
                    </NuxtLink>
                </div>
                <div class="flex flex-wrap items-center gap-2">
                    <div class="font-semibold">
                        Technologies:
                    </div>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:nuxt"
                            size="16"
                        />
                        Nuxt
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:vuejs"
                            size="16"
                        />
                        Vue.js
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:language-typescript"
                            size="16"
                        />
                        Typescript
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="simple-icons:shadcnui"
                            size="16"
                        />
                        Shadcn-vue
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:tailwind"
                            size="16"
                        />
                        Tailwind
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="devicon-plain:supabase"
                            size="16"
                        />
                        Supabase
                    </Badge>
                </div>
            </div>
            <NuxtLink
                class="order-2 aspect-square w-full rounded-lg border lg:order-1"
                href="https://gyrnal.pglaum.de"
                target="_blank"
            >
                <img
                    class="size-full rounded-lg object-cover object-top"
                    src="/images/gyrnal.png"
                >
            </NuxtLink>
        </div>

        <div class="grid gap-6 lg:grid-cols-2 lg:items-center">
            <div class="flex flex-col gap-6">
                <div>
                    <H3>Books</H3>
                    <P>
                        Keep track of the books you want to read, have in your library or have read.
                        Quickly find books with the ISBN scanner.
                        A nice statistics overview shows how many books you have bought and read per month.
                    </P>
                </div>
                <div class="flex flex-wrap items-center gap-x-6 gap-y-2">
                    <NuxtLink
                        href="https://books.pglaum.de"
                        class="
                            inline-flex
                            items-center
                            gap-2
                            text-primary
                            underline-offset-4
                            hover:underline
                            "
                        target="_blank"
                    >
                        books.pglaum.de
                        <ExternalLink class="size-4" />
                    </NuxtLink>
                    <NuxtLink
                        href="https://github.com/pglaum/books"
                        class="
                            inline-flex
                            items-center
                            gap-2
                            text-primary
                            underline-offset-4
                            hover:underline
                            "
                        target="_blank"
                    >
                        <Icon name="mdi:github" />
                        Github
                        <ExternalLink class="size-4" />
                    </NuxtLink>
                </div>
                <div class="flex flex-wrap items-center gap-2">
                    <div class="font-semibold">
                        Technologies:
                    </div>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:nuxt"
                            size="16"
                        />
                        Nuxt
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:vuejs"
                            size="16"
                        />
                        Vue.js
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:language-typescript"
                            size="16"
                        />
                        Typescript
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="simple-icons:shadcnui"
                            size="16"
                        />
                        Shadcn-vue
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:tailwind"
                            size="16"
                        />
                        Tailwind
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="devicon-plain:supabase"
                            size="16"
                        />
                        Supabase
                    </Badge>
                </div>
            </div>
            <NuxtLink
                class="aspect-square w-full rounded-lg border"
                href="https://books.pglaum.de"
                target="_blank"
            >
                <img
                    class="size-full rounded-lg object-cover object-top"
                    src="/images/books.png"
                >
            </NuxtLink>
        </div>
        <div class="grid gap-6 lg:grid-cols-2 lg:items-center">
            <div class="order-1 flex flex-col gap-6 lg:order-2">
                <div>
                    <H3>Jungprediger Workshop</H3>
                    <P>
                        This small conference site is a stylish landing page with a call to action.<br>
                        It presents all necessary information in a fresh and interesting way.
                    </P>
                </div>
                <div class="flex flex-wrap items-center gap-x-6 gap-y-2">
                    <NuxtLink
                        href="https://jungpredigerworkshop.de"
                        class="
                            inline-flex
                            items-center
                            gap-2
                            text-primary
                            underline-offset-4
                            hover:underline
                            "
                        target="_blank"
                    >
                        jungpredigerworkshop.de
                        <ExternalLink class="size-4" />
                    </NuxtLink>
                    <NuxtLink
                        href="https://github.com/pglaum/jungpredigerworkshop.de"
                        class="
                            inline-flex
                            items-center
                            gap-2
                            text-primary
                            underline-offset-4
                            hover:underline
                            "
                        target="_blank"
                    >
                        <Icon name="mdi:github" />
                        Github
                        <ExternalLink class="size-4" />
                    </NuxtLink>
                </div>
                <div class="flex flex-wrap items-center gap-2">
                    <div class="font-semibold">
                        Technologies:
                    </div>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:nuxt"
                            size="16"
                        />
                        Nuxt
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:vuejs"
                            size="16"
                        />
                        Vue.js
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:language-typescript"
                            size="16"
                        />
                        Typescript
                    </Badge>
                    <Badge variant="outline">
                        <Icon
                            name="mdi:tailwind"
                            size="16"
                        />
                        Tailwind
                    </Badge>
                </div>
            </div>
            <NuxtLink
                class="order-2 aspect-square w-full rounded-lg border lg:order-1"
                href="https://jungpredigerworkshop.de"
                target="_blank"
            >
                <img
                    class="size-full rounded-lg object-cover object-top"
                    src="/images/jungpredigerworkshop.png"
                >
            </NuxtLink>
        </div>
    </div>
</template>

<script setup lang="ts">
import { ExternalLink, } from 'lucide-vue-next'

useHead({
    title: 'Showcase',
})
</script>
