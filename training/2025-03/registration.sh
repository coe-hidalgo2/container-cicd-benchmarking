#!/bin/bash

TEAM_SLUG="training-containers-cicd-benchmarking"
ORG="coe-hidalgo2"
USERS=(
  "Robyroc"
  "bouaziz14"
  "tomjoygit"
  "dandaKrpelik"
  "ghilbrae"
  "mredenti"
  "upnere"
  "utkucanbolat"
  "cristinabalaban"
  "forry"
  "buketbenek"
  "arjunparab3"
  "training50"
  "dcoleman-ichec"
  "hrolive"
  "trz42"
  "radovanpasek"
  "nie0056"
  "rvavrik"
  "songbin6280"
  "antoine-morvan"
  "karthikeya-ms"
)

for USER in "${USERS[@]}"; do
  gh api \
    --method PUT \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    /orgs/$ORG/teams/$TEAM_SLUG/memberships/$USER \
    -f "role=member"
done
