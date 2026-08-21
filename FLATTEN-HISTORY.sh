#!/usr/bin/env bash
# OPCIONAL — rode ANTES do primeiro push.
# Achata os 6 commits em um só, para que as imagens originais (17 MB)
# nunca entrem no histórico do GitHub. Repositório: 17 MB -> ~650 KB.
set -e
git checkout --orphan _clean
git add -A
git commit -q -m "feat: site institucional Alexander Santos Advocacia

React 19 + Vite 7 + Tailwind 4, pronto para deploy na Vercel.
Imagens em WebP, sem o runtime da plataforma de origem."
git branch -D main
git branch -m main
git reflog expire --expire=now --all
git gc --aggressive --prune=now -q
echo "Histórico achatado. Tamanho do .git:"
du -sh .git
