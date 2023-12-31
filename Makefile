.PHONY: run
run:
	poetry run python run.py --mode dummy

.PHONY: fmt-lnt
fmt-lnt:
	poetry run autoflake src
	poetry run isort src
	poetry run black src
	poetry run pflake8 src
