local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- اضافه کردن اسنیپت‌های سفارشی برای typescript و typescriptreact
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
