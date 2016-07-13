# orchestrator_ec2_wrapper-cookbook

A wrapper cookbook that can be used to spin up a version of Orchestrator on EC2 that connects to the internet through the on-prem corporate proxy.

## To Use

1.  You must have the follwoing installed on your Corporate Workstation
   * GIT like GitHub Desktop for Windows
   * ChefDK
   * AWSCLI

2.  Configure the awscli with 'aws configure', your AWS Secret and Key must grant you an IAM policy that allows instance launches in EC2

3.  Git Clone this repo to your workstation

4.  You must also git clone the gcb_chef_cookbook-aws_orchestrator to your workstation in the same directory next to this repo

5.  modify the .kitchen.yml to your needs

6. Set AWS_SSH_KEY_ID in the env. ( export AWS_SSH_KEY_ID=my-key-name )

7. Set ENV_REPO_NAME in the env.  Not required if running in dev mode. ( export ENV_REPO_NAME=gcb_environment-lawnmower )

8. Set RUN_MODE in the env.  If set to "dev" then a Jenkins server will NOT be provisioned. ( export RUN_MODE=dev )

9.  launch with 'kitchen converge', and login with 'kitchen login', happy orchestrator development...
