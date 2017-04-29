Ansible Role Redis
=========
[![Build Status](https://travis-ci.org/akinobu-tani/ansible-role-redis.svg?branch=master)](https://travis-ci.org/akinobu-tani/ansible-role-redis)

install Redis.

Requirements
------------

none

Role Variables
--------------

```
redis_version: 3.2.8
redis_nodes:
  - port: 6379
    save_on_disc: yes
redis_data_dir: /var/lib/redis
```

Dependencies
------------

none

Example Playbook
----------------

```
- hosts: servers
  vars:
    redis_version: 3.2.8
    redis_nodes:
      - 6379
  roles:
     - redis
```

License
-------

MIT

Author Information
------------------

[Akinobu Tani](http://github.com/akinobu-tani)
