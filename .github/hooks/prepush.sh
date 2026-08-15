#!/bin/bash

echo "[AssoPerso] Pré-push : exécution des tests..."

# Tests Python
if command -v pytest >/dev/null 2>&1; then
    pytest || exit 1
fi

# Tests JS
if command -v npm >/dev/null 2>&1 && [ -f package.json ]; then
    npm test || exit 1
fi

echo "✔ Pré-push OK."
exit 0
