# 22-esco

René Fritze
rene.fritze@wwu.de

* [Slides](https://renefritze.github.io/22-esco)
* [PDF](https://github.com/renefritze/22-esco/blob/master/slides/22-esco-slides.pdf)

Talk given at https://www.esco2022.femhub.com/.

[![Build Status](https://travis-ci.org/renefritze/22-esco.svg?branch=master)](https://travis-ci.org/renefritze/22-esco)
[![GitHub license](https://img.shields.io/github/license/renefritze/22-esco.svg)](https://github.com/renefritze/22-esco/blob/master/LICENSE)
[![Twitter](https://img.shields.io/twitter/url/https/github.com/renefritze/22-esco.svg?style=social)](https://twitter.com/intent/tweet?text=Talk%20given%20at%20https://www.esco2022.femhub.com/:%20https%3A%2F%2Fgithub.com%2Frenefritze%2F22-esco%20%23revealjs%20%23slides)

## Install

1. Install [npm](https://www.npmjs.com/)
2. [Clone](https://git-scm.com/docs/git-clone) this repository
3. Install dependencies with `npm`

```
git clone https://github.com/renefritze/22-esco
cd 22-esco
npm install
```

See [Edits](#edits) and [Implementation](#implementation) for more details.

## Usage

1. Generate `docs/index.html` (see `script.html` in [package.json](https://github.com/renefritze/22-esco/blob/master/package.json))
2. Generate `slides/22-esco-slides.pdf` (see `script.pdf` in [package.json](https://github.com/renefritze/22-esco/blob/master/package.json))

```
npm run html
npm run pdf
```

## Developer Notes

### Edits

The following can be edited before generating:

* `slides/22-esco-slides.md`: [Markdown](https://daringfireball.net/projects/markdown/) file with slide contents
* `slides/template.html`: Custom [reveal-md](https://github.com/webpro/reveal-md) template to generate slides with
* `docs/edit/style.css`: [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS) file to adjust styling of slides
* `docs/edit/logo.png`: logo image to use

### Implementation


The slides [22-esco](https://github.com/renefritze/22-esco) uses the following [npm](https://www.npmjs.com/) packages for its implementation:

npm | Purpose
--- | ---
[reveal-md](https://www.npmjs.com/package/reveal-md) | Converting `slides/22-esco-slides.md` to `docs/index.html`
[decktape](https://www.npmjs.com/package/decktape) | Converting `slides/22-esco-slides.md` to `slides/22-esco-slides.pdf`
[windows-build-tools](https://www.npmjs.com/package/windows-build-tools) | Compiling dependencies for decktape on Windows Operating System (OS)

```
       reveal-md            <-- Convert markdown  slides to html

       decktape             <-- Convert markdown slides to pdf
          |
  windows-build-tools       <-- Compile decktape on Windows OS
```
