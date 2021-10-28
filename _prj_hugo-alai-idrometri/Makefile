repo:
	# GITHUB -> https://github.com/alai-arpas/hugo-alai-idrometri  *********
up:
	# AUTOMATICO
	# PASSO 0 - push to github
	git push

	# PASSO 1 - compila le pagine
	hugo

	# PASSO 2 - crea nuova immagine docker  ************
	docker build . -t arpasali/hugo-alai-idrometri:0.0.1

	# PASSO 3 - OLD Docker container down
	docker-compose down

	# PASSO 4 - NEW Docker container UP
	docker-compose up -d

	# PASSO 5 - http://app5.wdipgeo.arpas.adds/ *********
