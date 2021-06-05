# ft_server42

This is a System Administration subject. Learning Docker and Building My First Web Server.

### How to deploy:

Docker must be installed on the computer to deploy the project


```bash
1) docker build <ft_server42 path> --tag <tagname>
2) docker run -it --rm -p 80:80 -p 443:443 --name <tagname> <tagname>
```

After the start, such a window may appear (Google Chrome)
![](https://github.com/deds129/ft_server42/tree/main/images/1.png)

Just click "Go to localhost" (insecure)
![](https://github.com/deds129/ft_server42/tree/main/images/2.png)

Self-signed SSL certificate
![](https://github.com/deds129/ft_server42/tree/main/images/3.png)

Start page
![](https://github.com/deds129/ft_server42/tree/main/images/4.png)

You can go to the WordPress admin panel by typing the path in the browser address bar https://localhost/wordpress it will throw you to wp_admin
![](https://github.com/deds129/ft_server42/tree/main/images/5.png)

In the same way, you can go to phpMyAdmin
![](https://github.com/deds129/ft_server42/tree/main/images/6.png)

New created page in wordpress
![](https://github.com/deds129/ft_server42/tree/main/images/7.png)

Wordpress admin page
![](https://github.com/deds129/ft_server42/tree/main/images/8.png)

phpMyAdmin page
![](https://github.com/deds129/ft_server42/tree/main/images/9.png)

It is also possible to disable / enable auto-index using scripts
```bash
1) bash ~/autoindex_off.sh  
2) bash ~/autoindex_on.sh 
```
![](https://github.com/deds129/ft_server42/tree/main/images/10.png)

![](https://github.com/deds129/ft_server42/tree/main/images/11.png)