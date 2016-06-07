all: site

site: aerodynamics.md
	jekyll build

aerodynamics.md: aerodynamics.ipynb
	jupyter nbconvert --execute --to=markdown --template="nb-markdown.tpl" $^
