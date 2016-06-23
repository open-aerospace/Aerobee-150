all: _site

_site: aerodynamics.md data/index.md history/index.markdown
	jekyll build

data/index.md: data/README.markdown
	cp data/README.markdown data/index.md

aerodynamics.md: aerodynamics.ipynb
	jupyter nbconvert --execute --to=markdown --template="nb-markdown.tpl" $^
