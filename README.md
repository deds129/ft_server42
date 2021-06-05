# ft_server42

This is a System Administration subject. Learning Docker and Building My First Web Server.

### How to deploy:

Docker must be installed on the computer to deploy the project


```bash
1) docker build <ft_server42 path> --tag <tagname>
2) docker run -it --rm -p 80:80 -p 443:443 --name <tagname> <tagname>
```

* After the start, such a window may appear (Google Chrome)
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/1.png" alt="drawing" width="720"/>
</p>

* Just click "Go to localhost" (insecure)
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/2.png" alt="drawing" width="720"/>
</p>

* Self-signed SSL certificate
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/3.png" alt="drawing" width="720"/>
</p>

* Start page
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/4.png" alt="drawing" width="720"/>
</p>)

* You can go to the WordPress admin panel by typing the path in the browser address bar https://localhost/wordpress it will throw you to wp_admin
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/5.png" alt="drawing" width="720"/>
</p>

* In the same way, you can go to phpMyAdmin
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/6.png" alt="drawing" width="720"/>
</p>

* New created page in wordpress
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/7.png" alt="drawing" width="720"/>
</p>

* Wordpress admin page
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/8.png" alt="drawing" width="720"/>
</p>

* phpMyAdmin page
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/9.png" alt="drawing" width="720"/>
</p>

It is also possible to disable / enable auto-index using scripts
```bash
1) bash ~/autoindex_off.sh  
2) bash ~/autoindex_on.sh 
```
<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/10.png" alt="drawing" width="720"/>
</p>

<p align="center">
  <img src="https://github.com/deds129/ft_server42/blob/main/images/11.png" alt="drawing" width="420"/>
</p>
