<script setup lang="ts">
withDefaults(defineProps<{
	title?: string;
}>(), {
	title: "Astuce",
});
</script>

<template>
	<aside class="course-hint">
		<div class="course-hint__header">
			<span
				class="course-hint__icon"
				aria-hidden="true"
			>
				<svg
					viewBox="0 0 24 24"
					role="img"
				>
					<path d="M9 21h6" />

					<path d="M10 17h4" />

					<path d="M8.6 14.4a6 6 0 1 1 6.8 0c-.9.6-1.4 1.5-1.4 2.6h-4c0-1.1-.5-2-1.4-2.6Z" />
				</svg>
			</span>

			<strong>{{ title }}</strong>
		</div>

		<div>
			<slot />
		</div>
	</aside>
</template>
