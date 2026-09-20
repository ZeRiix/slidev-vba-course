---
layout: TheoryContentLayout
kicker: Excel
title: Excel visible, noms VBA
slide_info: false
---

<div class="excel-object-map">

<div class="excel-object-list">

- `Workbook` : le classeur.
- `Worksheet` : une feuille.
- `Range` : une cellule ou une plage.
- `Cells(row, column)` : une cellule par coordonnées.

</div>

<div class="excel-object-schema" aria-label="Modèle objet Excel simplifié">
  <div class="excel-object-box excel-object-box--workbook">
    <span>Classeur Excel</span>
    <code>Workbook</code>
  </div>

  <div class="excel-object-arrow">↓</div>

  <div class="excel-object-box excel-object-box--worksheet">
    <span>Feuille "Data"</span>
    <code>Worksheet</code>
  </div>

  <div class="excel-object-arrow">↓</div>

  <div class="excel-object-row">
    <div class="excel-object-box excel-object-box--range">
      <span>Plage A1:C10</span>
      <code>Range("A1:C10")</code>
    </div>
    <div class="excel-object-box excel-object-box--cells">
      <span>Cellule B2</span>
      <code>Cells(2, 2)</code>
    </div>
  </div>
</div>

</div>

<style scoped>
.excel-object-map {
  display: grid;
  grid-template-columns: 0.9fr 1.25fr;
  gap: 42px;
  align-items: center;
  margin-top: 22px;
}

.excel-object-list {
  font-size: 1.08rem;
}

.excel-object-schema {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 10px;
}

.excel-object-row {
  display: grid;
  width: 100%;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}

.excel-object-box {
  display: flex;
  min-height: 86px;
  flex-direction: column;
  justify-content: center;
  gap: 8px;
  padding: 16px 18px;
  border: 1px solid rgba(var(--color-primary-rgb), 0.24);
  border-radius: 8px;
  background: rgba(var(--color-surface-rgb), 0.86);
  text-align: center;
}

.excel-object-box span {
  color: var(--color-text);
  font-size: 1.02rem;
  font-weight: 700;
}

.excel-object-box code {
  color: rgb(var(--color-primary-rgb));
  font-size: 0.9rem;
}

.excel-object-box--workbook {
  width: 86%;
}

.excel-object-box--worksheet {
  width: 72%;
}

.excel-object-arrow {
  color: rgba(var(--color-primary-rgb), 0.72);
  font-size: 1.6rem;
  font-weight: 800;
  line-height: 1;
}
</style>

<!--
Notes formateur :

Commencer par l'explication simple : Excel donne des noms aux éléments visibles du fichier pour que le code puisse les viser.

Ne pas encore détailler la programmation objet ici. Cette slide sert juste à créer le lien visuel : classeur > feuille > cellule/plage.

Point important : `Range("B2")` et `Cells(2, 2)` peuvent désigner la même cellule, mais pas avec la même manière de l'écrire.
-->
