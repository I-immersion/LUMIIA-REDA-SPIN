# CHANGELOG — LUMIIA REDA SPIN

## v1.0 — 26 avril 2026

### Initial release
- Structure 2 onglets : projection 1080p + preview joueurs mobile
- Roue canvas 8 cases avec animation easeOutCubic
- 3 types de cases : jeu / cadeau / gage
- Synchronisation Firebase Realtime DB sur path `redaspin`
- Settings panel complet :
  - Édition des 8 cases (nom, emoji, type)
  - Paramètres jeu (durée chrono, textes cadeau/gage)
  - Toggles affichage (overlay, confettis, sons, spin par joueurs)
  - Gestion participants
  - Path Firebase configurable
- Overlay plein écran au résultat (jeu/cadeau/gage)
- Confettis au cadeau
- Chrono dégressif avec son urgence
- Historique des tirages (12 derniers)
- SFX Web Audio API (ticks, ding, buzzer, bip)
- Reset session sécurisé

### À implémenter (v1.1)
- Définir les 6 mini-jeux (placeholders actuels)
- Connecter app QR joueurs séparée
- Notification du gagnant sur les téléphones
- Export CSV des participants
