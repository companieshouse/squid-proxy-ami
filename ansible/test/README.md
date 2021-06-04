# Squid AMI testing

A simple docker setup to cover testing of Ansible.

The proxy requires routing setup and some system dependancies which cannot be mocked in docker, but this should provide enough coverage to locally test functionality of most changes to configuration code.

To test, first ensure you have all required dependancies installed: 
```
ansible-galaxy install -r requirements.yml
ansible-galaxy install -r ../requirements.yml
```

Then we can execute the playbook. This will create a docker container based on Centos7 and execute the playbook.
```
ansible-playbook playbook.yml -e "s3_config_bucket=<s3 bucket name> s3_config_bucket_access_key=<your access key> s3_config_bucket_secret_key=<you secret key>"
```