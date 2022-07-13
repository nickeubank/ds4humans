# Data Science for Humans Jupyter Book

This repository is a [jupyter book project](https://jupyterbook.org/en/stable/intro.html)
for Data Science for Humans.

## Building Book

- set `cd` to this repo
- run `jupyter-book build .` By default only changed pages. Use `jupyter-book build --all .` to force full build.
- Copy into docs (where github pages looks): `cp -R _build/html/* docs`
- Push to github and it'll update online shortly!
- You can also open `_build/index.html` (just double click!) and it'll open in your browser locally.

For copy-paste ease: `jupyter-book build --all .; cp -R _build/html/* docs; git add .; git commit`

## Syntax

Jupyter books basically use Markdown + some extra features for things like note boxes, or danger boxes, etc. 
[Cheatsheet here](https://jupyterbook.org/en/stable/reference/cheatsheet.html)

