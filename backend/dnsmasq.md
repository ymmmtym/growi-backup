# dnsmasq

## procedure

### update DNS

```:/etc/hosts
192.168.0.2 macbook-pro macbook-pro.local
```

```:/etc/resolv.conf
nameserver 127.0.0.1
nameserver 8.8.8.8
nameserver 8.8.4.4
```

### setup dnsmasq.conf

#### resolve **\*.test** domain as localhost

```conf:/usr/local/etc/dnsmasq.conf

address=/.test/::1
address=/.test/127.0.0.1
```

```:/etc/resolver/test
nameserver ::1
nameserver 127.0.0.1
```

