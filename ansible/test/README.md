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
ansible-playbook main.yml
```