poetry run black .
if(!$?) { throw }
poetry run isort .
if(!$?) { throw }
poetry run mypy .
if(!$?) { throw }
poetry run coverage run -m pytest
if(!$?) { throw }
poetry run coverage report -m
poetry run coverage html
Write-Host "Done" -ForegroundColor Green
