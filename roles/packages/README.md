# Ansible - packages

\=========

## Role Variables

______________________________________________________________________

| Variables                          | Type   | Options                       | Defaults                                        |
| ---------------------------------- | ------ | ----------------------------- | ----------------------------------------------- |
| packages_package_state:            | string | present, absent, latest, skip | present                                         |
| packages_rpmfusion_package_state:  | string | present, latest, skip         | skip                                            |
| packages_additional_package_state: | string | present, absent, latest, skip | present                                         |
| packages_flatpak_package_state:    | string | present, absent, latest, skip | present                                         |
| packages_python_package_state:     | string | present, absent, latest, skip | present                                         |
| packages_package:                  | list   | ---                           | ---                                             |
| packages_additional_package:       | list   | ---                           | ---                                             |
| packages_flatpak_package:          | list   | ---                           | ---                                             |
| packages_python_package:           | list   | ---                           | ---                                             |
| packages_flatpak_repo:             | string | ---                           | https://dl.flathub.org/repo/flathub.flatpakrepo |
| packages_flatpak_repo_name:        | string | ---                           | flatpakrepo                                     |
| packages_flatpak_repo_state:       | string | present, absent, skip         | present                                         |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

### Basic

install default + additional desktop relatet packages

```
- name: Import packages Role
  hosts: all
  roles:
    - role: giftpilz0.general.packages
```
