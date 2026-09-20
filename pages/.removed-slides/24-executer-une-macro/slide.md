---
layout: TheoryContentLayout
kicker: Excel
title: Exécuter une macro
slide_info: false
---

<div class="macro-run-grid">

<div class="macro-run-card">
<strong>Depuis Excel</strong>
<span>Développeur > Macros</span>
<small>Choisir une <code>Sub</code>, puis exécuter.</small>
</div>

<div class="macro-run-card">
<strong>Depuis le VBE</strong>
<span><code>F5</code> ou bouton Run</span>
<small>Le curseur doit être dans la macro.</small>
</div>

<div class="macro-run-card">
<strong>Depuis la feuille</strong>
<span>Bouton ou forme</span>
<small>Affecter une macro à un élément visuel.</small>
</div>

<div class="macro-run-card">
<strong>Par raccourci</strong>
<span>Raccourci configuré</span>
<small>Utile pour une action fréquente.</small>
</div>

<div class="macro-run-card">
<strong>Au clavier</strong>
<span><code>Alt + F8</code>, <code>Alt + F11</code></span>
<small>Accès rapide aux macros ou au VBE.</small>
</div>

<div class="macro-run-card macro-run-card--warning">
<strong>Automatiquement</strong>
<span>Événement Excel</span>
<small><code>Workbook_Open</code>, <code>Worksheet_Change</code>, etc.</small>
</div>

</div>

<style scoped>
.macro-run-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 18px;
  margin-top: 20px;
}

.macro-run-card {
  display: flex;
  min-height: 132px;
  flex-direction: column;
  justify-content: space-between;
  padding: 18px;
  border: 1px solid rgba(var(--color-primary-rgb), 0.18);
  border-radius: 8px;
  background: rgba(var(--color-surface-rgb), 0.82);
}

.macro-run-card strong {
  color: rgb(var(--color-primary-rgb));
  font-size: 0.9rem;
  text-transform: uppercase;
}

.macro-run-card span {
  color: var(--color-text);
  font-size: 1.15rem;
  font-weight: 700;
}

.macro-run-card small {
  color: var(--color-muted);
  font-size: 0.82rem;
  line-height: 1.35;
}

.macro-run-card--warning {
  border-color: rgba(var(--color-primary-rgb), 0.42);
}
</style>

<!--
Notes formateur :

Objectif de la slide : inventorier les points d'entrée. Ne pas tout détailler, juste montrer qu'une macro peut être déclenchée de plusieurs façons.

Précisions utiles :
- Windows : Alt+F8 ouvre la boîte Macros, Alt+F11 ouvre le VBE.
- Mac : Microsoft documente Option+F11 pour ouvrir Visual Basic. Selon le clavier et les réglages macOS, Fn peut être nécessaire.
- Un raccourci de macro doit être défini : options de macro ou `Application.OnKey`.
- Les événements automatiques sont puissants, mais ils rendent le débogage plus difficile.

Point à dire à l'oral : pour le cours, on utilisera surtout le lancement depuis le VBE, la fenêtre Macros et les boutons/formes sur la feuille.
-->
