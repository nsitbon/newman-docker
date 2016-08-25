FROM node:6.4.0-slim
MAINTAINER Nicolas Sitbon <nsitbon@figarocms.fr>

# Set newman version
ENV NEWMAN_VERSION 3.1.0-beta.1

# Install newman
RUN npm install -g newman@${NEWMAN_VERSION};

WORKDIR /etc/newman

ENTRYPOINT ["newman"]
