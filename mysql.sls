prvi:
  cmd.run:
    - name: 'sudo yum install mysql-server -y'

drugi:
  cmd.run:
    - name: 'systemctl start mysqld --now'

public:
  - firewalld.present
    - name: public
    - ports: 
      - 3306/tcp

#ZA DOSTOP MASTERJA DO BAZE
# create user 'JAN' indetified by 'GESLO';
# grant all privileges *.* to 'JAN';
