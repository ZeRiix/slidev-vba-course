<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface SummaryFrontmatter {
	kicker?: string;
	title?: string;
	intro?: string;
}

const frontmatter = useFrontmatter<SummaryFrontmatter>();
</script>

<template>
	<section class="course-slide course-light course-toc">
		<header class="course-header">
			<span class="course-kicker">{{ frontmatter.kicker || 'Outline' }}</span>

			<h1>{{ frontmatter.title || 'Summary' }}</h1>

			<p v-if="frontmatter.intro">
				{{ frontmatter.intro }}
			</p>
		</header>

		<div class="course-toc__content">
			<slot />
		</div>
	</section>
</template>
