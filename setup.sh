#!/bin/bash
# ════════════════════════════════════════════════
# SETUP — LUMIIA REDA SPIN
# Exécuter UNE FOIS pour créer le projet en local
# ════════════════════════════════════════════════

set -e

PROJECT_DIR="/Users/emmanuelexbrayat/Dropbox/DB LUMIIA 2025/Outils APP Claude/GAME Reda"
REPO_NAME="lumiia-reda-spin"
GH_USER="i-immersion"

echo ""
echo "════════════════════════════════════════"
echo "  LUMIIA REDA SPIN — Setup initial"
echo "════════════════════════════════════════"
echo ""
echo "Projet : $PROJECT_DIR"
echo "Repo GitHub : $GH_USER/$REPO_NAME"
echo ""

# Créer le dossier
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

# Vérifier si déjà initialisé
if [ -d ".git" ]; then
  echo "⚠️  Repo git déjà initialisé. Setup déjà fait ?"
  read -p "Continuer quand même ? (o/N) " -n 1 -r
  echo ""
  if [[ ! $REPLY =~ ^[Oo]$ ]]; then exit 0; fi
fi

# Init git
echo "📦 Initialisation du repo git…"
git init
git branch -M main

# Lier au remote (le repo doit être créé sur GitHub d'abord)
echo "🔗 Ajout du remote GitHub…"
git remote add origin "https://github.com/$GH_USER/$REPO_NAME.git" 2>/dev/null || \
  git remote set-url origin "https://github.com/$GH_USER/$REPO_NAME.git"

# Rendre deployer.command exécutable
chmod +x deployer.command 2>/dev/null || true

echo ""
echo "✅ Setup local terminé !"
echo ""
echo "════════════════════════════════════════"
echo "  ÉTAPES SUIVANTES"
echo "════════════════════════════════════════"
echo ""
echo "1. Crée le repo sur GitHub :"
echo "   → Va sur https://github.com/new"
echo "   → Owner: $GH_USER · Name: $REPO_NAME"
echo "   → Public · NE PAS initialiser avec README"
echo "   → Create repository"
echo ""
echo "2. Active GitHub Pages :"
echo "   → Settings → Pages"
echo "   → Source: Deploy from branch · main · / (root)"
echo "   → Save"
echo ""
echo "3. Premier push :"
echo "   cd \"$PROJECT_DIR\""
echo "   git add -A"
echo "   git commit -m \"v1.0 initial\""
echo "   git push -u origin main"
echo ""
echo "4. URL prod (dans ~1 minute) :"
echo "   https://$GH_USER.github.io/$REPO_NAME/"
echo ""
echo "5. Ajoute le projet au Roadmap Firebase :"
echo "   → Ouvre n'importe quelle page LUMIIA connectée à Firebase"
echo "   → Console DevTools → onglet Console"
echo "   → Colle le snippet roadmap-add.js"
echo ""
read -p "Appuie sur Entrée pour fermer…"
