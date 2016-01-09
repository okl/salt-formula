/etc/salt/pki/master/master.pub:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_pub'

/etc/salt/pki/master/master.pem:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_pem'

/etc/salt/pki/master/master_sign.pub:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_sign_pub'

/etc/salt/pki/master/master_sign.pem:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_sign_pem'

