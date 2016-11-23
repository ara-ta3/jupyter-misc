run: bin/jupyter
	$< notebook

install: bin/pip
	$< install -r requirements.txt

virtualenv:
	virtualenv . -p python3

bin/pip:
	$(MAKE) virtualenv

bin/jupyter: bin/pip
	$(MAKE) install


