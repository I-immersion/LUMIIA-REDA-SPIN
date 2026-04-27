# LUMIIA REDA SPIN

Web app pour le salon Réseau Entreprendre Drôme-Ardèche.
Roue de la fortune avec mini-jeux animés par Emmanuel.

## Vues

- **Projection** (1080p plein écran) : roue + liste joueurs + résultat
- **Joueurs** (preview mobile portrait) : aperçu de la future app QR

## Stack

- HTML/CSS/JS vanilla, single file
- Firebase Realtime DB (projet `lumiia-live`)
- Path : `redaspin/`
- Hébergement : GitHub Pages (`i-immersion/lumiia-reda-spin`)

## Roue — 8 cases

- 6 mini-jeux (à définir)
- 1 cadeau direct
- 1 gage

## Déploiement

```bash
./deployer.command
```

## URL prod

https://i-immersion.github.io/lumiia-reda-spin/

## Firebase structure

```
redaspin/
├── joueurs/         # liste participants
├── state/           # état spin courant
│   ├── spinning
│   ├── result       # index segment gagnant
│   └── timestamp
└── history/         # historique des tirages
```

## Settings

Accessible via bouton ⚙ dans la topbar :
- Édition des 8 cases (nom, emoji, type)
- Durée chrono par défaut
- Texte cadeau / gage
- Toggles : overlay, confettis, sons, joueurs peuvent lancer
- Gestion participants
- Path Firebase
