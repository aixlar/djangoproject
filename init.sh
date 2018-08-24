sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf     # create symbolic link for nginx.conf in /sites-enabled/ and overwrite test.conf with nginx.conf
sudo rm -rf /etc/nginx/sites-enabled/default                                    # delete default file
sudo /etc/init.d/nginx restart                                                  # (re)start nginx server
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test               # 
sudo /etc/init.d/gunicorn restart                                               #
cd /home/box/web/                                                               #
gunicorn hello:app --bind 0.0.0.0:8080                                          #        