#!/usr/bin/env bash
# Serve this fork's experiment collection on CPU; retain the upstream KB separately.
set -euo pipefail
REPO="$(cd "$(dirname "$0")/.." && pwd)"
PYTHON="${AIBUILDAI_KB_PYTHON:-$REPO/.venv/bin/python}"
RUNTIME="${AIBUILDAI_KB_EXPERIMENT_RUNTIME:?set a persistent runtime directory}"
MODEL="${AIBUILDAI_KB_EXPERIMENT_EMBED_MODEL:-sentence-transformers/all-MiniLM-L6-v2}"
PORT="${AIBUILDAI_KB_EXPERIMENT_PORT:-18766}"
export CUDA_VISIBLE_DEVICES=""
export HF_HOME="$RUNTIME/model-cache"
export TOKENIZERS_PARALLELISM=false
export OMP_NUM_THREADS="${OMP_NUM_THREADS:-2}"
export MKL_NUM_THREADS="${MKL_NUM_THREADS:-2}"
export PYTHONPATH="$REPO${PYTHONPATH:+:$PYTHONPATH}"
mkdir -p "$RUNTIME/corpus/plugins"
COLLECTION="$RUNTIME/corpus/plugins/aba-experiments-marketplace"
SOURCE="$REPO/data/corpus/plugins/aba-experiments-marketplace"
if [[ ! -e "$COLLECTION" && ! -L "$COLLECTION" ]]; then
  ln -s "$SOURCE" "$COLLECTION"
fi
[[ "$(readlink -f "$COLLECTION")" == "$(readlink -f "$SOURCE")" ]] || {
  echo 'Runtime collection points at a different source; use its existing owner or another runtime directory.' >&2
  exit 1
}
"$PYTHON" -m aibuildai_mcp.index \
  --plugins-root "$RUNTIME/corpus/plugins" --index-dir "$RUNTIME/index" \
  --model "$MODEL" --device cpu --batch-size 8
exec "$PYTHON" -m aibuildai_mcp.service \
  --plugins-root "$RUNTIME/corpus/plugins" --index-dir "$RUNTIME/index" \
  --embed-model "$MODEL" --device cpu --embed-batch-size 8 \
  --host 127.0.0.1 --port "$PORT"
