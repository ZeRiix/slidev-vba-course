<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";
import { useSlideAsset } from "../composables/useSlideAsset";

export interface InterfaceCaptureFrontmatter {
	kicker?: string;
	title?: string;
	image?: string;
	imageAlt?: string;
	imageCaption?: string;
	imageFit?: "contain" | "cover";
	placeholder?: string;
}

const frontmatter = useFrontmatter<InterfaceCaptureFrontmatter>();
const image = useSlideAsset(() => frontmatter.value.image);
</script>

<template>
	<section class="course-slide course-capture course-light">
		<header class="course-header">
			<span class="course-kicker">{{ frontmatter.kicker || 'Interface' }}</span>

			<h1>{{ frontmatter.title }}</h1>
		</header>

		<figure class="course-capture__figure">
			<img
				v-if="image"
				class="course-capture__image"
				:class="frontmatter.imageFit === 'cover' ? 'course-capture__image--cover' : ''"
				:src="image"
				:alt="frontmatter.imageAlt || ''"
			/>

			<div
				v-else
				class="course-capture__placeholder"
			>
				<span>Screenshot to add</span>

				<p>{{ frontmatter.placeholder || 'Add a widescreen screenshot of the interface.' }}</p>
			</div>

			<figcaption v-if="frontmatter.imageCaption">
				{{ frontmatter.imageCaption }}
			</figcaption>
		</figure>

		<footer class="course-capture__notes">
			<slot />
		</footer>
	</section>
</template>
