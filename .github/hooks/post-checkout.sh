#!/bin/bash

echo "[AssoPerso] Post-checkout : mise à jour..."

git submodule update --init --recursive

echo "✔ Submodules OK."
exit 0
