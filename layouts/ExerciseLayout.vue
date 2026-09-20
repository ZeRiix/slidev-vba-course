<script setup lang="ts">
import TheDuration from "../components/TheDuration.vue";
import { useFrontmatter } from "../composables/useFrontmatter";

export interface ExerciseFrontmatter {
	kicker?: string;
	title?: string;
	duration?: string;
	durationLabel?: string;
	level?: string;
}

const frontmatter = useFrontmatter<ExerciseFrontmatter>();
</script>

<template>
	<section class="course-slide course-exercise course-light">
		<header class="course-exercise__header">
			<div>
				<span class="course-kicker">{{ frontmatter.kicker || frontmatter.level || 'Exercise' }}</span>

				<h1>{{ frontmatter.title }}</h1>
			</div>

			<TheDuration
				:label="frontmatter.durationLabel"
				:value="frontmatter.duration || '20 min'"
			/>
		</header>

		<article class="course-prose course-exercise__content">
			<slot />
		</article>
	</section>
</template>
