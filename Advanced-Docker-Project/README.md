Advanced Docker Project – Nginx Container Management



Author: Amit Kumar

Project Type: Advanced Docker Hands-on Project

Platform: Windows 11 + Docker Desktop + WSL2



1\. Project Overview



This project demonstrates practical implementation of Advanced Docker concepts using an Nginx web server container.



The objective is to understand container deployment, networking, volume management, monitoring, logging, and restart policies.



2\. Technologies Used



\- Docker Desktop

\- Nginx Alpine

\- Docker Bridge Network

\- Docker Volumes

\- Windows 11

\- WSL2

\- PowerShell



3\. Practical Implementation



1\. Container Deployment



Created an Nginx container named "web-server".



2\. Port Mapping



Configured host port 8082 to container port 80.



3\. Docker Networking



Connected the container to a custom bridge network named "devops-network".



4\. Volume Management



Configured a named volume "nginx-data" mounted at "/usr/share/nginx/html" in read-only mode.



5\. Container Inspection



Used "docker inspect" to examine container configuration, network settings, IP address, volume mounts, and restart policy.



6\. Resource Monitoring



Used "docker stats" to monitor CPU and memory consumption.



7\. Log Monitoring



Used "docker logs" and "docker logs -f" to monitor container logs and live web access requests.



8\. Restart Policy



Configured the restart policy using:



docker update --restart unless-stopped web-server



Verified the configuration successfully.



9\. Container Restart Verification



Restarted the container and verified that it was running successfully.



4\. Application Verification



Application URL: http://localhost:8082



Displayed Message:



Welcome to Amit Advanced Docker Project



Successfully verified that the Nginx application was accessible through the browser after restarting the container.



5\. Skills Learned



\- Docker container lifecycle management

\- Docker networking and bridge networks

\- Docker volume mounting

\- Container resource monitoring

\- Docker log management

\- Restart policy configuration

\- Nginx deployment

\- Container troubleshooting



6\. Conclusion



Successfully completed an Advanced Docker hands-on project covering container deployment, networking, storage, monitoring, logging, and restart policy management.



This practical project improved my understanding of Docker container operations and real-world DevOps practices.

