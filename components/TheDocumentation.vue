<script setup lang="ts">
withDefaults(defineProps<{
	href: string;
	label?: string;
}>(), {
	label: "Documentation",
});
</script>

<template>
	<a
		class="course-documentation"
		:href="href"
		target="_blank"
		rel="noreferrer"
	>
		<span
			class="course-documentation__icon"
			aria-hidden="true"
		>
			<svg
				viewBox="0 0 24 24"
				role="img"
			>
				<path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20" />

				<path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2Z" />
			</svg>
		</span>

		<span>{{ label }}</span>
	</a>
</template>
