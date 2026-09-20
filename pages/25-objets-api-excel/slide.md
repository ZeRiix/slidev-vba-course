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
Notes formateur :

Commencer par la définition générale : une API est une interface fournie par un logiciel, une bibliothèque ou un système pour permettre à du code d'interagir avec lui.

Dans VBA, Office expose des API qui donnent accès aux éléments manipulables d'Excel, Word, Outlook, etc. Excel expose par exemple des classeurs, des feuilles, des cellules, des tableaux, des graphiques, des TCD ou des formes.

Un objet est une valeur qui représente quelque chose que le programme peut manipuler. L'objet regroupe généralement :
- des propriétés : lire ou modifier un état (`Value`, `Name`, `Font.Bold`, `Interior.Color`) ;
- des méthodes : demander une action (`ClearContents`, `Copy`, `Select`, `RefreshTable`).

Rester simple : on ne parle pas de définition de classes, de constructeurs ou de création de nouveaux types d'objets. Ici, on manipule les objets fournis par l'API Excel.

Phrase utile à l'oral : VBA n'invente pas Excel, il utilise les points d'entrée qu'Excel met à disposition pour lire, modifier ou déclencher des actions.

Point de vigilance : `Range("A1").Value = "OK"` modifie une propriété ; `Range("A1").ClearContents` appelle une méthode.
-->
