lint:
	poetry run ruff .

types:
	poetry run mypy app/

check:
	poetry run pre-commit run --all-files

run:
	poetry run uvicorn app.main:app --reload --host 0.0.0.0 --port 8000

worker:
	poetry run celery -A app.celery_worker.celery_app worker --loglevel=info -Q email

migrate:
	poetry run alembic upgrade head
