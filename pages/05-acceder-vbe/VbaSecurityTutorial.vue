<script setup lang="ts">
import { computed, ref } from "vue";
import ThePopover from "../../components/ThePopover.vue";
import { useSlideAsset } from "../../composables/useSlideAsset";

const steps = [
	{
		title: "Ajouter l'onglet 'Développeur'",
		text: "L'onglet 'Développeur' est désactivé par défaut",
		image: "01-activate-developer.gif",
		placeholder: "Préférences > Ruban > Développeur coché",
	},
	{
		title: "Enregistrer en XLSM",
		text: "Un fichier XLSX ne conserve pas le code VBA.",
		image: "02-save-xlsm.png",
		placeholder: "Enregistrer sous > Classeur Excel prenant en charge les macros (*.xlsm).",
	},
	{
		title: "Activer le contenu",
		text: "Excel bloque souvent les macros à l'ouverture.",
		image: "03-enable-content.gif",
		placeholder: "Bandeau de sécurité Excel avec le bouton Activer le contenu.",
	},
] as const;

const activeIndex = ref(0);
const activeStep = computed(() => steps[activeIndex.value] ?? steps[0]);
const activeImage = useSlideAsset(() => activeStep.value.image);

function selectStep(index: number) {
	activeIndex.value = index;
}
</script>

<template>
	<ThePopover title="Avant d'exécuter du VBA">
		<div class="vba-security-tutorial">
			<div class="vba-security-tutorial__steps" aria-label="Etapes du tutoriel">
				<button
					v-for="(step, index) in steps"
					:key="step.title"
					class="vba-security-tutorial__step"
					:class="index === activeIndex ? 'vba-security-tutorial__step--active' : ''"
					type="button"
					@click="selectStep(index)"
				>
					<span>{{ String(index + 1).padStart(2, "0") }}</span>
					{{ step.title }}
				</button>
			</div>

			<figure class="vba-security-tutorial__figure">
				<img
					v-if="activeImage"
					class="vba-security-tutorial__image"
					:src="activeImage"
					:alt="activeStep.title"
				/>

				<div v-else class="vba-security-tutorial__placeholder">
					<span>{{ activeStep.image }}</span>

					<p>{{ activeStep.placeholder }}</p>
				</div>
			</figure>

			<div class="vba-security-tutorial__caption">
				<h3>{{ activeStep.title }}</h3>

				<p>{{ activeStep.text }}</p>
			</div>
		</div>
	</ThePopover>
</template>

<style scoped>
.vba-security-tutorial {
	display: grid;
	grid-template-rows: auto minmax(0, 1fr) auto;
	gap: 14px;
	min-height: 0;
}

.vba-security-tutorial__steps {
	display: flex;
	flex-wrap: wrap;
	gap: 8px;
}

.vba-security-tutorial__step {
	display: inline-flex;
	cursor: pointer;
	align-items: center;
	gap: 8px;
	border: 1px solid rgba(var(--color-primary-rgb), 0.3);
	border-radius: 6px;
	background: var(--color-surface);
	padding: 8px 10px;
	color: var(--color-text);
	font: inherit;
	font-size: 0.72rem;
	font-weight: 850;
	line-height: 1;
}

.vba-security-tutorial__step span {
	color: var(--color-primary);
	font-family: var(--font-mono);
	font-weight: 900;
}

.vba-security-tutorial__step--active {
	border-color: var(--color-primary);
	background: rgba(var(--color-primary-rgb), 0.1);
}

.vba-security-tutorial__figure {
	display: flex;
	width: 100%;
	height: min(460px, 56vh);
	overflow: hidden;
	align-items: center;
	justify-content: center;
	border: 1px solid rgba(var(--color-primary-rgb), 0.24);
	border-radius: 6px;
	background: #101217;
}

.vba-security-tutorial__image {
	display: block;
	width: 100%;
	height: 100%;
	min-width: 0;
	min-height: 0;
	object-fit: scale-down;
	object-position: center;
}

.vba-security-tutorial__placeholder {
	display: grid;
	width: 100%;
	height: 100%;
	min-height: 0;
	place-items: center;
	align-content: center;
	gap: 10px;
	border: 1px dashed rgba(var(--color-primary-rgb), 0.42);
	background: rgba(var(--color-primary-rgb), 0.06);
	padding: 28px;
	text-align: center;
}

.vba-security-tutorial__placeholder span {
	color: var(--color-inverse);
	font-family: var(--font-mono);
	font-size: 0.82rem;
	font-weight: 900;
	line-height: 1;
}

.vba-security-tutorial__placeholder p {
	max-width: 560px;
	margin: 0;
	color: var(--color-muted);
	font-size: 0.82rem;
	line-height: 1.35;
}

.vba-security-tutorial__caption {
	border-left: var(--accent-border-width) solid var(--color-primary);
	background: var(--color-surface);
	padding: 12px 15px;
}

.vba-security-tutorial__caption h3 {
	margin: 0 0 6px;
	color: var(--color-text);
	font-size: 0.92rem;
	font-weight: 850;
	line-height: 1.12;
}

.vba-security-tutorial__caption p {
	margin: 0;
	color: var(--color-muted);
	font-size: 0.8rem;
	line-height: 1.35;
}
</style>
