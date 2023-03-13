cp -r roles/* /etc/ansible/roles 

defaults - tomcat_version: "tomcat_verion"
files add file apache-tomcat-*.tar.gz

ansible-playbook site.yml -e "HOST=name.name" -e "ROLE=role" 