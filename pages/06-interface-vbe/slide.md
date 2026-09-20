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
Notes formateur :

Faire lire la capture de gauche à droite, en suivant les couleurs.

À présenter :
- explorateur de projet : liste les classeurs ouverts et leurs objets VBA ;
- zone de code : endroit où l'on écrit les procédures ;
- fenêtre Propriétés : utile plus tard, surtout avec les feuilles et formulaires ;
- barre d'outils : accès rapide aux actions courantes, notamment exécuter/stopper ;
- fenêtre Exécution : affiche les messages de debug avec Debug.Print.

L'objectif n'est pas de connaître tous les menus, mais de retrouver rapidement où écrire, où lancer et où vérifier.
-->
