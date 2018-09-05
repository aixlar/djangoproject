sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart --chdir /home/box/web/ hello:app 
# sudo /etc/init.d/gunicorn restart
# -c /opt/myenv/gunicorn_config.py myproject.wsgi
