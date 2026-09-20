<script setup lang="ts">
withDefaults(defineProps<{
	title?: string;
	open?: boolean;
}>(), {
	title: "Contenu",
	open: true,
});
</script>

<template>
	<details
		class="course-fold"
		:open="open"
	>
		<summary>
			<span>{{ title }}</span>
		</summary>

		<div class="course-fold__content">
			<slot />
		</div>
	</details>
</template>
