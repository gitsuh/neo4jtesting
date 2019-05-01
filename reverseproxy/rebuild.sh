sudo docker-compose down ../
sudo docker system prune -a -f
sudo docker build -t reverseproxy .
