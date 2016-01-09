
/etc/salt/pki/minion/master.pub:
  file.managed:
    - name: master.pub
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_pub'] }}

/etc/salt/pki/minion/master.pem:
  file.managed:
    - name: master.pem
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_pem'] }}

/etc/salt/pki/minion/master_sign.pem:
  file.managed:
    - name: master_sign.pem
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_sign_pem'] }}
