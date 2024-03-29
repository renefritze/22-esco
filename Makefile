
docs/index.html: clean slides/22-esco-slides.md slides/qr_self.png slides/qr_workshop.png
	npm run html

slides/22-esco-slides.pdf: slides/22-esco-slides.md
	npm run pdf

install:
	npm install

html: docs/index.html

pdf: slides/22-esco-slides.pdf

watch:
	npm run watch

# this way we only re-run install if requirements change
venv/setup_by_make: requirements-dev.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate && python3 -m pip install -q -r requirements-dev.txt
	touch venv/setup_by_make

venv: venv/setup_by_make

slides/qr_%.png: venv
	. venv/bin/activate && python render_qr.py
	mv -f qr_*png slides/

clean:
	rm -f qr_*png
	rm -rf docs
