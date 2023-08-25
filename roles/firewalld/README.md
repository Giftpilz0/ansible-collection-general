# Ansible - firewalld

\=========

## Role Variables

______________________________________________________________________

| Variables                             | Type   | Options                                        | Defaults          |
| ------------------------------------- | ------ | ---------------------------------------------- | ----------------- |
| firewalld_service_name:               | string | ---                                            | firewalld.service |
| firewalld_service_state:              | string | reloaded, restarted, started, stopped          | started           |
| firewalld_service_enabled:            | bool   | false, true                                    | true              |
| firewalld_package_state:              | string | present, absent, latest                        | present           |
| firewalld_package:                    | list   | ---                                            | ---               |
| firewalld_permanent:                  | bool   | false, true                                    | true              |
| firewalld_immediate:                  | bool   | false, true                                    | true              |
| firewalld_default_zone:               | string | block, dmz, drop, internal, public, trusted... | block             |
|                                       |        |                                                |                   |
| firewalld_zones_define:               | dict   | ---                                            | ---               |
| firewalld_zones_define.zone:          | string | ---                                            | ---               |
| firewalld_zones_define.source:        | string | ---                                            | ---               |
|                                       |        |                                                |                   |
| firewalld_rules_services:             | dict   | ---                                            | ---               |
| firewalld_rules_services.service:     | string | ---                                            | ---               |
| firewalld_rules_services.zone:        | string | block, dmz, drop, internal, public, trusted... | ---               |
| firewalld_rules_services.state:       | string | present, absent, enabled, disabled             | ---               |
|                                       |        |                                                |                   |
| firewalld_rules_ports:                | dict   | ---                                            | ---               |
| firewalld_rules_ports.port:           | int    | ---                                            | ---               |
| firewalld_rules_ports.protocol:       | string | tcp, udp, icmp                                 | ---               |
| firewalld_rules_ports.zone:           | string | block, dmz, drop, internal, public, trusted... | ---               |
| firewalld_rules_ports.state:          | string | present, absent, enabled, disabled             | ---               |
|                                       |        |                                                |                   |
| firewalld_richrules_services:         | dict   | ---                                            | ---               |
| firewalld_richrules_services.service: | string | ---                                            | ---               |
| firewalld_richrules_services.allowip: | string | ---                                            | ---               |
| firewalld_richrules_services.zone:    | string | block, dmz, drop, internal, public, trusted... | ---               |
| firewalld_richrules_services.action:  | string | accept, reject, drop, mark                     | ---               |
|                                       |        |                                                |                   |
| firewalld_richrules_ports:            | dict   | ---                                            | ---               |
| firewalld_richrules_ports.port:       | int    | ---                                            | ---               |
| firewalld_richrules_ports.allowip:    | string | ---                                            | ---               |
| firewalld_richrules_ports.protocol:   | string | tcp, udp, icmp                                 | ---               |
| firewalld_richrules_ports.zone:       | string | block, dmz, drop, internal, public, trusted... | ---               |
| firewalld_richrules_ports.action:     | string | accept, reject, drop, mark                     | ---               |

## Dependencies

______________________________________________________________________

## Example Playbook

______________________________________________________________________

```
- name: Import firewalld Role
  hosts: all
  roles:
    - role: giftpilz0.general.firewalld
```
