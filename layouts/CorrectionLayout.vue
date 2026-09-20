<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface CorrectionFrontmatter {
	kicker?: string;
	title?: string;
	caption?: string;
}

const frontmatter = useFrontmatter<CorrectionFrontmatter>();
</script>

<template>
	<section class="course-slide course-correction course-dark">
		<header class="course-header">
			<span class="course-kicker">{{ frontmatter.kicker || 'Correction' }}</span>

			<h1>{{ frontmatter.title }}</h1>

			<p v-if="frontmatter.caption">
				{{ frontmatter.caption }}
			</p>
		</header>

		<article class="course-prose">
			<slot />
		</article>
	</section>
</template>
