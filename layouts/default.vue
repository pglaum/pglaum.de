<template>
    <div class="min-h-screen">
        <div class="container sticky top-0 z-10 flex items-center gap-16 py-4 backdrop-blur-md">
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
                    "
            >
                Philipp Glaum
            </NuxtLink>

            <NavigationMenu>
                <NavigationMenuList>
                    <NavigationMenuItem>
                        <NavigationMenuLink
                            href="/about-me"
                            :class="navigationMenuTriggerStyle()"
                        >
                            About Me
                        </NavigationMenuLink>
                    </NavigationMenuItem>
                    <NavigationMenuItem>
                        <NavigationMenuLink
                            href="/showcase"
                            :class="navigationMenuTriggerStyle()"
                        >
                            Showcase
                        </NavigationMenuLink>
                    </NavigationMenuItem>
                    <NavigationMenuItem>
                        <NavigationMenuTrigger>
                            Services
                        </NavigationMenuTrigger>
                        <NavigationMenuContent>
                            <ul
                                class="
                                    flex
                                    w-[250px]
                                    flex-col
                                    gap-3
                                    p-4
                                    md:w-[300px]
                                    md:grid-cols-2
                                    lg:w-[400px]
                                    "
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
        <slot />
        <Toaster />
    </div>
</template>

<script setup lang="ts">
import { navigationMenuTriggerStyle, } from '~/components/ui/navigation-menu'


</script>
