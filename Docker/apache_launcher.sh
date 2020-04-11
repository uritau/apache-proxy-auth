
# Configure vhost
sed -i "/^    ProxyPass /c\    ProxyPass ${REDIRECT_TO}/" /etc/apache2/sites-available/000-default.conf
sed -i "/^    ProxyPassReverse /c\    ProxyPassReverse ${REDIRECT_TO}/" /etc/apache2/sites-available/000-default.conf
sed -i "/^    AuthName /c\    AuthName ${AUTH_MESSAGE}" /etc/apache2/sites-available/000-default.conf
sed -i "/^    AuthLDAPURL /c\    AuthLDAPURL ${LDAP_SERVER}?sAMAccountName?sub?(objectClass=*)" /etc/apache2/sites-available/000-default.conf
sed -i "/^    AuthLDAPBindDN /c\    AuthLDAPBindDN ${LDAP_USER}" /etc/apache2/sites-available/000-default.conf
sed -i "/^    AuthLDAPBindPassword /c\    AuthLDAPBindPassword ${LDAP_PASSWORD}" /etc/apache2/sites-available/000-default.conf
sed -i "/^    require ldap-group /c\    require ldap-group ${LDAP_GROUP}" /etc/apache2/sites-available/000-default.conf

# Launch apache
apachectl -D FOREGROUND