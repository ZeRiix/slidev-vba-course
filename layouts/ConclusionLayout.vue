<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface ConclusionFrontmatter {
	kicker?: string;
	title?: string;
	subtitle?: string;
	footer?: string;
}

const frontmatter = useFrontmatter<ConclusionFrontmatter>();
</script>

<template>
	<section class="course-slide course-end">
		<span class="course-kicker">{{ frontmatter.kicker || 'End' }}</span>

		<h1>{{ frontmatter.title || 'Questions ?' }}</h1>

		<p v-if="frontmatter.subtitle">
			{{ frontmatter.subtitle }}
		</p>

		<footer v-if="frontmatter.footer">
			{{ frontmatter.footer }}
		</footer>
	</section>
</template>
