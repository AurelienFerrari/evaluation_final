# Dossier `ansible/`

Rôles et playbooks Ansible pour la configuration des serveurs.

- Exemple : installation Docker, déploiement de l’API…
- Fichier principal : `site.yml`
- Rôles : `roles/`

Exemple minimal de `site.yml` :
```yaml
- hosts: all
  become: yes
  tasks:
    - name: Afficher un message
      debug:
        msg: "Déploiement avec Ansible OK!"
```
