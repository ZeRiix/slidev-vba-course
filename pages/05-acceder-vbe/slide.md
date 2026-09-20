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
Notes formateur :

Le VBE signifie Visual Basic Editor. C'est l'environnement dans lequel on écrit, lit et exécute le code VBA attaché à un fichier Office.

Montrer deux accès :
- onglet Développeur > Visual Basic ;
- raccourci Alt + F11.

Insister sur le fait que le VBE n'est pas une application isolée : il est lié au classeur ouvert et au projet VBA associé.

Point sécurité à rappeler rapidement :
- le fichier doit être enregistré en XLSM pour conserver le code VBA ;
- Excel peut bloquer l'exécution des macros ;
- activer les macros uniquement sur un fichier de confiance.
-->
