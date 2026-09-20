<script setup lang="ts">
import { computed, useSlots } from "vue";
import { useFrontmatter } from "../composables/useFrontmatter";

export interface StaticCodeFrontmatter {
	kicker?: string;
	title?: string;
	caption?: string;
	variant?: "light" | "dark";
}

const frontmatter = useFrontmatter<StaticCodeFrontmatter>();
const slots = useSlots();
const hasNote = computed(() => Boolean(slots.note));
</script>

<template>
	<section
		class="course-slide course-code"
		:class="frontmatter.variant === 'light' ? 'course-light' : 'course-dark'"
	>
		<header class="course-header">
			<span class="course-kicker">{{ frontmatter.kicker || 'Static code' }}</span>

			<h1>{{ frontmatter.title }}</h1>

			<p v-if="frontmatter.caption">
				{{ frontmatter.caption }}
			</p>
		</header>

		<div
			class="course-code__grid"
			:class="!hasNote ? 'course-code__grid--single' : ''"
		>
			<div class="course-code__block">
				<slot />
			</div>

			<aside
				v-if="hasNote"
				class="course-code__note"
			>
				<slot name="note" />
			</aside>
		</div>
	</section>
</template>
