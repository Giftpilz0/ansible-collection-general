# Ansible - git

\=========

## Role Variables

______________________________________________________________________

| Variables                | Type   | Options                 | Defaults |
| ------------------------ | ------ | ----------------------- | -------- |
| git_package_state:       | string | present, absent, latest | present  |
| git_package:             | list   | ---                     | ---      |
|                          |        |                         |          |
| git_config_system:       | dict   | ---                     | ---      |
| git_config_system.key:   | string | ---                     | ---      |
| git_config_system.value: | string | ---                     | ---      |
|                          |        |                         |          |
| git_config:              | dict   | ---                     | ---      |
| git_config.key:          | string | ---                     | ---      |
| git_config.value:        | string | ---                     | ---      |
| git_config.scope:        | string | file, local, global     | ---      |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

### Basic

```
- name: Import git Role
  hosts: all
  roles:
    - role: giftpilz0.general.git
```
