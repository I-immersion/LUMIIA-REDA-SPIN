// ════════════════════════════════════════════════
// AJOUT AU ROADMAP FIREBASE — LUMIIA REDA SPIN
// ════════════════════════════════════════════════
// Ouvre n'importe quelle page LUMIIA connectée
// (Workspace, Trésorerie, etc.) puis colle ce code
// dans la console DevTools (F12 → Console).
// ════════════════════════════════════════════════

(async () => {
  const {getDatabase, ref, get, update, set} = await import('https://www.gstatic.com/firebasejs/10.12.0/firebase-database.js');
  const {getApp} = await import('https://www.gstatic.com/firebasejs/10.12.0/firebase-app.js');
  const db = getDatabase(getApp());

  // 1. Lire le roadmap actuel pour voir la structure
  const snap = await get(ref(db, 'roadmap'));
  const roadmap = snap.val() || {};
  console.log('📋 Roadmap actuel :', Object.keys(roadmap));

  // 2. Définir le projet REDA SPIN
  const projet = {
    nom: 'LUMIIA REDA SPIN',
    description: 'Roue de la fortune — salon Réseau Entreprendre Drôme-Ardèche',
    repo: 'https://github.com/i-immersion/lumiia-reda-spin',
    url: 'https://i-immersion.github.io/lumiia-reda-spin/',
    firebasePath: 'redaspin',
    statut: 'en_cours',
    priorite: 'haute',
    createdAt: Date.now(),
    tasks: {
      t1: {
        titre: 'Définir les 6 mini-jeux',
        description: 'Idées de jeux animés par Emmanuel pendant la soirée, durée 3-5 min max',
        status: 'todo',
        priorite: 'haute',
      },
      t2: {
        titre: 'App QR joueurs séparée',
        description: 'App mobile dédiée pour les joueurs, accessible via QR code, max 8 connectés simultanément',
        status: 'todo',
        priorite: 'moyenne',
      },
      t3: {
        titre: 'Test projection 1080p en conditions réelles',
        description: 'Valider la roue, la liste joueurs, le résultat sur grand écran avant le salon',
        status: 'todo',
        priorite: 'moyenne',
      },
      t4: {
        titre: 'Export CSV des leads',
        description: 'Permettre l\'export du fichier client (prénom, email, entreprise) après le salon',
        status: 'todo',
        priorite: 'haute',
      },
      t5: {
        titre: 'Définir le grand lot de fin de soirée',
        description: 'Team building 20 pers ~1000€ — mécanique de tirage final',
        status: 'todo',
        priorite: 'moyenne',
      },
    },
  };

  // 3. Écrire dans Firebase
  await set(ref(db, 'roadmap/redaspin'), projet);

  console.log('✅ Projet ajouté au roadmap !');
  console.log('Vérifier sur :', 'https://i-immersion.github.io/lumiia-workspace/');
  console.log('Onglet Roadmap → projet "redaspin"');
})();
