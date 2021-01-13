prva:
  cmd.run:
    - name: 'sudo yum install epel-release'

nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx

public:
  firewalld.present:
    - name: public
    - ports:
      - 80/tcp
