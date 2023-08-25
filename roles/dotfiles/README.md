# Ansible - dotfiles

\=========

## Role Variables

______________________________________________________________________

| Variables                     | Type   | Options                 | Defaults    |
| ----------------------------- | ------ | ----------------------- | ----------- |
| dotfiles_package_state:       | string | present, absent, latest | present     |
| dotfiles_package:             | list   | ---                     | ---         |
| dotfiles_nanorc_file          | string | ---                     | /etc/nanorc |
| dotfiles_nanorc_state:        | string | present, absent, skip   | present     |
| dotfiles_inputrc_file         | string | ---                     | /etc/nanorc |
| dotfiles_inputrc_state:       | string | present, absent, skip   | present     |
| dotfiles_bashprofile_enabled: | bool   | false, true             | true        |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

### Basic

```
- name: Import dotfiles Role
  hosts: all
  roles:
    - role: giftpilz0.general.dotfiles
```
