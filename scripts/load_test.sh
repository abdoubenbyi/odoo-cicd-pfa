#!/bin/bash
URL="http://localhost:8070/web/login"
SUCCESS=0
FAIL=0

for i in {1..50}; do
  CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
  if [ "$CODE" == "200" ]; then
    SUCCESS=$((SUCCESS+1))
  else
    FAIL=$((FAIL+1))
  fi
done

echo "Succès: $SUCCESS / 50 — Échecs: $FAIL / 50"
if [ "$FAIL" -gt 5 ]; then
  echo "ÉCHEC: taux d'erreur trop élevé sous charge"
  exit 1
fi
