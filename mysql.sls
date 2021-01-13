#NAMESTIMO PACKAGE
prvi:
  cmd.run:
    - name: 'sudo yum install mysql-server -y'

#ZAŽENENO IN USTVARIMO SERVICE
drugi:
  cmd.run:
    - name: 'systemctl enable --now mysqld'

#ODPREMO PORTE
public:
  - firewalld.present
    - name: public
    - ports: 
      - 3306/tcp