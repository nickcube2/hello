setup:
	python3 -m venv ~/.myrepo
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	#python -m pytest -vv --cov=myrepolib test/*.py
	
lint:
	pylint --disable=R,C hello.py
	
all: install lint test