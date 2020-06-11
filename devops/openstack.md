# Openstack

Openstack provides IaaS service ans Cloud environment.

## Components

### RabbitMQ
### DB
### Keystone
#### Commands
```
openstack quota show admin
openstack quota set --cores 8 admin
```

#### Commands
##### Project
|  Command  |  Action  |
| ---- | ---- |
|  openstack help project  |  show commands about project  |

##### User
|  Command  |  Action  |
| ---- | ---- |
|  openstack help user  |  show commands about user  |

##### Role
|  Command  |  Action  |
| ---- | ---- |
|  openstack help role  |  show commands about role  |

### Glance
#### Commands
|  Command  |  Action  |
| ---- | ---- |
|  openstack help image  |  show commands about image  |

### Neutron
#### Commands
##### Floating IP
|  Command  |  Action  |
| ---- | ---- |
|  openstack help ip floating  |  show commands about floating ip  |

##### Security Group
|  Command  |  Action  |
| ---- | ---- |
|  openstack help security  |  show commands about security group  |

### Nova
### Horizon
### Cinder
### Swift
### Heat
### Ironic
### Magnum

## Devstack

```bash=
git clone https://github.com/openstack-dev/devstack.git
cd devstack

cp samples/local.conf .
sed -i -e 's/#HOST_IP=w.x.y.z/HOST_IP=192.168.0.3/g' local.conf
FORCE=yes ./stack.sh
```

## Tutorial
http://enakai00.hatenablog.com/entry/20140106/1388978670
