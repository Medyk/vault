#!/bin/bash

# curl --header "X-Vault-Token: <token>" http://localhost:8200/v1/ansible/data/entry
# ansible-galaxy install -r requirements.yml

ansible-playbook -D -i /inventory/ playbook.yml
