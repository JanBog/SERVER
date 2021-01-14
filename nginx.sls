#NAMESTIMO PACKAGE
nginx:
  pkg:
    - installed

#ZAŽENEMO IN USTVARIMO STARTUP-SERVICE
drugi:
  cmd.run:
    - name: 'systemctl enable --now nginx'

#ODPREMO PORTE
public:
  firewalld.present:
    - name: public
    - ports:
      - 80/tcp
