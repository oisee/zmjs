#!/usr/bin/env bash
set -euo pipefail

require_env() {
  local name="$1"
  if [[ -z "${!name:-}" ]]; then
    echo "Missing required environment variable: $name" >&2
    exit 1
  fi
}

require_env AZURE_OPENAI_BASE_URL
require_env AZURE_OPENAI_API_KEY
require_env AZURE_OPENAI_DEPLOYMENT

CONFIG_DIR="${HOME}/.codex"
CONFIG_FILE="${CONFIG_DIR}/config.toml"
REASONING_EFFORT="${CODEX_REASONING_EFFORT:-medium}"

mkdir -p "${CONFIG_DIR}"

cat > "${CONFIG_FILE}" <<EOF
model = "${AZURE_OPENAI_DEPLOYMENT}"
model_provider = "azure"
model_reasoning_effort = "${REASONING_EFFORT}"

[model_providers.azure]
name = "Azure OpenAI"
base_url = "${AZURE_OPENAI_BASE_URL}"
env_key = "AZURE_OPENAI_API_KEY"
wire_api = "responses"
EOF

chmod 600 "${CONFIG_FILE}"

echo "Wrote ${CONFIG_FILE}"
echo "Make sure AZURE_OPENAI_API_KEY is exported in the shell where you run codex."
