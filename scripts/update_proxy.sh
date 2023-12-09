file="configs/zabbix_proxy.conf"
ls /etc/zabbix/
envsubst < $file > $file-tmp && sudo mv $file-tmp /etc/zabbix/zabbix_proxy.conf
echo "Fazendo restart"
sudo systemctl restart zabbix-proxy
echo "Verificando status"
sudo systemctl status zabbix-proxy
sleep 3
cat /etc/zabbix/zabbix_proxy.conf |grep ^Start