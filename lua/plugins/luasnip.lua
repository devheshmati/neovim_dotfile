require("luasnip.loaders.from_vscode").lazy_load()

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescript", {
	s("interface", {
		t("interface "),
		i(1, "Name"),
		t(" {"),
		t({ "", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
	s("type", {
		t("type "),
		i(1, "Name"),
		t(" = "),
		i(0, "type1 | type2"),
		t(";"),
	}),
})

ls.add_snippets("vue", {
	s({ trig = "template", priority = 2000 }, {
		t("<template>"),
		t({ "", "\t<div>" }),
		t({ "", "\t\t" }),
		i(0),
		t({ "", "\t</div>", "</template>" }),
	}),
})
