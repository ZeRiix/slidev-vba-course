<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface TheoryFrontmatter {
	title?: string;
	kicker?: string;
	variant?: "light" | "dark";
}

const frontmatter = useFrontmatter<TheoryFrontmatter>();
</script>

<template>
	<section
		class="course-slide course-theory"
		:class="frontmatter.variant === 'dark' ? 'course-dark' : 'course-light'"
	>
		<header class="course-header">
			<span class="course-kicker">{{ frontmatter.kicker || 'Concepts' }}</span>

			<h1>{{ frontmatter.title }}</h1>
		</header>

		<article class="course-prose">
			<slot />
		</article>
	</section>
</template>
