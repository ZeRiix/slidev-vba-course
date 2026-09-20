import { computed, type MaybeRefOrGetter, toValue } from "vue";
import { useSlideContext } from "@slidev/client";
import { S, Path } from "@duplojs/utils";

interface SlideMeta {
	filepath?: string;
	no?: number;
}

interface SlideRouteWithFilepath {
	meta?: {
		slide?: SlideMeta;
	};
}

const slidePages = import.meta.glob("../pages/*/slide.md", {
	eager: true,
	import: "default",
	query: "?url",
}) as Record<string, string>;

const slideAssets = import.meta.glob(
	"../pages/**/*.{gif,jpeg,jpg,png,svg,webp,zip}",
	{
		eager: true,
		import: "default",
		query: "?url",
	},
) as Record<string, string>;

function resolveGlobKeyPath(path: string) {
	const normalizedPath = S.startsWith(path, "../")
		? S.slice(path, 3, Infinity)
		: path;

	return Path.resolveFrom("/", [normalizedPath]);
}

const slideDirectories = Object.keys(slidePages)
	.sort()
	.map((path) => {
		const pagePath = resolveGlobKeyPath(path);

		return pagePath
			? Path.getParentFolderPath(pagePath)
			: null;
	})
	.filter((path) => path !== null);

function resolvePublicAsset(path: string) {
	if (!Path.isAbsolute(path) || S.startsWith(path, "//")) {
		return undefined;
	}

	return `${import.meta.env.BASE_URL}${S.slice(path, 1, Infinity)}`;
}

function getSlidePageFilepath(filepath: string) {
	const normalizedFilepath = S.replaceAll(filepath, "\\", "/");
	const pagesIndex = S.lastIndexOf(normalizedFilepath, "/pages/");

	if (pagesIndex === undefined) {
		return undefined;
	}

	return Path.resolveFrom(
		"/",
		[S.slice(normalizedFilepath, pagesIndex + 1, Infinity)],
	);
}

function getSlideDirectory(slide: SlideMeta | undefined) {
	if (!slide) {
		return undefined;
	}

	if (slide.filepath) {
		const slidePageFilepath = getSlidePageFilepath(slide.filepath);

		if (slidePageFilepath) {
			return Path.getParentFolderPath(slidePageFilepath) ?? undefined;
		}
	}

	return slide.no !== undefined
		? slideDirectories[slide.no - 1]
		: undefined;
}

function resolvePageAsset(path: string, slide: SlideMeta | undefined) {
	const slideDirectory = getSlideDirectory(slide);

	if (!slideDirectory) {
		return undefined;
	}

	const assetPath = Path.resolveFrom(slideDirectory, [path], {
		stayInOrigin: true,
	});

	if (!assetPath) {
		return undefined;
	}

	const assetKey = `..${assetPath}`;

	return slideAssets[assetKey];
}

export function useSlideAsset(path: MaybeRefOrGetter<string | undefined>) {
	const { $route } = useSlideContext();
	const route = $route as SlideRouteWithFilepath | undefined;

	return computed(() => {
		const value = toValue(path);

		if (!value) {
			return undefined;
		}

		if (Path.isAbsolute(value)) {
			return resolvePublicAsset(value);
		}

		return resolvePageAsset(value, route?.meta?.slide);
	});
}
