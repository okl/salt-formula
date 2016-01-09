
/etc/salt/pki/minion/master_sign.pub:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_sign_pub'

