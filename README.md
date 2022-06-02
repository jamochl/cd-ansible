# Requires

```
ansible-galaxy install -r requirements.yaml
pip3 install jmespath
```

# Examples

## Deploy

```
# All apps defined in group_vars/all.yaml
ansible-playbook deploy.applications.yaml --vault-pass-file .vault

# Specific app
ansible-playbook deploy.applications.yaml -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault
```

## Patch

```
# All apps defined in group_vars/all.yaml
ansible-playbook patch.applications.yaml --vault-pass-file .vault

# Specific app
ansible-playbook patch.applications.yaml -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault
```

## Destroy

```
# All apps defined in group_vars/all.yaml
ansible-playbook destroy.applications.yaml --vault-pass-file .vault

# Specific app
ansible-playbook destroy.applications.yaml -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault

# Remove Volumes

ansible-playbook destroy.applications.yaml -e '{"app_names": ["nextcloud"]}' -e 'delete_volumes=yes' --vault-pass-file .vault
```
