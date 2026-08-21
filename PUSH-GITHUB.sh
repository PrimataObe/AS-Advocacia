#!/usr/bin/env bash
# Publica este repositório no GitHub.
# Uso:  ./PUSH-GITHUB.sh
set -e

OWNER="PrimataObe"
REPO="AS-Advocacia"

echo "==> Verificando repositório local..."
git log --oneline -1

echo "==> Criando o repositório no GitHub (privado) e enviando..."
if command -v gh >/dev/null 2>&1; then
  gh repo create "$OWNER/$REPO" --private --source=. --remote=origin --push
else
  echo "GitHub CLI (gh) não encontrado."
  echo "1) Crie o repositório vazio em: https://github.com/new  (nome: $REPO, SEM README/gitignore)"
  echo "2) Depois rode:"
  echo "   git remote add origin https://github.com/$OWNER/$REPO.git"
  echo "   git push -u origin main"
  exit 1
fi

echo "==> Pronto: https://github.com/$OWNER/$REPO"
