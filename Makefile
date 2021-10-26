directory=/home/alai/aprj/
nome_progetto=alai-hugo-docs-prove
progetto=$(directory)$(nome_progetto)

cancella-sh=$(shell ./0-clean.sh $(progetto))

info:
	# $(progetto)

0-start:
	# PASSO 0 - rimuovi directroy precedente **DANGER**
	@echo $(call cancella-sh)
