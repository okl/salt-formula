/etc/salt/pki/master/master.pub:
  file.managed:
    - name: master.pub
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_pub'] }}

/etc/salt/pki/master/master.pem:
  file.managed:
    - name: master.pem
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_pem'] }}

/etc/salt/pki/master/master_sign.pub:
  file.managed:
    - name: master_sign.pub
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_sign_pub'] }}

/etc/salt/pki/master/master_sign.pem:
  file.managed:
    - name: master_sign.pem
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_sign_pem'] }}

