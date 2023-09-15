docker exec -it namenode lsblk
docker exec -it namenode df -h

docker exec -it namenode hdfs dfs -mkdir /user
docker exec -it namenode hdfs dfs -chown hadoop:hadoop /user

docker exec -it namenode hdfs dfs -mkdir /user/hadoop
docker exec -it namenode hdfs dfs -chown hadoop:hadoop /user/hadoop

docker exec -it namenode hdfs dfs -mkdir test
docker exec -it namenode hdfs dfs -put /mnt/files/alex.csv test/alex.csv
docker exec -it namenode hadoop fs -du -s -h test/*
docker exec -it namenode hdfs fsck test/alex.csv