<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface MonacoFrontmatter {
	kicker?: string;
	title?: string;
	instructions?: string;
	mode?: "single" | "tabs";
}

const frontmatter = useFrontmatter<MonacoFrontmatter>();
</script>

<template>
	<section class="course-slide course-monaco course-dark">
		<header class="course-header">
			<span class="course-kicker">
				{{ frontmatter.kicker || (frontmatter.mode === 'tabs' ? 'Multi-file Monaco' : 'Live Monaco') }}
			</span>

			<h1>{{ frontmatter.title }}</h1>

			<p v-if="frontmatter.instructions">
				{{ frontmatter.instructions }}
			</p>
		</header>

		<div class="course-monaco__body">
			<slot />
		</div>
	</section>
</template>
