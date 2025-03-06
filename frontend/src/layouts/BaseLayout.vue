<template>
    <v-app>
        <v-app-bar title="Бачкуринский Леонид"></v-app-bar>

        <v-navigation-drawer>

            <RouterLink to="/"><v-list-item link>Глоссарий</v-list-item></Routerlink>
            <RouterLink to="/glossary"><v-list-item link>Семантический граф</v-list-item></Routerlink>

        </v-navigation-drawer>


        <v-main>
            <v-container>
                <slot name="content">
                    <v-card>Default content</v-card>
                </slot>
            </v-container>
        </v-main>
    </v-app>
</template>