from ubuntu:14.04

# Use mirror server
run sed -e 's/archive\.ubuntu\.com/ftp.neowiz.com/g' /etc/apt/sources.list | tee /etc/apt/sources.list

# Install packages
run apt-get update
run apt-get install -y build-essential
run apt-get install -y python python-dev python-setuptools
run apt-get install -y nginx supervisor
run easy_install pip

# Install uwsgi
run pip install uwsgi

# Install Earth Reader Web
run pip install earthreader-web

# Install our code
add . /home/docker/code/

# Configure nginx
run echo "daemon off;" >> /etc/nginx/nginx.conf
run rm /etc/nginx/sites-enabled/default
run ln -s /home/docker/code/nginx-app.conf /etc/nginx/sites-enabled/
run ln -s /home/docker/code/supervisor-app.conf /etc/supervisor/conf.d/


expose 80
cmd ["supervisord", "-n"]
