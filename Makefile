STREAMLIT_APP = app.py
VENV_NAME = .venv

# Run targets
.PHONY: install run uninstall

install: $(VENV_NAME)

# Create the virtual environment using Poetry
$(VENV_NAME): 
	poetry install --no-root
	poetry env info -p > $(VENV_NAME).info
	poetry shell

# Run the streamlit app
run: install
	@echo "Running streamlit app..."
	poetry run streamlit run poetry-test-app/$(STREAMLIT_APP)

uninstall:
	@echo "uninstall packages..."
	@rm -rf $(VENV_NAME)
	@rm .venv.info
	@rm poetry.lock
	@echo "uninstall complete!"
