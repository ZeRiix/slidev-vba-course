<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";
import { useSlideAsset } from "../composables/useSlideAsset";

export interface CoverFrontmatter {
	logo?: string;
	kicker?: string;
	title?: string;
	subtitle?: string;
	trainer?: string;
	institution?: string;
}

const frontmatter = useFrontmatter<CoverFrontmatter>();
const logo = useSlideAsset(() => frontmatter.value.logo || "/assets/logo.svg");
</script>

<template>
	<section class="course-slide course-cover">
		<div class="course-cover__top">
			<img
				class="course-cover__logo"
				:src="logo"
			/>

			<span class="course-kicker">{{ frontmatter.kicker || 'Programming' }}</span>
		</div>

		<main class="course-cover__main">
			<h1>{{ frontmatter.title }}</h1>

			<p>{{ frontmatter.subtitle }}</p>
		</main>

		<footer class="course-cover__footer">
			<span>{{ frontmatter.trainer || 'Trainer name' }}</span>

			<span>{{ frontmatter.institution || 'Institution' }}</span>
		</footer>
	</section>
</template>
