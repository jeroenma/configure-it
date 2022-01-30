# Configure-IT

## Introduction

Configures `/etc/hosts` and `~/.ssh/config` and `~/.ssh/config.d/<files>` based on `hosts.yaml` file in `./vars` directory. The ssh config is only configure local user config. For configuration /etc/hosts, sudo right are required.

## Usable tags

The tags (`-t`) can be used as described in the `ansible-playbook` manual. The
following tags can be used:

- ssh_config
- etc_hosts, `-K` required because of become

### ssh_config

Creates files for specified hosts in `~/.ssh/config.d/<hostname>.host` and `~/.ssh/config.d/<alias for host>.alias`
Confiured is these files are:
 - Hostname to connect to.
 - User name to connect to host, when specified.
 - IdentityFile to be used, when specified.

Example: To configure only the SSH part use following command `ansible-playbook -K -t ssh_config configure-it.yaml`

