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
                I have a Bachelor & Master Degree in electrical engineering,
                but my passion has been programming since I was 15.
                <br>
                In my dual study I got lots of experience by developing automation,
                integration & application for medical production lines.
                <br>
                Now I mostly work on mobile apps & web applications.
            </P>
        </div>
        <div>
            <H3>Languages & Frameworks</H3>

            <div class="mt-6 flex flex-wrap gap-2">
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
                <Li>2023-now: Software Developer @ SiNetCon</Li>
                <Li>2021-2022: Project Manager @ Fresenius Kabi Department of Development</Li>
                <Li>2017-2020: Project Engineer @ Fresenius Kabi Department of Development</Li>
            </Ul>
        </div>

        <div>
            <H3>Education</H3>

            <Ul>
                <Li>2020-2022: M. Eng. Systems Engineering @ THM Wetzlar</Li>
                <Li>2017-2020: B. Eng. Technische Informatik @ THM Wetzlar</Li>
            </Ul>
        </div>
    </div>
</template>

<script setup lang="ts">
import { getLocalTimeZone, today, } from '@internationalized/date'

const experiencedIn = ref([
    [ 'mdi:symfony', 'Symfony (PHP Framework)', ],
    [ 'mdi:tailwind', 'Tailwind CSS', ],
    [ 'mdi:language-csharp', 'Microsoft C#', ],
    [ 'mdi:dot-net', '.Net & Windows Forms', ],
    [ 'mdi:vuejs', 'Vue.js', ],
    [ 'mdi:react', 'React', ],
    [ 'mdi:language-python', 'Python', ],
    [ 'mdi:linux', 'Linux & Server stuff', ],
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
])

const years = computed(() => {
    const age = today(getLocalTimeZone()).subtract({ years: 1998, months: 12, days: 7, })
    return age.year
})

useHead({
    title: 'About me',
})
</script>
