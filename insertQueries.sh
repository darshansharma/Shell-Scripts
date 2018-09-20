#/bin/bash


echo -e '\n\033[34m Hi' ${USER} ' :)\e[0m\n'
echo -e '\033[32m Starting script ........\e[0m\n'

tbname='test'
technology=('PERN' 'MERN' 'BLOCKCHAIN')
cname=('cname1' 'cname2')
tname=('tname1' 'tname2' 'tname3' 'tname4')


for i in {1..10}
do
	query="INSERT INTO $tbname (name, cname, age, tname, technology) VALUES ('Testuser${i}', '${cname[$(($RANDOM %2))]}', $(($RANDOM %100)), '${tname[$(($RANDOM %4))]}', '${technology[$(($RANDOM %3))]}')"
	eval "psql -U  $USER -d testdb -c  \"$query\""
	#echo "psql -U  $USER -d testdb -c  \"$query\""	
	echo -e "\033[32m Inserted row. Row count now = ${i}\e[0m\n"
done
