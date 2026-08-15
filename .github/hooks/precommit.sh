#!/bin/bash

echo "[AssoPerso] Pré-commit : vérification du code..."

# Empêcher commit de secrets
if grep -R "SECRET_KEY\|API_KEY\|TOKEN" .; then
    echo "❌ Secret détecté — commit annulé."
    exit 1
fi

# Lint JS/TS si présent
if command -v eslint >/dev/null 2>&1; then
    eslint . || exit 1
fi

# Lint Python si présent
if command -v flake8 >/dev/null 2>&1; then
    flake8 || exit 1
fi

# Format auto
if command -v prettier >/dev/null 2>&1; then
    prettier --write .
fi

echo "✔ Pré-commit OK."
exit 0
