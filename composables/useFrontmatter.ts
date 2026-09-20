import { computed } from "vue";
import { useSlideContext } from "@slidev/client";

export type DefaultFrontmatter = object;

export function useFrontmatter<
	GenericFrontmatter extends DefaultFrontmatter = DefaultFrontmatter,
>() {
	const { $frontmatter } = useSlideContext();

	return computed(() => $frontmatter as GenericFrontmatter);
}

