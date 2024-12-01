FROM debian:12.8
# Install Ansible & required packages:
RUN apk add --update --no-cache ansible bash openssh sshpass git

# Download the OpenTofu installer script:
RUN wget https://get.opentofu.org/install-opentofu.sh -O install-opentofu.sh

# Give it execution permissions:
RUN chmod +x install-opentofu.sh

# Run the installer:
RUN ./install-opentofu.sh --install-method apk

# Remove the installer:
RUN rm -f install-opentofu.sh
