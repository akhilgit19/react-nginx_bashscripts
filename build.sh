#!/bin/bash
sudo docker rmi -f $(sudo docker images -q) ##this is not recommned step, i am deleting existing images to save space
sudo rm -r gold ## these steps are not recommened instead you can modify script as shown below
sudo mkdir gold
cd gold/
sudo git clone https://github.com/akhilgit19/Gold_Site_Ecommerce-1.git
cd Gold_Site_Ecommerce-1/
sudo docker build -t react-nginx-image -f golddockerfile .
sudo docker tag react-nginx-image:latest akhilpagadapoola/react-nginx:latest ##make sure you did docker login
sudo docker push akhilpagadapoola/react-nginx:latest

##recommended script###
#!/bin/bash
#cd gold/Gold_Site_Ecommerce
#sudo git pull
#sudo docker build -t react-nginx -f goldockerfile .
#sudo docker tag react-nginx:latest reactdemo/react-nginx:latest ##make sure you did docker login
#sudo docker push reactdemo/react-nginx:latest
