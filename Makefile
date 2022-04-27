
docs/index.html: slides/22-esco-slides.md
	npm run html

slides/22-esco-slides.pdf: slides/22-esco-slides.md
	npm run pdf

install:
	npm install

html: docs/index.html

pdf: slides/22-esco-slides.pdf

watch:
	npm run watch
