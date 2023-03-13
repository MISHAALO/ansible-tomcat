cp -r tomcat /etc/ansible/roles 

defaults - tomcat_version: "tomcat_verion"

files add file apache-tomcat-*.tar.gz -> /files/

ansible-playbook site.yml -e "HOST=name.name" -e "ROLE=role" 
