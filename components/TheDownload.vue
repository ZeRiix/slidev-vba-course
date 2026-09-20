<script setup lang="ts">
import { useSlideAsset } from "../composables/useSlideAsset";

const props = withDefaults(defineProps<{
	href: string;
	label?: string;
}>(), {
	label: "Download",
});

const url = useSlideAsset(() => props.href);
</script>

<template>
	<a
		class="course-download"
		:href="url"
		download
	>
		<span class="course-download__icon">↓</span>

		<span>{{ label }}</span>
	</a>
</template>
