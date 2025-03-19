TEAM_SLUG="training-containers-cicd-benchmarking"
ORG="coe-hidalgo2"
gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /orgs/$ORG/teams/$TEAM_SLUG/members