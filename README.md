[![CI](https://github.com/StoneSoupKitchen/ansible-role-ssh/actions/workflows/ci.yml/badge.svg)](https://github.com/StoneSoupKitchen/ansible-role-ssh/actions/workflows/ci.yml)

# Ansible role: ssh

Manage SSH on Linux systems with Ansible.

## Role Variables

The following table lists all variables that can be overridden
and their default values.

| Name           | Default Value | Description                         |
| -------------- | ------------- | ----------------------------------- |
| `ssh_server_package_state` | "present" | State of the SSH server package. |
| `ssh_server_allowgroups` | [] | |
| `ssh_server_allowtcpforwarding` | false | |
| `ssh_server_allowusers` | [] | |
| `ssh_server_banner` | "/etc/issue.net" | |
| `ssh_server_ciphers` | See defaults.yml | |
| `ssh_server_clientalivecountmax` | 0 | |
| `ssh_server_clientaliveinterval` | 300 | |
| `ssh_server_denygroups` | [] | |
| `ssh_server_denyusers` | [] | |
| `ssh_server_hostbasedauthentication` | false | |
| `ssh_server_ignorerhosts` | true | |
| `ssh_server_kexalgorithms` | See defaults.yml | |
| `ssh_server_logingracetime` | 60 | |
| `ssh_server_loglevel` | "verbose" | |
| `ssh_server_macs` | See defaults.yml | |
| `ssh_server_maxauthtries` | 4 | |
| `ssh_server_maxsessions` | 10 | |
| `ssh_server_maxstartups` | "10:30:60" | |
| `ssh_server_permitemptypasswords` | false | |
| `ssh_server_permitrootlogin` | false | |
| `ssh_server_permituserenvironment` | false | |
| `ssh_server_port` | 22 | |
| `ssh_server_usepam` | true | |
| `ssh_server_x11forwarding` | false | |

## Examples

To use the role from a playbook:

```yaml
- hosts: all
  roles:
    - stonesoupkitchen.ssh
```

## License

See [LICENSE](./LICENSE).

