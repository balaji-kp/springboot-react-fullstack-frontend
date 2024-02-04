SETUP WEBSERVER(REACT)

set env varibale for BACKEND_URL
as per code,in .env file looking for env variable BACKEND_URL

vi ~/.bashrc
export BACKEND_URL=http:backend-ip-address:8080

install nginx
apt install nginx

cd /ect/nginx/site-available

ls

copy default config 
cp default react

vi react

edit at root as /var/www/html/react;

after copy files inside build folder to root path (var/www/html/react)

cd /etc/nginx/site-enabled

remove default symbolic link
rm default

create new symbolic link
ln -s /ect/nginx/site-avaliable/react ./react

restart nginx
systemctl restart nginx



