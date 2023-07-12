#!/bin/bash

set -eu

if [ $# -ne 2 ]; then
  echo "Usage: $0 GITHUB_SECRET APPLY_ENV"
  exit 1
fi

shopt -s lastpipe

GITHUB_SECRET=$1
APPLY_ENV=$2 # "dev" or "dry-run" or "prod"

organization="sohosai"
definedLabels=()
find ./labels -maxdepth 1 -mindepth 1 -print0 | xargs -0 -I@ basename @ .json | while read -r label; do
  definedLabels+=("$label")
done

if [ "$APPLY_ENV" = "prod" ] || [ "$APPLY_ENV" = "dry-run" ]; then
  repositoriesJson=$(cat assets/repositories.json)
elif [ "$APPLY_ENV" = "dev" ]; then
  quotedDefinedLabels=()
  printf '"%s"\n' "${definedLabels[@]}" | while read -r defineLabel; do
    quotedDefinedLabels+=("$defineLabel")
  done
  labelsJson="$(IFS=,; echo "${quotedDefinedLabels[*]}")"
  repositoriesJson=$(jq -n "{\"labels-sandbox\": [$labelsJson]}")
else
  echo "APPLY_ENV must be 'dev' or 'dry-run' or 'prod'."
  exit 1
fi

for repository in $(echo "$repositoriesJson" | jq -r keys[]); do
  targetJsonFiles=()
  labels=$(echo "$repositoriesJson" | jq -r .\""$repository"\")
  for label in $(echo "$labels" | jq -r .[]); do
    isDefined=false
    for defineLabel in "${definedLabels[@]}"; do
      [ "$label" = "$defineLabel" ] && isDefined=true
    done
    if [ "$isDefined" = false ]; then
      echo "Label '$label' is not defined."
      exit 1
    fi
    targetJsonFiles+=("labels/$label.json")
  done
  tmpfile=$(mktemp)
  jq -s add "${targetJsonFiles[@]}" > "$tmpfile"
  if [ "$APPLY_ENV" = "dry-run" ]; then
    github-label-sync --access-token "$GITHUB_SECRET" --labels "$tmpfile" "$organization"/"$repository" --dry-run
  else
    github-label-sync --access-token "$GITHUB_SECRET" --labels "$tmpfile" "$organization"/"$repository"
  fi
done
