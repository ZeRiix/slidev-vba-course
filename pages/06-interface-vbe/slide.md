---
layout: VisualContentLayout
kicker: VBE
title: Lire l'interface du VBE
image: ./image.png
imageSide: right
imageFit: contain
slide_info: false
---

<div class="vbe-interface-legend">

- <span class="vbe-interface-legend__red">Rouge</span> : barre d'outils.
- <span class="vbe-interface-legend__purple">Violet</span> : explorateur de projet.
- <span class="vbe-interface-legend__green">Vert</span> : fenêtre de code.
- <span class="vbe-interface-legend__yellow">Jaune</span> : fenêtre des propriétés.
- <span class="vbe-interface-legend__blue">Bleu</span> : fenêtre Exécution.

</div>

<style scoped>
.vbe-interface-legend {
	display: flex;
	min-height: 100%;
	flex-direction: column;
	justify-content: center;
}

.vbe-interface-legend__red {
	color: #d92d20;
	font-weight: 900;
}

.vbe-interface-legend__purple {
	color: #7a3ff2;
	font-weight: 900;
}

.vbe-interface-legend__green {
	color: #198754;
	font-weight: 900;
}

.vbe-interface-legend__yellow {
	color: #b7791f;
	font-weight: 900;
}

.vbe-interface-legend__blue {
	color: #2563eb;
	font-weight: 900;
}
</style>

<!--
Mémo :

L'Explorateur de projets ne liste pas seulement des fichiers : il montre les projets VBA chargés, leurs objets Excel et leurs modules.

Une macro n'est donc pas stockée dans un unique grand fichier : le code est organisé dans des modules, et certains objets Excel comme les feuilles ou le classeur peuvent aussi contenir du code.

La fenêtre Exécution est surtout utile pendant le développement : `Debug.Print` y affiche des valeurs sans modifier la feuille Excel.

La fenêtre Propriétés devient importante dès qu'on manipule des objets Excel ou des contrôles, car elle expose certains réglages de l'objet sélectionné.

L'Explorateur d'objets sert à chercher les objets disponibles dans VBA et Excel : propriétés, méthodes, constantes, etc.

Il s'ouvre depuis le menu `Affichage > Explorateur d'objets` du VBE. Sous Windows, le raccourci courant est `F2` lorsque le VBE est actif.

L'objectif n'est pas de tout apprendre par coeur, mais de savoir retrouver une API quand on ne connaît pas encore son nom exact.
-->
