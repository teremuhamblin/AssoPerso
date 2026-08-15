#!/bin/bash

MSG_FILE=$1
MSG=$(cat "$MSG_FILE")

REGEX="^(feat|fix|docs|style|refactor|perf|test|chore|ci|build)\(.+\): .+"

if ! echo "$MSG" | grep -Eq "$REGEX"; then
    echo "❌ Format invalide."
    echo "Exemple : feat(api): ajout endpoint"
    exit 1
fi

echo "✔ Format du commit valide."
exit 0
