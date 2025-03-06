import {defineStore} from 'pinia';
import {ref} from 'vue';

export const useCounterStore = defineStore('Data', () => {

    const globalState = ref({})
    return { globalState }
})