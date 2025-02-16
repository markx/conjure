; (set vim.g.conjure#extract#tree_sitter#enabled true)
; (set vim.g.conjure#client#clojure#nrepl#test#runner "kaocha")
; (set vim.g.conjure#filetype#fennel "conjure.client.fennel.stdio")
; (set vim.g.conjure#filetype#scheme "conjure.client.snd-s7.stdio")
; (set vim.g.conjure#debug true)

; (set vim.g.conjure#client#scheme#stdio#command "csi -quiet -:c")
; (set vim.g.conjure#client#scheme#stdio#prompt_pattern "\n-#;%d-> ")

(set package.path (.. package.path ";test/lua/?.lua"))
; (set vim.g.conjure#eval#gsubs {:do-comment ["^%(comment[%s%c]" "(do "]})

(comment
  (nvim.ex.augroup :conjure_set_state_key_on_dir_changed)
  (nvim.ex.autocmd_)
  (nvim.ex.autocmd
    "DirChanged * call luaeval(\"require('conjure.client')['set-state-key!']('\" . getcwd() . \"')\")")
  (nvim.ex.augroup :END))
