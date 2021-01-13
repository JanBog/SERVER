#NAMESTIMO PACKAGE
httpd:
  pkg:
    - installed


#ODPREMO PORTE
public:
  firewalld.present:
    - name: public
    - ports:
      - 8080/tcp

#PRENESEMO SPREMENJEN CONF FILE, zamenjan port
prvi:
  cmd.run:
    - name: 'curl -L https://raw.githubusercontent.com/JanBog/SERVER/JAN/httpd.conf -o /etc/httpd/conf/httpd.conf'

#ZAŽENENO, USTVARIMO SERVICE
drugi:
  cmd.run:
    - name: 'systemctl enable --now httpd'
