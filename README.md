# Graft Supernode Ansible Provisioning

## SSH keys

ToDO...

## Setup server access

Setting up a system for the first time is layed out on a different playbook
called `access.yml`. This playbook sets up user access authentication for the
first time, creating a new `graft` user, and disabling `root` ssh access. For
the majority of cases, you will need to connect for the first time to the server
as `root` with a password, and install Python manually. For Ubuntu system you
will need to:

```
sudo apt install python
```

After is done you can run the `access.yml` playbook:
```
ansible-playbook -i hosts -l supernode -e ansible_user=root --ask-pass access.yml
```

After the playbook is run `root` access will be disabled, so make sure your `~/.ssh/id_rsa` key
is set up for your user.

## Setup server software

This command will execute the main playbook:
```
ansible-playbook -i hosts software.yml
```

To run only for one server type:
```
ansible-playbook -i hosts -l supernode software.yml
```
