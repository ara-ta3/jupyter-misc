
run: bin/jupyter
	$< notebook
	

virtualenv:
	virtualenv . -p python3

bin/pip:
	$(MAKE) virtualenv

bin/jupyter: bin/pip
	$< install -r requirements.txt


