<template>
    <BaseLayout>
        <template #content>
            <v-card class="h-screen w-100 pa-10 cursor-grab" id="cy"></v-card>
        </template>
    </BaseLayout>

</template>

<script setup>
import BaseLayout from '../layouts/BaseLayout.vue';
import { ref, onMounted } from 'vue';
import cytoscape from 'cytoscape';
const url = import.meta.env.VITE_API_URL;
const elems = ref({});

const getData = async () => {
    const response = await fetch(url + `api/terms/`);
    const data = await response.json();
    elems.value = {
        resultTerms: data.resultTerms,
        resultEdges: data.resultEdges
    };
}

onMounted(async () => {
    await getData();

    const elementsFromFetch = [
    ...elems.value.resultTerms.map((item) => {
        return { group: 'nodes', data: { id: item.id, label: item.label }, position: { x: item.x, y: item.y } }
    }),
    ...elems.value.resultEdges.map((item) => {
        return { group: 'edges', data: { source: item.source, target: item.target } } 
    }),
    ]
    console.log(elementsFromFetch);
    cytoscape({
        container: document.getElementById('cy'),
        elements: elementsFromFetch,
        style: [{ selector: 'node', style: { content: 'data(label)' } }],
        layout: { name: 'preset' },
        zoom: 1,
        pan: { x: 0, y: 0 }
    })
})
</script>

<style scoped></style>