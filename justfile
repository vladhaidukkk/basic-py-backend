default: fmt fix

fmt:
    uv run ruff format

check-fmt:
    uv run ruff format --check

lint:
    uv run ruff check

fix:
    uv run ruff check --fix

setup-githooks:
    uv run pre-commit install
