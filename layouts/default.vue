<template>
    <div class="flex min-h-screen flex-col">
        <div class="sticky top-0 z-10 bg-background">
            <div class="container flex items-center gap-8 py-4 md:max-w-3xl">
                <Sheet v-model:open="sheetOpen">
                    <SheetTrigger as-child>
                        <Button
                            variant="ghost"
                            size="icon"
                            class="shrink-0 md:hidden"
                        >
                            <Menu class="size-5" />
                            <span class="sr-only">Toggle navigation menu</span>
                        </Button>
                    </SheetTrigger>
                    <SheetContent
                        side="left"
                        class="flex flex-col"
                    >
                        <nav class="flex flex-col gap-2">
                            <div class="h-4" />
                            <NuxtLink
                                href="/"
                                class="block w-full"
                            >
                                <Button
                                    variant="ghost"
                                    class="w-full justify-start"
                                    @click="sheetOpen = false"
                                >
                                    Home
                                </Button>
                            </NuxtLink>
                            <NuxtLink
                                href="/about-me"
                                class="block w-full"
                            >
                                <Button
                                    variant="ghost"
                                    class="w-full justify-start"
                                    @click="sheetOpen = false"
                                >
                                    About Me
                                </Button>
                            </NuxtLink>
                            <NuxtLink
                                href="/showcase"
                                class="block w-full"
                            >
                                <Button
                                    variant="ghost"
                                    class="w-full justify-start"
                                    @click="sheetOpen = false"
                                >
                                    Showcase
                                </Button>
                            </NuxtLink>
                            <Collapsible v-model:open="collapsibleOpen">
                                <CollapsibleTrigger as-child>
                                    <Button
                                        variant="ghost"
                                        class="w-full justify-between"
                                    >
                                        Services
                                        <ChevronDown
                                            class="
                                                size-4
                                                transition-transform
                                                duration-300
                                                "
                                            :class="{
                                                'rotate-180': collapsibleOpen
                                            }"
                                        />
                                    </Button>
                                </CollapsibleTrigger>
                                <CollapsibleContent class="flex flex-col gap-2 pl-4">
                                    <ListItem
                                        title="Books"
                                        href="https://books.pglaum.de"
                                        image="/books.svg"
                                        external
                                        @click="sheetOpen = false"
                                    >
                                        Keep track of the books in your library & wishlist.
                                    </ListItem>
                                    <ListItem
                                        title="Gyrnal"
                                        href="https://gyrnal.pglaum.de"
                                        image="/gyrnal.png"
                                        external
                                        @click="sheetOpen = false"
                                    >
                                        Your simple & easy-to-use workout journal.
                                    </ListItem>
                                </CollapsibleContent>
                            </Collapsible>
                        </nav>
                    </SheetContent>
                </Sheet>

                <NuxtLink
                    to="/"
                    class="
                        inline-flex
                        items-center
                        gap-2
                        font-mono
                        font-medium
                        uppercase
                        text-muted-foreground
                        transition-colors
                        hover:text-foreground
                        "
                >
                    <img
                        src="/favicon.svg"
                        class="size-6"
                    >
                    Philipp Glaum
                </NuxtLink>

                <NavigationMenu class="hidden md:flex">
                    <NavigationMenuList>
                        <NavigationMenuItem>
                            <NuxtLink
                                href="/about-me"
                                :class="navigationMenuTriggerStyle()"
                            >
                                About Me
                            </NuxtLink>
                        </NavigationMenuItem>
                        <NavigationMenuItem>
                            <NuxtLink
                                href="/showcase"
                                :class="navigationMenuTriggerStyle()"
                            >
                                Showcase
                            </NuxtLink>
                        </NavigationMenuItem>
                        <NavigationMenuItem>
                            <NavigationMenuTrigger>
                                Services
                            </NavigationMenuTrigger>
                            <NavigationMenuContent>
                                <ul
                                    class="flex w-[400px] flex-col gap-3 p-4"
                                >
                                    <ListItem
                                        title="Books"
                                        href="https://books.pglaum.de"
                                        image="/books.svg"
                                        external
                                    >
                                        Keep track of the books in your library & wishlist.
                                    </ListItem>
                                    <ListItem
                                        title="Gyrnal"
                                        href="https://gyrnal.pglaum.de"
                                        image="/gyrnal.png"
                                        external
                                    >
                                        Your simple & easy-to-use workout journal.
                                    </ListItem>
                                </ul>
                            </NavigationMenuContent>
                        </NavigationMenuItem>
                    </NavigationMenuList>
                </NavigationMenu>
            </div>
        </div>
        <slot />
        <Toaster />
        <div class="container mt-auto py-4 text-center">
            &copy; {{ new Date().getFullYear() }} Philipp Glaum
        </div>
    </div>
</template>

<script setup lang="ts">
import { ChevronDown, Menu, } from 'lucide-vue-next'
import { NavigationMenuItem, } from 'radix-vue'

import { navigationMenuTriggerStyle, } from '~/components/ui/navigation-menu'

const collapsibleOpen = ref<boolean>(false)
const sheetOpen = ref<boolean>(false)
</script>
