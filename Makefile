directory=/home/alai/aprj/
nome_progetto=alai-hugo-docs-prove
progetto=$(directory)$(nome_progetto)

cancella-sh:=$(shell ./0-clean.sh $(progetto))

git-init-sh:=$(shell ./2-git-init.sh $(progetto) $(nome_progetto))

info:
	# $(progetto)

start:
	# PASSO 0 - rimuovi directroy precedente **DANGER**
	@echo $(cancella-sh)

hugo-new:
	# PASSO 1 - CREA SITO
	hugo new site $(progetto) --format yaml

git-init:
	# PASSO 2 - GIT INIT
	@echo $(git-init-sh)
	

git-theme:
	git submodule add https://github.com/alai-arpas/eclectic-hugo-theme themes
	git add .
	git commit -m "aggiunto themes"
	git push

crea: start hugo-new git-init
	