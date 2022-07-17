# Requires

```
ansible-galaxy install -r requirements.yaml
pip3 install jmespath
```

# Examples

## Deploy

```
# All apps defined in group_vars/docker.yaml
ansible-playbook deploy.applications.yaml -e 'host=docker' --vault-pass-file .vault

# Specific app
ansible-playbook deploy.applications.yaml -e 'host=docker -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault
```

## Patch

```
# All apps defined in group_vars/docker.yaml
ansible-playbook patch.applications.yaml -e 'host=docker' --vault-pass-file .vault

# Specific app
ansible-playbook patch.applications.yaml -e "host=docker" -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault
```

## Destroy

```
# All apps defined in group_vars/docker.yaml
ansible-playbook destroy.applications.yaml -e 'host=docker' --vault-pass-file .vault

# Specific app
ansible-playbook destroy.applications.yaml -e 'host=docker' -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault

# Remove Volumes
ansible-playbook destroy.applications.yaml -e 'host=docker' -e '{"app_names": ["nextcloud"]}' -e 'delete_volumes=yes' --vault-pass-file .vault
```
