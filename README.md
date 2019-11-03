# Static Sites

Docker setup for my static sites:

* [casieandseangotohawaii.com](https://casieandseangotohawaii.com/)
* [color.seaneshbaugh.com](https://color.seaneshbaugh.com/)
* [conneythecorgi.com](https://conneythecorgi.com/)
* [cowboythecowdog.com](https://cowboythecowdog.com/)

## Setup

Set up a docker machine.

    $ docker-machine create --driver=digitalocean --digitalocean-access-token=$DIGITAL_OCEAN_TOKEN -digitalocean-size=1gb staticsites

Use the docker machine in the current shell.

    $ eval $(docker-machine env staticsites)

Start the nginx Docker container.

    $ docker-compose up -d --build nginx

## Deploying

Rebuild the nginx Docker container.

    $ docker-compose up -d --build nginx
