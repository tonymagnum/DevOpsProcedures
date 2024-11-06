#! /bin/bash
### Gitlab Runner Setup ###

# Download Package
curl -LJO "https://s3.dualstack.us-east-1.amazonaws.com/gitlab-runner-downloads/latest/deb/gitlab-runner_amd64.deb"

# Install Package & Any Dependancies
sudo dpkg -i gitlab-runner_amd64.deb || sudo apt-get install -y -f

# Verify Setup
gitlab-runner --version
sudo gitlab-runner status