# Requires

```
ansible-galaxy install -r requirements.yaml
pip3 install jmespath
```

# Examples

## Deploy

```
# All apps defined in group_vars/docker.yaml
ansible-playbook -i hosts app.deploy.yml -e 'host=docker' --vault-pass-file .vault

# Specific app
ansible-playbook -i hosts app.deploy.yml -e 'host=docker -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault
```

## Patch

```
# All apps defined in group_vars/docker.yaml
ansible-playbook -i hosts app.patch.yml -e 'host=docker' --vault-pass-file .vault

# Specific app
ansible-playbook -i hosts app.patch.yml -e "host=docker" -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault
```

## Destroy

```
# All apps defined in group_vars/docker.yaml
ansible-playbook -i hosts app.destroy.yml -e 'host=docker' --vault-pass-file .vault

# Specific app
ansible-playbook -i hosts app.destroy.yml -e 'host=docker' -e '{"app_names": ["nextcloud"]}' --vault-pass-file .vault

# Remove Volumes
ansible-playbook -i hosts app.destroy.yml -e 'host=docker' -e '{"app_names": ["nextcloud"]}' -e 'delete_volumes=yes' --vault-pass-file .vault
```
