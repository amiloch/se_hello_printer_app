deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

run_test:
	PYTHONPATH=. py.test

test_another:
	PYTHONPATH=. py.test  --verbose -s

run:
	python main.py
