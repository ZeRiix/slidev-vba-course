import { bundledLanguages, type LanguageRegistration } from "shiki";

async function loadVbaLanguage() {
	const vbLanguageModule = await bundledLanguages.vb();

	return {
		...vbLanguageModule.default[0],
		name: "vba",
		scopeName: "source.vba",
		aliases: ["vba"],
	};
}

const excelFormulaLanguage: LanguageRegistration = {
	name: "excel",
	scopeName: "source.excel-formula",
	repository: {},
	patterns: [
		{
			name: "comment.line.double-slash.excel-formula",
			match: "\\s//.*$",
		},
		{
			name: "string.quoted.double.excel-formula",
			begin: "\"",
			end: "\"",
			patterns: [
				{
					name: "constant.character.escape.excel-formula",
					match: "\"\"",
				},
			],
		},
		{
			name: "support.function.excel-formula",
			match: "\\b[A-ZÀ-ÖØ-Þ][A-ZÀ-ÖØ-Þ0-9._]*\\b(?=\\()",
		},
		{
			name: "variable.other.cell.excel-formula",
			match: "\\$?[A-Z]{1,3}\\$?\\d+",
		},
		{
			name: "constant.numeric.excel-formula",
			match: "\\b\\d+(?:[,.]\\d+)?\\b",
		},
		{
			name: "keyword.operator.excel-formula",
			match: "[+\\-*/^&=<>]|<=|>=|<>|:",
		},
		{
			name: "punctuation.separator.excel-formula",
			match: "[;,]",
		},
		{
			name: "punctuation.parenthesis.excel-formula",
			match: "[()]",
		},
	],
};

export default function setupShiki() {
	return {
		langs: {
			vba: loadVbaLanguage,
			excel: excelFormulaLanguage,
		},
	};
}
