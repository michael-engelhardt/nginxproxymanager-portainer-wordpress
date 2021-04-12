# nginxproxymanager-portainer-wordpress


0. Set Up your DNS (Netcup/ Cloudflare etc. and point to your Server IP)

1. Set up User & Firewall

2. Install Docker

3. Install docker-compose

4. docker-compose up -d the nginxproxymanager

5. Go into your browser to the address your-server-ip:81 and setup Nginx Proxy Manager
    Set up you SSL, prefer using the DNS-Challange (Use Cloudflare API for example)

6. Set up your Proxy Hosts (First proxy nginxproxymanager frontend itself):
    Domain Names:           nginx.your-domain.com
    Scheme:                 http
    Forward Hostname/ IP:   nginxproxymanager_app_1
    Forward Port:           81
    Block Common Exploits:  active
    SSL Certificate:        nginx.your-domain.com
    HTTP/2 Support:         active
  
 7. Now repeat this for portainer with Port 9000 and Destination portainer_portainer_1
 
 8. Repeat with Wordpress, become crazy because it doesn't work
