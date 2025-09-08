
#!/bin/bash

<< task
Deploy a Django app and error handle
task

code_clone(){
	echo "cloning notes app ...."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){
	echo "Installing dependencies"
	sudo apt-get install docker.io nginx -y
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "----deploying started----"

if ! code_clone; then 
	echo "the code directory already exits"
	cd django-notes-app
fi
if ! install_requirements; then
	echo "installation fail"
	exit 1
fi
if ! required_restarts; then 
	echo "system fault identified"
	exit 1
fi
deploy

echo "----deployed----"

