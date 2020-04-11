# Docker | Apache Proxy LDAP Auth

## Description

The objective of this repo is to provide some examples on how to configure Apache2 to authenticate against LDAP (or Active Directory).

## Aclaration about apache_launcher.sh
The file `apache_launcher.sh` configures the apache2 site reading the env-variables defined in the docker-compose, writes in the vhost configuration file and launches the apache2 server.

## Example

```bash
# First you need to configure env variables in docker-compose.yml files, lines 8-14.
docker-compose build
docker-compose up
```
