# Pretix Production Environment

## Start it up

* update your config file at ./etc/pretix.cfg to make sure the url points to your host
* `docker-compose up -d` to run production environment 
* Make sure you have some external https redirection (pending to improve)

### Pretix Dashboard

* Dashboard: `https://yourhost/control/`
* User: `admin@localhost`
* Password: `admin`

## Modifications to parent repo

* We set django debug to false at ./etc/pretix.cfg to avoid css erros 
* MercadoPago plugin added


## Bibliography

* https://docs.pretix.eu/en/latest/admin/installation/docker_smallscale.html#next-steps
* https://docs.pretix.eu/en/latest/development/setup.html
