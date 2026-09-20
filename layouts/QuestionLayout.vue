<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface QuestionFrontmatter {
	kicker?: string;
	title?: string;
	subtitle?: string;
}

const frontmatter = useFrontmatter<QuestionFrontmatter>();
</script>

<template>
	<section class="course-slide course-question course-light">
		<main class="course-question__content">
			<span class="course-kicker">{{ frontmatter.kicker || 'Question' }}</span>

			<h1>{{ frontmatter.title }}</h1>

			<p v-if="frontmatter.subtitle">
				{{ frontmatter.subtitle }}
			</p>
		</main>
	</section>
</template>
