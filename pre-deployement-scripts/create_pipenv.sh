#!/bin/bash
# Create a Virtual-Env 
sudo apt-get -y install python3-pip 
pip install --upgrade pip
python3 -m pip install virtualenv
python3 -m venv 
pip install -r pre-deployement-scripts/requirements.txt 

# Create multiple files with all the secrets for AWS, Meraki Portal and ISE
source ~/.secrets/meraki.sh
source ~/.secrets/aws.sh
source ~/.secrets/ise.sh



