# Makefile for a Python project

# Target: install
# Prerequisite: requirements.txt should exist
# Recipe: Commands to create a virtual environment and install dependencies
env: requirements.txt
	@echo "Creating a virtual environment and installing dependencies..."
	python -m venv venv
	./venv/bin/pip install -r requirements.txt

#running the file 
run: env
	@echo "Running the program..."
	./venv/bin/python main.py

# Target for running unit tests using pytest
test: env
	@echo "Running unit tests..."
	./venv/bin/pytest test.py

# Target for cleaning up temporary files and caches
clean:
	@echo "Cleaning up..."
	rm -rf __pycache__
	rm -rf *.pyc
	rm -rf venv
	rm -rf .pytest_cache

#Linting is the process of running a program that will analyse code for potential errors.
lint:
	pylint main.py

all: env test run clean
#"Don't look for files named env, test, or clean; just run the commands I've specified when these targets are invoked."
#Makes it clear that these are meant as commands, and not file names
.PHONY: env test clean lint run all 
