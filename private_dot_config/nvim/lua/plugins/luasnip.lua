local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end


local snip = luasnip.snippet
local node = luasnip.snippet_node
local text = luasnip.text_node
local insert = luasnip.insert_node
local func = luasnip.function_node
local choice = luasnip.choice_node
local dynamicn = luasnip.dynamic_node

return {
  all = {
    snip({
      trig = "asd",
      namr = "asd namr",
      dscr = "asd desc",
    }, {
      text "SDASDasdASD",
      insert(0),
    }),
    snip({
      trig = "signature",
      namr = "Signature",
      dscr = "Name and Surname",
    }, {
      text "Sergei Bulavintsev",
      insert(0),
    }),
  },
}
