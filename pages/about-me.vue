<template>
    <div class="container my-24 grid gap-8 md:max-w-3xl">
        <H3>Experienced in:</H3>

        <div class="flex flex-wrap gap-2">
            <Popover
                v-for="xp, index in experiencedIn"
                :key="index"
            >
                <PopoverTrigger class="cursor-pointer rounded-lg p-2 hover:bg-muted/50">
                    <Icon
                        :name="xp[0]"
                        size="36"
                    />
                </PopoverTrigger>
                <PopoverContent side="top">
                    {{ xp[1] }}
                </PopoverContent>
            </Popover>
        </div>
    </div>
</template>

<script setup lang="ts">
const experiencedIn = ref([
    [ 'mdi:symfony', 'Symfony (PHP Framework)', ],
    [ 'mdi:tailwind', 'Tailwind CSS', ],
    [ 'mdi:language-csharp', 'Microsoft C#', ],
    [ 'mdi:dot-net', '.Net & Windows Forms', ],
    [ 'mdi:vuejs', 'Vue.js', ],
    [ 'mdi:react', 'React', ],
    [ 'mdi:language-python', 'Python', ],
    [ 'mdi:language-c', 'C', ],
    [ 'mdi:language-cpp', 'C++', ],
    [ 'mdi:language-java', 'Java', ],
    [ 'mdi:apple-ios', 'Flutter (iOS)', ],
    [ 'mdi:android', 'Flutter (Android)', ],
    [ 'mdi:language-typescript', 'Typescript', ],
    [ 'mdi:language-javascript', 'Javascript', ],
    [ 'mdi:jquery', 'JQuery', ],
    [ 'mdi:language-php', 'PHP', ],
    [ 'mdi:language-css3', 'CSS3', ],
    [ 'mdi:language-html5', 'HTML5', ],
])

useHead({
    title: 'About me',
})
</script>
