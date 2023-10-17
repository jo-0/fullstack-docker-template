# Development environment setup.

#### 1. Download and install Docker Desktop (~2m)
https://www.docker.com/products/docker-desktop/

Tip: You can speed up Docker Desktop by configuring it to use more CPU and Memory.

#### 2. Get the .env file from ops team (5m?)
Ask the ops team for the .env local file for setting up all environment variables.

#### 3. Run the makefile (~10m)
The build is fully dockerized.
```
make docker-local-initial-setup
```

#### 4. Visit the app
* Visit http://localhost:80


---
# Tooling setup

#### Linting and formatting
We use `flake8` for linting and [black](https://github.com/psf/black]) for formatting.

###### Installing Black
```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip
pip install black
```


# Common development commands

#### Linting
* Lint the front-end
  * `make lint-js`

* Lint the backend
  * `make lint-python`

#### Other
* View logs from Backend
  * `docker compose logs -f backend`

* Compile requirements.txt
  * `pip-compile requirements.in --output-file=requirements.txt`

* Check Types
  * `mypy --config-file=mypy.ini`
