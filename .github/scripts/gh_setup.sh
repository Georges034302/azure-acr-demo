#!/bin/bash

# --- Config ---
HOSTNAME="github.com"
export OWNER=$(gh api user --jq .login)
echo "GitHub user: $OWNER"
export REPO=$(basename -s .git "$(git config --get remote.origin.url)")
echo "Current repo name: $REPO"
export REPO=${REPO:-$OWNER/$REPOE}  # Default to current repo if not set

# --- Authenticate GitHub CLI with the token ---
echo "🔐 Logging into GitHub CLI with the provided token..."
echo "$GH_TOKEN" | gh auth login --hostname "$HOSTNAME" --with-token

# --- Verify login ---
echo ""
gh auth status

# --- Set repository secrets ---
echo "🔐 Setting repository secrets..."
gh secret set GH_TOKEN --body "$GH_TOKEN" --repo "$OWNER/$REPO"

echo "✅ GH_TOKEN set and GitHub CLI authenticated successfully."
