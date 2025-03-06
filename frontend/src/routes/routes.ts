import MindMap from '../components/MindMap.vue';
import Glossary from '../components/Glossary.vue'


const routes = [
    {path: '/', component: Glossary},
    {path: '/glossary', component: MindMap},
];

export default routes;