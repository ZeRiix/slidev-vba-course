<script setup lang="ts">
withDefaults(
	defineProps<{
		label?: string;
		value: string;
	}>(),
	{
		label: "Estimated duration",
	},
);
</script>

<template>
	<div class="course-duration">
		<span>{{ label }}</span>

		<strong>{{ value }}</strong>
	</div>
</template>
