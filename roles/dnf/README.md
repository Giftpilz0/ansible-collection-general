# Ansible - dnf

\=========

## Role Variables

______________________________________________________________________

| Variables                      | Type   | Options                               | Defaults                    |
| ------------------------------ | ------ | ------------------------------------- | --------------------------- |
| dnf_automatic_service_name:    | string | ---                                   | dnf-automatic-install.timer |
| dnf_automatic_service_state:   | string | reloaded, restarted, started, stopped | started                     |
| dnf_automatic_service_enabled: | bool   | false, true                           | true                        |
| dnf_automatic_package_state:   | string | present, absent, latest               | present                     |
| dnf_automatic_package:         | list   | ---                                   | ---                         |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

### Basic

```
- name: Import dnf Role
  hosts: all
  roles:
    - role: giftpilz0.general.dnf
```
