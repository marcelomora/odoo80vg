#: vim: sts=2 ts=2 sw=2 et ai
python-psycopg2:
  pkg:
    - installed
python-cups:
  pkg:
    - installed

python-dateutil:
  pkg:
    - installed

python-decorator:
  pkg:
    - installed

python-docutils:
  pkg:
    - installed

python-feedparser:
  pkg:
    - installed
python-gdata: 
  pkg:
    - installed
python-geoip:
  pkg:
    - installed
python-gevent: 
  pkg:
    - installed
python-imaging: 
  pkg:
    - installed
python-jinja2: 
  pkg:
    - installed
python-ldap: 
  pkg:
    - installed
python-libxslt:
  pkg:
    - installed
python-lxml: 
  pkg:
    - installed
python-mako: 
  pkg:
    - installed
python-mock: 
  pkg:
    - installed
python-openid: 
  pkg:
    - installed
python-passlib: 
  pkg:
    - installed
python-psutil: 
  pkg:
    - installed
python-psycopg:
  pkg:
    - installed
python-pybabel: 
  pkg:
    - installed
python-pychart: 
  pkg:
    - installed
python-pydot: 
  pkg:
    - installed
python-pyparsing: 
  pkg:
    - installed
python-pypdf: 
  pkg:
    - installed
python-reportlab: 
  pkg:
    - installed
python-requests: 
  pkg:
    - installed
python-simplejson: 
  pkg:
    - installed
python-tz: 
  pkg:
    - installed
python-unicodecsv: 
  pkg:
    - installed
python-unittest2: 
  pkg:
    - installed
python-vatnumber: 
  pkg:
    - installed
python-vobject: 
  pkg:
    - installed
python-werkzeug: 
  pkg:
    - installed
python-xlwt: 
  pkg:
    - installed
python-yaml:
  pkg:
    - installed
git:
  pkg:
    - installed

https://github.com/odoo/odoo.git:
  git.latest:
    - rev: 8.0
    - depth: 1
    - target: /home/vagrant/odoo

/home/vagrant/wkhtmltox_amd64.deb:
  file.managed:
    - source: salt://wkhtmltopdf/wkhtmltox_amd64.deb

install_wkhtmltopdf:
  cmd.script:
  - require:
    - file: /home/vagrant/wkhtmltox_amd64.deb
  - source: salt://wkhtmltopdf/install_wkhtmltopdf.sh
  - user: root
  - group: root
  - shell: /bin/bash


#odoo-server:
#  git.latest:
#    - name: https://github.com/odoo/odoo.git 
#    - rev: 8.0  
#    - target: /home/vagrant/
#    - depth: 1
#    - require:
#        - pkg: git
#        - ssh_known_hosts: github.com
