#NAMESTIMO PACKAGE
nginx:
  pkg:
    - installed
    
mysql:
  cmd.run:
    - name: 'sudo yum install mysql-server -y'
    
httpd:
  pkg:
    - installed
    
#ODPREMO PORTE
public:
  firewalld.present:
    - name: public
    - ports:
      - 80/tcp
      - 8080/tcp
      - 3306/tcp

#Prenos
bootstrap:
  cmd.run:
    - name: 'curl -L https://raw.githubusercontent.com/JanBog/SERVER/JAN/httpd.conf -o /etc/httpd/conf/httpd.conf'

prvi:
  cmd.run:
    - name: 'systemctl enable --now nginx'

drugi:
  cmd.run:
    - name: 'systemctl enable --now mysqld'

tretji:
  cmd.run:
    - name: 'systemctl enable --now httpd'   
