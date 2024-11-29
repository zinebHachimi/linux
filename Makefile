# Makefile pour générer README.md et effectuer d'autres actions

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "## Informations" >> README.md
	@echo "Date de création : $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Exécution du Makefile : $(shell date)" >> README.md
	@echo "Le programme de jeu de devinette vous demande de deviner le nombre de fichiers dans le répertoire actuel." >> README.md
	@echo "Voici le code source du script : " >> README.md
	@cat guessinggame.sh >> README.md
