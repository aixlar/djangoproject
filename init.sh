sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf     # create symbolic link for nginx.conf in /sites-enabled/ and overwrite test.conf with nginx.conf
sudo rm -rf /etc/nginx/sites-enabled/default                                    # delete default file
sudo /etc/init.d/nginx restart                                                  # (re)start nginx server
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py                 # 
sudo /etc/init.d/gunicorn restart                                               #