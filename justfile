default: fmt fix

fmt:
    uv run ruff format

lint:
    uv run ruff check

fix:
    uv run ruff check --fix

setup-githooks:
    uv run pre-commit install
