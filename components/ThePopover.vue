<script setup lang="ts">
import { computed, onBeforeUnmount, onMounted, ref } from "vue";

const props = withDefaults(defineProps<{
	label?: string;
	title?: string;
	icon?: string;
}>(), {
	icon: "i",
	label: undefined,
	title: undefined,
});

const open = ref(false);
const dialogLabel = computed(() => props.title || props.label || "Information");

function openDialog() {
	open.value = true;
}

function closeDialog() {
	open.value = false;
}

function onKeydown(event: KeyboardEvent) {
	if (!open.value) {
		return;
	}

	if (["ArrowLeft", "ArrowRight", "ArrowUp", "ArrowDown", "PageUp", "PageDown"].includes(event.key)) {
		event.preventDefault();
		event.stopPropagation();
		closeDialog();
		return;
	}

	if (event.key === "Escape") {
		event.preventDefault();
		event.stopPropagation();
		closeDialog();
	}
}

onMounted(() => {
	window.addEventListener("keydown", onKeydown, { capture: true });
});

onBeforeUnmount(() => {
	window.removeEventListener("keydown", onKeydown, { capture: true });
});
</script>

<template>
	<span class="course-popover-trigger">
		<button
			class="course-popover-trigger__button"
			:class="!props.label ? 'course-popover-trigger__button--icon-only' : ''"
			type="button"
			:aria-label="dialogLabel"
			:title="dialogLabel"
			@click="openDialog"
		>
			<span class="course-popover-trigger__icon">{{ props.icon }}</span>

			<span v-if="props.label">{{ props.label }}</span>
		</button>
	</span>

	<Teleport to="body">
		<div
			v-if="open"
			class="course-popover"
			role="dialog"
			aria-modal="true"
			:aria-label="dialogLabel"
		>
			<button
				class="course-popover__backdrop"
				type="button"
				aria-label="Fermer"
				@click="closeDialog"
			/>

			<section class="course-popover__panel">
				<header class="course-popover__header">
					<div>
						<span class="course-popover__eyebrow">Repere</span>

						<h2>{{ dialogLabel }}</h2>
					</div>

					<button
						class="course-popover__close"
						type="button"
						aria-label="Fermer"
						@click="closeDialog"
					>
						×
					</button>
				</header>

				<div class="course-popover__content">
					<slot />
				</div>
			</section>
		</div>
	</Teleport>
</template>
