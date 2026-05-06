#!/usr/bin/env bash
# Instala as dependências do projeto com uv (usa pyproject.toml e uv.lock na raiz do repositório).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if ! command -v uv >/dev/null 2>&1; then
  echo "Erro: o comando 'uv' não foi encontrado no PATH." >&2
  echo "Instale o uv: https://docs.astral.sh/uv/getting-started/installation/" >&2
  exit 1
fi

cd "${ROOT_DIR}"
echo "Diretório do projeto: ${ROOT_DIR}"
echo "Executando: uv sync $*"
uv sync "$@"
