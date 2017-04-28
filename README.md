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
  roles:
     - redis
```

License
-------

MIT

Author Information
------------------

[Akinobu Tani](http://github.com/akinobu-tani)
