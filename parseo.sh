ansible-playbook -i hosts playbooks/diario.yml --ask-vault-pass


for i in $(ls /tmp/sw-*) 
do

sw=$(echo $i | sed 's/\/tmp\///g')

echo " "
echo "=========== $sw ================="
	cat $i | sed 's/],/\n/g'

echo " "

done

