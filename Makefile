setup:
	python3 -m venv ~/.MSDS434

install:
	pip install --upgrade pip &&\
	py -2 -m pip install setuptools_scm
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepolib tests/

lint:
	pylint --disable=R,C myrepolib

all: install lint test