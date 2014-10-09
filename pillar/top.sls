base:

  '*':
    - networking
    - users
    - sudoers
    - psf-ca
    - secrets.system-mail

  'roles:apt':
    - match: grain
    - firewall.http
    - secrets.aptly
    - secrets.backup.apt

  'roles:backup-server':
    - match: grain
    - backup.server

  'roles:cdn-logs':
    - match: grain
    - fastly-logging
    - firewall.fastly-logging

  'roles:console-proxy':
    - match: grain
    - firewall.http
    - secrets.tls.certs.loadbalancer

  'roles:docs':
    - match: grain
    - firewall.fastly-backend
    - groups.docs
    - secrets.backup.docs

  'roles:downloads':
    - match: grain
    - firewall.fastly-backend
    - groups.downloads
    - secrets.backup.downloads

  'roles:hg':
    - match: grain
    - firewall.rs-lb-backend
    - secrets.backup.hg
    - secrets.ssh.hg

  'roles:jython-web':
    - match: grain
    - secrets.backup.jython-web
    - groups.jython
    - firewall.http

  'roles:loadbalancer':
    - match: grain
    - haproxy
    - firewall.loadbalancer
    - secrets.tls.certs.loadbalancer

  'roles:monitoring':
    - match: grain
    - firewall.monitoring
    - pgbouncer.monitoring
    - secrets.postgresql-users.monitoring
    - secrets.monitoring.server

  'roles:planet':
    - match: grain
    - planet
    - firewall.http

  'roles:postgresql':
    - match: grain
    - firewall.postgresql
    - postgresql.server
    - secrets.wal-e
    - secrets.psf-ca.pg

  'roles:postgresql-primary':
    - match: grain
    - secrets.postgresql-users.all

  'roles:postgresql-replica':
    - match: grain
    - secrets.postgresql-users.replica

  'roles:salt-master':
    - match: grain
    - salt-master

  'roles:tracker':
    - match: grain
    - pgbouncer.tracker
    - secrets.postgresql-users.tracker

  'roles:vpn':
    - match: grain
    - openvpn
    - firewall.vpn
    - ssh.duosec
    - secrets.openvpn.vpn
    - secrets.duosec.vpn
