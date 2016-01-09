
/etc/salt/pki/minion/master_sign.pub:
  file.managed:
    - name: master_sign.pub
    - user: root
    - group: root
    - file_mode: 0400
    - content: |-
      {{ pillar['salt']['master']['master_sign_pub'] }}
