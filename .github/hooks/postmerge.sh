#!/bin/bash

echo "[AssoPerso] Post-merge : synchronisation..."

# Node
if [ -f package.json ]; then
    npm install
fi

# Python
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

echo "✔ Dépendances synchronisées."
exit 0
