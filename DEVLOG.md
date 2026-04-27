# DEVLOG — LUMIIA REDA SPIN

Bugs récurrents, tentatives échouées, décisions techniques avec contexte.

---

## 26 avril 2026 — Création projet

### Décisions techniques

- **Single file** — HTML/CSS/JS vanilla dans un seul `index.html`. Pas de framework, pas de build step. Cohérent avec les autres projets LUMIIA (workspace, v13).
- **Firebase Realtime DB** — Réutilisation du projet `lumiia-live` existant (europe-west1). Path dédié `redaspin/` pour ne pas mélanger avec `v13/` ou `workspace/`.
- **Pas d'auth Firebase** — Le projet est public (salon B2B), les règles DB acceptent les écritures anonymes sur `redaspin/*`. Identique au pattern `v13/`.
- **2 onglets dans le même fichier** — Plutôt que deux fichiers séparés (admin.html / client.html comme v13), choix d'un seul fichier avec onglets pour faciliter le développement et le déploiement. L'app QR joueurs sera un fichier séparé plus tard.
- **Pointer en haut** — Le pointeur de la roue est positionné à 12h (-π/2). La cible doit donc se centrer à -π/2 = `-π/2 - (target*seg + seg/2)`.
- **Easing easeOutCubic** — `1 - Math.pow(1-p, 3.8)` pour un ralentissement naturel. 4500ms total. Reproduit le pattern de v13.
- **Synchronisation roue mini/grande** — Les deux canvas utilisent la même variable globale `wheelAngle` mise à jour à chaque frame.

### Charte graphique LUMIIA
Strictement respectée :
- `--cosmos: #0b0520` (fond)
- `--deep: #05001a` (panels foncés)
- `--cyan: #4dd9e8` (Expériences)
- `--magenta: #d946ef` (Bar)
- `--violet: #a855f7` (Studios)
- `--lime: #b8ff3c` (accent)

JAMAIS d'orange — risque de dérive vers la charte v13 / workspace dont le doré (`#ffd700`) est bien différent.

### Points d'attention pour suite
- Les couleurs des 8 segments sont définies dans `SEGMENTS[].couleur` — ne pas dériver vers de l'orange par mimétisme avec v13.
- Les 6 jeux sont des placeholders — à remplacer ensemble en session.
- Tester le clic sur le centre de la roue (bouton SPIN central) en condition réelle de projection.

### Pas testé / Risques connus
- Jamais testé en projection 1080p en conditions réelles
- Synchronisation Firebase à valider quand l'app QR joueurs sera dispo
- Performance canvas roue à 60fps sur ordi de projection (probablement un Mac / PC moyen)
