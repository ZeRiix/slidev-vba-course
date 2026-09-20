<script setup lang="ts">
import { onMounted, onUnmounted } from "vue";

const SCROLL_STEP = 92;
const SCROLLABLE_SELECTOR = [
	".course-code__block",
	".course-monaco__body",
	".course-prose",
	".course-slide",
].join(",");

function isEditableTarget(target: EventTarget | null) {
	if (!(target instanceof HTMLElement)) {
		return false;
	}

	return Boolean(target.closest("input, textarea, select, [contenteditable=\"true\"], .monaco-editor"));
}

function isVisibleInViewport(element: HTMLElement) {
	const rect = element.getBoundingClientRect();

	return rect.width > 0
		&& rect.height > 0
		&& rect.bottom > 0
		&& rect.right > 0
		&& rect.top < window.innerHeight
		&& rect.left < window.innerWidth;
}

function getScrollDirection(key: string) {
	if (key === "ArrowDown") {
		return 1;
	}

	if (key === "ArrowUp") {
		return -1;
	}

	return 0;
}

function findScrollableElement(direction: 1 | -1) {
	const candidates = Array.from(document.querySelectorAll<HTMLElement>(SCROLLABLE_SELECTOR))
		.filter((element) => {
			const hasScrollableContent = element.scrollHeight > element.clientHeight + 2;
			const canScrollDown = direction > 0 && element.scrollTop + element.clientHeight < element.scrollHeight - 2;
			const canScrollUp = direction < 0 && element.scrollTop > 2;

			return isVisibleInViewport(element) && hasScrollableContent && (canScrollDown || canScrollUp);
		});

	return candidates[0];
}

function onKeydown(event: KeyboardEvent) {
	if (isEditableTarget(event.target)) {
		return;
	}

	const direction = getScrollDirection(event.key);

	if (direction === 0) {
		return;
	}

	const scrollableElement = findScrollableElement(direction);

	if (!scrollableElement) {
		return;
	}

	event.preventDefault();
	event.stopImmediatePropagation();
	scrollableElement.scrollBy({
		top: direction * SCROLL_STEP,
		behavior: "smooth",
	});
}

onMounted(() => {
	document.addEventListener("keydown", onKeydown, { capture: true });
});

onUnmounted(() => {
	document.removeEventListener("keydown", onKeydown, { capture: true });
});
</script>
