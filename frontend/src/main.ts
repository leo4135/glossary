import { createApp } from 'vue';
import './style.css';
import App from './App.vue';
import pinia from './state_manager/pinia.ts';
import router from './router/router.ts';
// vuetify
import '@mdi/font/css/materialdesignicons.css';
import 'vuetify/styles';
import { createVuetify } from 'vuetify';
import * as components from 'vuetify/components';
import * as directives from 'vuetify/directives';
import { VNetworkGraph } from 'v-network-graph';
import "v-network-graph/lib/style.css"

const vuetify = createVuetify({
    components,
    directives
})


createApp(App)
    .use(VNetworkGraph)
    .use(pinia)
    .use(vuetify)
    .use(router)
    .mount('#app')

