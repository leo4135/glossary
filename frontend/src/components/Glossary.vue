<template>
    <div v-if="!isLoading">Loading...</div>
    <BaseLayout v-else>
        <template #content>
            <v-card class="ma-5" v-for="term in terms" :key="term.id">
                <v-card-item>
                    <v-card-title>
                        {{ term.label }}
                    </v-card-title>
                </v-card-item>

                <v-card-text>
                    {{ term.description }}
                </v-card-text>
            </v-card>
            <v-pagination v-model="page" :length="totalPages" rounded="0" :total-visible="3"></v-pagination>
        </template>
    </BaseLayout>
</template>

<script setup>
import BaseLayout from '../layouts/BaseLayout.vue';
import {ref, watch } from 'vue';
const page = ref(1);
const totalPages = ref(1);
const url = import.meta.env.VITE_API_URL;
const isLoading = ref(false);
const terms = ref([]);

watch([page], () => {
    getData()
})


const getData = async () => {
    const response = await fetch(url + `api/terms/?page=${page.value}`);
    const data = await response.json();
    terms.value = data.resultTerms;
    console.log(data)
    isLoading.value = true;
    totalPages.value = data.totalTermsPages;
}

getData();
</script>

<style scoped></style>