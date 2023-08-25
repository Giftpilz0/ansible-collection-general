# Ansible - update

\=========

## Role Variables

______________________________________________________________________

| Variables                     | Type | Options     | Defaults |
| ----------------------------- | ---- | ----------- | -------- |
| update_package_names:         | list | ---         | \*       |
| update_package_security_only: | bool | false, true | false    |
| update_package_bugfix_only:   | bool | false, true | false    |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

```
- name: Import update Role
  hosts: all
  roles:
    - role: giftpilz0.general.update
```
