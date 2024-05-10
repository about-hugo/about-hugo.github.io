.RECIPEPREFIX = -
.PHONY: test

port=1317

hugo:
- open http://localhost:$(port)
- hugo -b "http://localhost:$(port)" --buildDrafts server -p $(port)

open_production:
- open https://about-hugo.github.io/
