PYTHON=python3.11
VENV=.venv

setup:
	$(PYTHON) -m venv $(VENV)
	$(VENV)/bin/pip install --upgrade pip

dev: setup
	$(VENV)/bin/pip install -r requirements/requirements-dev.txt

prod: setup
	$(VENV)/bin/pip install -r requirements/requirements.txt

clean:
	rm -rf $(VENV)
	find . -type d -name "__pycache__" -exec rm -r {} +
