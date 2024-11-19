default: run
venv           = .venv
venv_python    = $(venv)/bin/python
system_python  = $(or $(shell which python3.9), $(shell which python3), $(shell which python))
python         = $(or $(wildcard $(venv_python)), $(system_python))

run:
	poetry install
	poetry run mycheck $(args)
