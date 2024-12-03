default: fmt fix

# Setup commands
setup-githooks:
    uv run pre-commit install

run-githooks *params:
    uv run pre-commit run --all-files {{params}}

# Startup commands
run host="127.0.0.1" port="8000":
    HOST={{host}} PORT={{port}} uv run python -m src.main

# Code quality commands
fmt:
    uv run ruff format

check-fmt:
    uv run ruff format --check

lint:
    uv run ruff check

fix:
    uv run ruff check --fix

check-types:
    uv run pyright

# Testing commands
test:
    uv run pytest -v

cov:
    uv run pytest -v --cov

cov-xml:
    uv run pytest -v --durations=0 --cov --cov-report=xml
