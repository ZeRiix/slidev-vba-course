<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface SectionFrontmatter {
	kicker?: string;
	part?: string;
	title?: string;
	subtitle?: string;
	variant?: "dark" | "primary";
}

const frontmatter = useFrontmatter<SectionFrontmatter>();
</script>

<template>
	<section
		class="course-slide course-section"
		:class="`course-section--${frontmatter.variant || 'dark'}`"
	>
		<div class="course-section__number">
			{{ frontmatter.part || '01' }}
		</div>

		<div>
			<span class="course-kicker">{{ frontmatter.kicker || 'Section' }}</span>

			<h1>{{ frontmatter.title }}</h1>

			<p v-if="frontmatter.subtitle">
				{{ frontmatter.subtitle }}
			</p>
		</div>
	</section>
</template>
