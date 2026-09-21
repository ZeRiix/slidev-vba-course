---
layout: TheoryContentLayout
kicker: Excel
title: Objet, propriété, méthode
slide_info: false
---

<div class="excel-api-grid">

<div class="excel-api-card">
<strong>Objet</strong>
<span>Ce que l'on manipule</span>
<code>Range("A1")</code>
</div>

<div class="excel-api-card">
<strong>Propriété</strong>
<span>Une information ou un réglage</span>
<code>.Value</code>
</div>

<div class="excel-api-card">
<strong>Méthode</strong>
<span>Une action à exécuter</span>
<code>.ClearContents</code>
</div>

</div>

```vb
Sub UpdateCell()
    Range("A1").Value = "OK"
    Range("A1").Font.Bold = True
    Range("A1").ClearContents
End Sub
```

<style scoped>
.excel-api-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 18px;
  margin: 18px 0 20px;
}

.excel-api-card {
  display: flex;
  min-height: 116px;
  flex-direction: column;
  justify-content: space-between;
  padding: 16px;
  border: 1px solid rgba(var(--color-primary-rgb), 0.22);
  border-radius: 8px;
  background: rgba(var(--color-surface-rgb), 0.86);
}

.excel-api-card strong {
  color: rgb(var(--color-primary-rgb));
  background: none;
  font-size: 0.9rem;
  text-transform: uppercase;
}

.excel-api-card span {
  color: var(--color-text);
  font-size: 1rem;
  font-weight: 700;
}

.excel-api-card code {
  color: rgb(var(--color-primary-rgb));
  font-size: 0.92rem;
}
</style>

<!--
Mémo :

Une **API** est une interface fournie par un logiciel pour permettre à du code d'utiliser ses fonctionnalités.

Excel expose des objets comme les classeurs, feuilles, plages, tableaux, graphiques, TCD ou formes. VBA ne recrée pas Excel : il utilise les points d'entrée qu'Excel met à disposition.

Un **objet** représente quelque chose que le programme peut manipuler.

Une **propriété** lit ou modifie un état :

```vb
Range("A1").Value = "OK"
Range("A1").Font.Bold = True
```

Une **méthode** déclenche une action :

```vb
Range("A1").ClearContents
```

Repère utile : `objet.propriété` décrit souvent un état ; `objet.méthode(...)` demande souvent une action.
-->
