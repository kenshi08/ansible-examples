export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/root/bin
export Git_URL=$1
export Playbook=$2
yum -y install epel-release
yum -y install ansible git
cd /tmp
echo "localhost ansible_connection=local" >> /etc/ansible/hosts
git clone $Git_URL
cd ansible-examples/$Playbook/
ansible-playbook site.yml
