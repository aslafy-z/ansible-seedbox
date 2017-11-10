# ansible-seedbox
Deploy seedbox with ansible

## Provision

To use this, you should own a domain name and a server and make sure that A entries are set for these targets:
- @ (root)
- {{frontend_subdomain}} (default: torrents)
- {{files_subdomain}} (default: files)



WARN: Will reload docker at setup

## Configure

Configuration has to be done trough `group_vars/all.yml` file. More configurable variables can be found in the `defaults/main.yml` files.

You should create a `inventory.cfg` file with your server ip address, an example is available at `inventory.cfg.example`.

## Enjoy

Run deployment with:
```sh
ansible-playbook play.yml -i inventory.cfg --private-key path/to/private/key -v
```

## Features

- HTTPS
- Basic Auth
- dockerized

## TODO

- Authentication via github
- File manager (preview, delete, share)
- Security!

Feel free to submit PR's :wink:
