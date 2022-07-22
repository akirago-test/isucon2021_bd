alp json --sort sum -r -m "/api/condition/[0-z]+" -o count,method,uri,min,avg,max,sum < /home/isucon/webapp/log/access.log | /home/isucon/./notify_slack -snippet -filename access_log
sudo rm /home/isucon/webapp/log/access.log
sudo pt-query-digest /var/log/mysql/mariadb-slow.log --limit 10  | /home/isucon/./notify_slack -snippet -filename slow_query
sudo rm /var/log/mysql/mariadb-slow.log
