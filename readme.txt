/home/ann/app21/readme.txt

This repository was built to help teach a class at Hacker Dojo in October 2015:

http://www.meetup.com/Dans-Linux-JavaScript-Class/events/225904509/

The main topic of the class is using Rickshaw to visualize time series data.

Currently, this repository is deployed at this URL:

https://dojo650.herokuapp.com/demos.html

To run this repository on my Ubuntu laptop I follow these steps:

apt-get update
apt-get upgrade

apt-get install autoconf bison build-essential libssl-dev libyaml-dev \
libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3       \
libgdbm-dev libsqlite3-dev gitk postgresql postgresql-server-dev-all  \
libpq-dev emacs wget curl chromium-browser openssh-server aptitude    \
ruby ruby-dev

apt-get update
apt-get upgrade

useradd ann -m -s /bin/bash
passwd ann
ssh -YA ann@localhost
cd ~ann
rm -rf node
wget https://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-x64.tar.gz
tar zxf node-v4.2.1-linux-x64.tar.gz
mv node-v4.2.1-linux-x64 node

export       PATH="/home/ann/node/bin:${PATH}"
echo 'export PATH="/home/ann/node/bin:${PATH}"' >> ~ann/.bashrc

npm install -g coffee-script

git clone https://github.com/danbikle/app21.git
cd ~ann/app21
npm install
mkdir gems
.  ~ann/app21/app21env.bash
gem install haml

Now you are ready to do Rickshaw development on your laptop.

Try this shell command:

~ann/app21/http.bash

Browse this URL:

http://localhost:8080/demos.html

The above URL should resemble the content served by this URL:

https://dojo650.herokuapp.com/demos.html

If you want to deploy this repository to Heroku, follow this outline:

- Register an account at heroku.com

- Download and install the Heroku Client

- Start a deployment shell, use the Heroku Client to login the shell

- Think of a short name for your app (I picked dojo650).

- Use the Heroku Client to create a blank Heroku App

- Run this shell command: git push heroku master

- Browse the URL of the app you just created.

If you have questions, e-me.

bikle101 at gmail

