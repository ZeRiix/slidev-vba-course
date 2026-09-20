<script setup lang="ts">
import { useFrontmatter } from "../composables/useFrontmatter";

export interface VbaCoverFrontmatter {
	kicker?: string;
	title?: string;
	subtitle?: string;
	eyebrow?: string;
	codeLines?: string[];
	trainer?: string;
	institution?: string;
	footerNote?: string;
}

const frontmatter = useFrontmatter<VbaCoverFrontmatter>();
</script>

<template>
	<section class="course-slide vba-cover">
		<header class="vba-cover__top">
			<span class="course-kicker">{{ frontmatter.kicker || 'Cours VBA' }}</span>

			<span class="vba-cover__level">{{ frontmatter.institution }}</span>
		</header>

		<main class="vba-cover__body">
			<div class="vba-cover__title">
				<span class="vba-cover__eyebrow">{{ frontmatter.eyebrow }}</span>

				<h1>{{ frontmatter.title }}</h1>

				<p>{{ frontmatter.subtitle }}</p>
			</div>

			<div
				class="vba-cover__code"
				aria-hidden="true"
			>
				<span
					v-for="line in frontmatter.codeLines"
					:key="line"
				>
					{{ line }}
				</span>
			</div>
		</main>

		<footer class="vba-cover__footer">
			<span>{{ frontmatter.trainer }}</span>

			<span>{{ frontmatter.footerNote }}</span>
		</footer>
	</section>
</template>

<style scoped>
.vba-cover {
	position: relative;
	isolation: isolate;
	justify-content: space-between;
	overflow: hidden;
	background:
		linear-gradient(90deg, rgba(var(--color-primary-rgb), 0.2) 0 1px, transparent 1px 100%),
		linear-gradient(0deg, rgba(var(--color-primary-rgb), 0.14) 0 1px, transparent 1px 100%),
		var(--color-inverse);
	background-size: 54px 54px;
	color: var(--color-surface);
}

.vba-cover::before {
	content: "";
	position: absolute;
	z-index: -1;
	inset: 0 auto 0 0;
	width: 30%;
	border-right: 1px solid rgba(var(--color-primary-rgb), 0.42);
	background: rgba(var(--color-primary-rgb), 0.16);
}

.vba-cover__top,
.vba-cover__footer {
	display: flex;
	align-items: center;
	justify-content: space-between;
	gap: 24px;
}

.vba-cover__level,
.vba-cover__footer {
	color: var(--color-border);
	font-size: 0.9rem;
}

.vba-cover__body {
	display: grid;
	grid-template-columns: minmax(0, 1fr) 360px;
	gap: 54px;
	align-items: end;
}

.vba-cover__title {
	max-width: 790px;
}

.vba-cover__eyebrow {
	display: inline-block;
	margin-bottom: 18px;
	color: var(--color-primary);
	font-family: var(--font-mono);
	font-size: 0.82rem;
	font-weight: 800;
	text-transform: uppercase;
}

.vba-cover h1 {
	margin: 0;
	max-width: 780px;
	font-size: 4.9rem;
	font-weight: 850;
	line-height: 0.96;
	letter-spacing: 0;
}

.vba-cover p {
	margin: 22px 0 0;
	max-width: 690px;
	color: var(--color-border);
	font-size: 1.22rem;
	line-height: 1.32;
}

.vba-cover__code {
	display: grid;
	gap: 10px;
	border-left: var(--accent-border-width) solid var(--color-primary);
	background: rgba(var(--color-surface-rgb), 0.08);
	padding: 22px;
	color: var(--color-border);
	font-family: var(--font-mono);
	font-size: 0.8rem;
	line-height: 1.28;
	white-space: pre;
}

.vba-cover__code span:first-child,
.vba-cover__code span:last-child {
	color: var(--color-primary);
	font-weight: 800;
}

.vba-cover__footer {
	border-top: 1px solid rgba(var(--color-surface-rgb), 0.18);
	padding-top: 22px;
}
</style>
