---
layout: InterfaceCaptureLayout
kicker: VBE
title: Ouvrir l'éditeur VBA
placeholder: Capture Excel avec l'onglet Développeur visible, le bouton Visual Basic et/ou le raccourci Alt + F11 mis en évidence.
image: ./image.png
slide_info: false
---

<script setup>
import VbaSecurityTutorial from './VbaSecurityTutorial.vue'
</script>

<VbaSecurityTutorial />

- Onglet **Développeur**
- Raccourci **Alt + F11**

<!--
Mémo :

**VBE** signifie **Visual Basic Editor**.

C'est l'environnement dans lequel on écrit, lit, exécute et débogue le code VBA attaché à un fichier Office.

Le VBE n'est pas un logiciel séparé d'Excel dans lequel le code vivrait tout seul : quand un classeur est ouvert, son **projet VBA** apparaît dans l'éditeur.

Conséquence pratique : un classeur qui contient du VBA doit être enregistré dans un format compatible macros, par exemple `.xlsm`. Un `.xlsx` ne conserve pas le projet VBA.

Excel peut bloquer les macros pour des raisons de sécurité. Activer les macros revient à autoriser du code à s'exécuter dans le fichier : on ne le fait que pour un document de confiance.
-->
