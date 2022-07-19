FROM ubi8

USER root

# Install system level dependancies
RUN yum module install -y nodejs:16 && yum install -y git 

WORKDIR /usr/src/app

#install npm browser-sync dependency - has to be done after workdir is created due to NPM <=15
RUN npm install -y browser-sync

# Add application sources to the working directory minus the stuff in .dockerignore
COPY . .

# Set permissions so that the container runs without root access
RUN useradd -u 1001 appuser
RUN chown -R 1001:0 .
USER 1001

# Set the default command for the resulting image
CMD npm start
