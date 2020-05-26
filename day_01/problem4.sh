#print last 4 frequently access urls count in sorted order from /var/log/httpd/access.log
#!/bin/bash +x
data_url=$(cat access.log | awk -F '"' '{print $6}')
links=$(awk -F ';' '{print $3}' <<< $data_url)
echo $links
