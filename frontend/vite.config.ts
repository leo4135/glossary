import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import { resolve } from 'path'

// https://vitejs.dev/config/

const projectRootDir = resolve(__dirname);
export default defineConfig({
  base: '/',
  plugins: [vue()],
  resolve: {
    alias: {
      "@": resolve(projectRootDir),
    },
  },
  build: {
    outDir: '../backend/public'
  }
})
