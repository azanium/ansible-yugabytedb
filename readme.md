# CockroachDB Provisioning

simplify YugabyteDB configuration using Ansible Playbook.


## Prerequisite

* [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) to install ansible.
* change *hosts* configuration.

```bash
[staging]
first-ip
second-ip
third-ip
```


## Usage
* setup

```bash
ansible-playbook setup.yml -i hosts --user root
```

* remove
```bash
ansible-playbook remove.yml -i hosts --user root
```

* clean start
```bash
ansible-playbook clean_start.yml -i hosts --user root
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)