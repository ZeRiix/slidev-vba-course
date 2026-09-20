<script setup lang="ts">
import { useSlideAsset } from "../composables/useSlideAsset";

const props = withDefaults(
	defineProps<{
		src?: string;
		alt?: string;
		placeholder?: string;
		fit?: "contain" | "cover";
	}>(),
	{
		alt: "",
		placeholder: "Capture à ajouter.",
		fit: "contain",
	},
);

const image = useSlideAsset(() => props.src);
</script>

<template>
	<figure class="course-inline-image">
		<img
			v-if="image"
			class="course-inline-image__asset"
			:class="fit === 'cover' ? 'course-inline-image__asset--cover' : ''"
			:src="image"
			:alt="alt"
		/>

		<div
			v-else
			class="course-inline-image__placeholder"
		>
			{{ placeholder }}
		</div>
	</figure>
</template>

<style scoped>
.course-inline-image {
	margin: 14px 0 0;
}

.course-inline-image__asset {
	display: block;
	width: 100%;
	max-height: 82px;
	object-fit: contain;
	object-position: left center;
}

.course-inline-image__asset--cover {
	object-fit: cover;
}

.course-inline-image__placeholder {
	border: 1px dashed rgba(var(--color-primary-rgb), 0.45);
	border-radius: 6px;
	background: rgba(var(--color-primary-rgb), 0.08);
	padding: 10px 12px;
	color: var(--color-muted);
	font-size: 0.74rem;
	line-height: 1.35;
}
</style>
