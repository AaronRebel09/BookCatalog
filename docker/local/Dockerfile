# Use official ubuntu 20.04 LTS image
FROM ubuntu:20.04

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=my_secret_password
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=my_user
ENV MYSQL_PASSWORD=my_password

# Install dependencies for development
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    default-jre-headless \
    mysql-client \
    elasticsearch:7.12.1 \
    kibana:7.12.1 \
    logstash:7.12.1 \
    filebeat:7.12.1 \
    datadog-agent:7.32.0-2 \
    nr-agent:3.16.0.145 \
    sonarqube:9.4.0

# Copy ELK configurations
COPY elasticsearch.yml /etc/elasticsearch/
COPY kibana.yml /etc/kibana/
COPY logstash.conf /etc/logstash/

# Create a directory to hold the SQL scripts
RUN mkdir -p /docker-entrypoint-initdb.d/

# Install MySQL server
RUN apt-get install -y mysql-server

# Mount the docker-entrypoint-initdb.d directory as a volume
VOLUME /docker-entrypoint-initdb.d/

# Start the services in detached mode
CMD ["tail", "-f", "/dev/null"]