DOCKERCOMPOSE 	?= $(shell which docker-compose)
XDGOPEN					?= $(shell which xdg-open)
PYTHON 					?= $(shell which python)
NAVIGATOR 			?= $(if $(PYTHON),$(PYTHON) -m webbrowser,$(XDGOPEN))

run:
	$(NAVIGATOR) http://localhost:8888
	$(DOCKERCOMPOSE) up --build