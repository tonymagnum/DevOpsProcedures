#! /bin/bash
### Gitlab Runner Setup ###

# Download Package
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash

# Install
sudo apt install gitlab-runner
