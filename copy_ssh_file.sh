$ vim script.sh
#!/bin/bash
while read -r line
do
    echo "running $line"
    sshpass -p root  ssh-copy-id root@$line -o "StrictHostKeyChecking no"
done < "server.list"