if has("autocmd")
  augroup templates
    autocmd BufNewFile *.md 0r ./templates/litnotes.md
  augroup END
endif
