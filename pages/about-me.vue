<template>
    <div class="container my-24 grid gap-8 md:max-w-3xl">
        <div>
            <H3>Hi</H3>

            <P>
                My name is Philipp & I am a {{ years }} years old developer from Germany
                <Icon
                    name="openmoji:flag-germany"
                    size="24"
                />.
                <br>
                I have a Bachelor & Master Degree in IT & electrical engineering,
                programming has been my passion since I was 15.
                <br>
                In my dual study I got lots of experience by developing automation,
                integration & application for medical production lines.
                <br>
                Currently I mostly work on mobile apps & web applications.
            </P>

            <div class="mt-6 flex gap-x-4 gap-y-2">
                <Button
                    variant="outline"
                    as-child
                >
                    <NuxtLink
                        href="https://github.com/pglaum"
                        target="_blank"
                    >
                        <Icon
                            name="mdi:github"
                            size="20"
                        />
                        GitHub
                    </NuxtLink>
                </Button>
                <Button
                    variant="outline"
                    as-child
                >
                    <NuxtLink
                        href="https://git.sr.ht/~pglaum"
                        target="_blank"
                    >
                        <Icon
                            name="simple-icons:sourcehut"
                            size="20"
                        />
                        SourceHut
                    </NuxtLink>
                </Button>
            </div>
        </div>
        <div>
            <H3>Languages & Frameworks</H3>

            <button
                class="
                    mt-2
                    inline-flex
                    items-center
                    gap-2
                    text-primary
                    underline
                    underline-offset-4
                    hover:no-underline
                    "
                @click="showAsList = !showAsList"
            >
                <Icon
                    v-if="showAsList"
                    name="lucide:layout-grid"
                    size="16"
                />
                <Icon
                    v-else
                    name="lucide:list"
                    size="16"
                />
                {{ showAsList ? 'Show icons' : 'Show as list' }}
            </button>

            <div
                v-if="showAsList"
                class="mt-6 divide-y"
            >
                <div
                    v-for="xp, index in sortedExperiences"
                    :key="index"
                    class="flex flex-wrap items-center justify-start gap-4 py-2"
                >
                    <Icon
                        :name="xp[0]"
                        size="20"
                    />
                    <div class="font-medium">
                        {{ xp[1] }}
                    </div>
                </div>
            </div>
            <div
                v-else
                class="mt-6 flex flex-wrap gap-2"
            >
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

        <div>
            <H3>Jobs</H3>

            <Ul>
                <Li>06/2024 - now: Team Lead Software Development @ SiNetCon</Li>
                <Li>01/2023 - 05/2024: Software Developer @ SiNetCon</Li>
                <Li>01/2021 - 12/2022: Junior Manager @ Fresenius Kabi, Technology</Li>
                <Li>08/2019 - 12/2020: Project Engineer @ Fresenius Kabi, Technology</Li>
            </Ul>
        </div>

        <div>
            <H3>Education</H3>

            <Ul>
                <Li>10/2019 - 07/2021: M. Eng. Systems Engineering @ THM Wetzlar</Li>
                <Li>08/2016 - 07/2019: B. Eng. Technische Informatik @ THM Wetzlar</Li>
            </Ul>
        </div>
    </div>
</template>

<script setup lang="ts">
import { getLocalTimeZone, today, } from '@internationalized/date'

const showAsList = ref(false)

const experiencedIn = ref([
    [ 'mdi:symfony', 'Symfony (PHP Framework)', ],
    [ 'mdi:tailwind', 'Tailwind CSS', ],
    [ 'mdi:language-csharp', 'Microsoft C#', ],
    [ 'mdi:dot-net', '.Net & Windows Forms', ],
    [ 'mdi:vuejs', 'Vue.js', ],
    [ 'mdi:react', 'React', ],
    [ 'mdi:language-python', 'Python', ],
    [ 'mdi:linux', 'Linux: Server setup & maintenance', ],
    [ 'mdi:language-java', 'Java', ],
    [ 'mdi:git', 'Git', ],
    [ 'mdi:apple-ios', 'Flutter (iOS)', ],
    [ 'mdi:android', 'Flutter (Android)', ],
    [ 'mdi:language-typescript', 'Typescript', ],
    [ 'mdi:language-javascript', 'Javascript', ],
    [ 'mdi:jquery', 'JQuery', ],
    [ 'simple-icons:siemens', 'Siemens S7 PLC programming', ],
    [ 'mdi:language-php', 'PHP', ],
    [ 'mdi:language-css3', 'CSS3', ],
    [ 'mdi:language-html5', 'HTML5', ],
    [ 'mdi:language-c', 'C', ],
    [ 'mdi:language-cpp', 'C++', ],
    [ 'simple-icons:dart', 'Dart (Flutter development)', ],
    [ 'devicon-plain:postgresql', 'PostgreSQL', ],
    [ 'devicon-plain:mysql', 'MySQL', ],
    [ 'devicon-plain:sqlite', 'SQLite', ],
    [ 'mdi:firebase', 'Firebase', ],
    [ 'devicon-plain:supabase', 'Supabase', ],
    [ 'mdi:wordpress', 'Wordpress: Setup, Management & Plugin development', ],
    [ 'mdi:console', 'Terminal/command line usage', ],
    [ 'devicon-plain:raspberrypi', 'Raspberry Pi', ],
    [ 'devicon:flask', 'Python Flask', ],
    [ 'mdi:nuxt', 'Nuxt', ],
    [ 'simple-icons:autohotkey', 'AutoHotKey', ],
    [ 'devicon-plain:flutter', 'Flutter cross-platform development', ],
])

const years = computed(() => {
    const age = today(getLocalTimeZone()).subtract({ years: 1998, months: 12, days: 7, })
    return age.year
})

const sortedExperiences = computed(() => {
    return experiencedIn.value.toSorted((a, b) => a[1].localeCompare(b[1]))
})

useHead({
    title: 'About me',
})
</script>
