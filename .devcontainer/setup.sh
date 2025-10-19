#!/usr/bin/env bash
set -e
python -m pip install --upgrade pip
if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
if [ -f pyproject.toml ]; then pip install -e .; fi
python -m ipykernel install --user --name=codespace-py
