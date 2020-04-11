FROM ubuntu:18.04

RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
  apache2

RUN set -eux; a2enmod \
  proxy \
  proxy_http \
  authnz_ldap

COPY apache_launcher.sh /apache_launcher.sh

COPY proxy-httpd.conf /etc/apache2/sites-available/000-default.conf

CMD ["bash", "/apache_launcher.sh"]
