# Ansible - timezone

\=========

## Role Variables

______________________________________________________________________

| Variables          | Type   | Options | Defaults |
| ------------------ | ------ | ------- | -------- |
| timezone_timezone: | string | ---     | Etc/UTC  |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

```
- name: Import timezone Role
  hosts: all
  roles:
    - role: giftpilz0.general.timezone
```
