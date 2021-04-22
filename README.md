# Automated Docker Image Creation  

A basic Node.js "Hello World" web app which demonstrates the ability of a Bash script to spin up Docker images. 

**Requirements:**  
1. Linux OS  
2. Installation of Docker  
3. Installation of Node.js, npm, and Express.js framework  

**Use:**  
1. Copy ```newMicroServ.sh``` to a local directory  
2. Add your user to the docker group with ```sudo usermod -aG docker <username>```  
3. Run the script with ```./newMicroServ.sh``` and note the port number which the script outputs  
4. View web app at ```http://<your_ipv4_address>:<output_port>```  
5. Get Docker image ID with ```docker ps```  
6. Stop Docker image with ```docker stop <image_ID>```
