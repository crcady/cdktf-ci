FROM node:latest
# These need to be globally installed
# This is basically what makes a CI container necessary
RUN npm install -g cdktf-cli@latest ts-node
# Not strictly necessary for synthesis, but avoids a warning and lets you plan and deploy
RUN curl https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_linux_amd64.zip -o terraform.zip && unzip terraform.zip && rm terraform.zip && mv terraform /usr/local/bin/terraform
