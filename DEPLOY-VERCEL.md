# Implantação na Vercel

Este pacote contém o site completo em React + Vite, com código-fonte, configurações, lockfile e assets locais.

## Como publicar

1. Extraia o ZIP.
2. Entre na pasta extraída e instale as dependências com `pnpm install` ou `npm install`.
3. Execute `pnpm build` ou `npm run build` para validar a compilação.
4. Na Vercel, importe a pasta como um projeto existente. O framework deve ser detectado como Vite.
5. Use `pnpm build` como comando de build e `dist/public` como diretório de saída, se a Vercel solicitar essas configurações.

Os assets estão em `client/public/assets` e as imagens foram ajustadas para funcionar com caminhos locais no deploy.

Antes da publicação, substitua o telefone e o link de WhatsApp provisórios no arquivo `client/src/pages/Home.tsx` pelos dados reais do escritório.
