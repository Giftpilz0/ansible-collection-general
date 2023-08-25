# Ansible - user

\=========

## Role Variables

______________________________________________________________________

| Variables      | Type   | Options         | Defaults |
| -------------- | ------ | --------------- | -------- |
| user_username: | string | ---             | ---      |
| user_groups:   | list   | ---             | ---      |
| user_password: | string | ---             | ---      |
| user_home:     | bool   | false, true     | ---      |
| user_shell:    | string | ---             | ---      |
| user_state:    | string | present, absent | present  |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

```
- name: Import user Role
  hosts: all
  roles:
    - role: giftpilz0.general.user
```
