default: fmt fix

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

setup-githooks:
    uv run pre-commit install
