#!/bin/bash

<< task
Deploy a Django app
and handle the code for errors
task

code_clone(){
	echo "Cloning the Django app...."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirments() {
	echo "Installing Dependencies...."
	sudo apt-get install docker.io nginx -y
}

required_restart(){
	sudo chown $USER //var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	echo "Deploying the application...."
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "------------------ DEPLOYMENT STARTED ------------------"

if ! code_clone; then
	echo "The Code directory already exists"
	cd django-notes-app
fi

if ! install_requirments; then
	echo "Installation failed"
	exit 1
fi

if ! required_restart; then
	echo "Seems issue with system"
	exit 1
fi

if ! deploy; then
	echo "Deployment Failed , Inform to the Team"
	# sendmail
	exit 1
fi	
echo "------------------ DEPLOYMENT ENDED ------------------"

