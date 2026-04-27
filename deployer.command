#!/bin/bash
# ════════════════════════════════════════════════
# DEPLOYER — LUMIIA REDA SPIN
# Double-clic pour déployer sur GitHub Pages
# ════════════════════════════════════════════════

cd "$(dirname "$0")"

echo ""
echo "════════════════════════════════════════"
echo "  LUMIIA REDA SPIN — Déploiement"
echo "════════════════════════════════════════"
echo ""

# Vérifier qu'on est dans un repo git
if [ ! -d ".git" ]; then
  echo "❌ Ce dossier n'est pas un repo git."
  echo ""
  echo "Initialiser avec :"
  echo "  git init"
  echo "  git remote add origin https://github.com/i-immersion/lumiia-reda-spin.git"
  echo "  git branch -M main"
  echo ""
  read -p "Appuie sur Entrée pour fermer…"
  exit 1
fi

# Afficher fichiers modifiés
echo "📝 Fichiers modifiés :"
git status --short
echo ""

# Demander message
read -p "Message de commit [auto]: " MSG
if [ -z "$MSG" ]; then
  MSG="update $(date '+%Y-%m-%d %H:%M')"
fi

# Ajouter, commit, push
echo ""
echo "📦 Ajout des fichiers…"
git add -A

echo "💾 Commit…"
git commit -m "$MSG"

echo "🚀 Push vers GitHub…"
git push origin main

echo ""
echo "✅ Déployé !"
echo "   URL : https://i-immersion.github.io/lumiia-reda-spin/"
echo ""
echo "(GitHub Pages met 30s à 2min à propager)"
echo ""
read -p "Appuie sur Entrée pour fermer…"
