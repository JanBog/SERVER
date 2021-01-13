httpd:
  pkg:
    - installed
    - enabled: True

public:
  firewalld.present:
    - name: public
    - ports:
      - 8080/tcp

prvi:
  cmd.run:
    - name: 'curl -L https://raw.githubusercontent.com/JanBog/SERVER/JAN/httpd.conf -o /etc/httpd/conf/httpd.conf'

drugi:
  cmd.run:
    - name: 'systemctl restart httpd'
