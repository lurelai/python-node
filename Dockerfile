# Using as base the python 3.12.2
# This python's version using with base the official package of docker (buildpack-deps) and it uses debian, that is the why i choose it 
FROM python:3.12.2
WORKDIR /usr/app

# Update packages
RUN apt update -y

# Install nodejs (21.6.2), npm (10.4.0) and yarn
RUN apt update -y && \
    curl -fsSL https://deb.nodesource.com/setup_21.x | bash - && \
    apt-get install nodejs=21.6.2-1nodesource1 -y && \
    npm install -g npm@10.4.0 && \
    npm install yarn -g && \
    npm install -g nodemon

# Install vim as default
RUN apt install vim -y

CMD ["bash"]

