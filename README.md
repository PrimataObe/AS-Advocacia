# Alexander Santos Advocacia

Site institucional do escritório Alexander Santos Advocacia — Direito Trabalhista e Previdenciário.

## Stack

- React 19 + TypeScript
- Vite 7
- Tailwind CSS 4 + shadcn/ui (Radix)
- wouter (roteamento client-side)
- framer-motion

## Rodando localmente

```bash
pnpm install
pnpm dev          # http://localhost:3000
```

## Build

```bash
pnpm build        # saída em dist/public
pnpm preview
```

## Deploy (Vercel)

O `vercel.json` já está configurado:

| Configuração        | Valor                            |
| ------------------- | -------------------------------- |
| Framework           | Vite                             |
| Build Command       | `vite build`                     |
| Output Directory    | `dist/public`                    |
| Install Command     | `pnpm install --no-frozen-lockfile` |

Rewrites de SPA e cache de assets estáticos já estão inclusos.

## Estrutura

```
client/
  index.html
  public/assets/      imagens e logos
  src/
    pages/            Home.tsx, NotFound.tsx
    components/       ui/ (shadcn), Map, ErrorBoundary
    contexts/         ThemeContext
server/               express (não usado no deploy estático)
shared/               constantes compartilhadas
```

## Peso do build

| Item                | Valor    |
| ------------------- | -------- |
| `index.html`        | 0,69 kB  |
| JS (gzip)           | 104 kB   |
| CSS (gzip)          | 18 kB    |
| Imagens (5 WebP)    | 320 kB   |
| **Total do `dist`** | **772 kB** |

As imagens estão em WebP e dimensionadas para o uso real em tela. Ao trocar
qualquer uma, mantenha o formato e não suba arquivos acima de ~150 kB.

## Pendências antes do go-live

- [ ] Substituir telefone e link de WhatsApp provisórios em `client/src/pages/Home.tsx`
