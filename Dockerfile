FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y

# Define a build argument that defaults to index.html
ARG HTML_FILE=index.html

# Copy the dynamically passed HTML file into the container as index.html
COPY ${HTML_FILE} /var/www/html/index.html

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]


