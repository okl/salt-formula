/etc/salt/pki/master:
  file.directory:
  - user: root
  - group: root
  - dir_mode: 0700
    
{% if salt['pillar.get']('salt:master:master_pub') is defined %}
/etc/salt/pki/master/master.pub:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_pub'
{% endif %}

{% if salt['pillar.get']('salt:master:master_pem') is defined %}
/etc/salt/pki/master/master.pem:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_pem'
{% endif %}

{% if salt['pillar.get']('salt:master:master_sign_pub') is defined %}
/etc/salt/pki/master/master_sign.pub:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_sign_pub'
{% endif %}

{% if salt['pillar.get']('salt:master:master_sign_pem') is defined %}
/etc/salt/pki/master/master_sign.pem:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0400
    - contents_pillar: 'salt:master:master_sign_pem'
{% endif %}
