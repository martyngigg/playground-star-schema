FROM mcr.microsoft.com/mssql/server:2017-latest

RUN apt-get update && \
  apt-get install --no-install-recommends --no-install-suggests -y \
  curl && \
  apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/*

# Create a backup directory and download backup files
RUN mkdir -p /backup
WORKDIR /backup
RUN curl -L -O https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak

# Create a config directory
RUN mkdir -p /usr/config
WORKDIR /usr/config

# Bundle config source
COPY . /usr/config

# Grant permissions for to our scripts to be executable
RUN chmod +x /usr/config/entrypoint.sh
RUN chmod +x /usr/config/configure-db.sh

ENTRYPOINT ["./entrypoint.sh"]
