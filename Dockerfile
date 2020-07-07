from ubuntu:18.04

run useradd -u 1000 -m -d /home/app -s /bin/bash app

copy entrypoint.sh /home/app/
run chmod u+x /home/app/entrypoint.sh
run chown -R app:app /home/app

entrypoint [ "/home/app/entrypoint.sh" ]

