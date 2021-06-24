for sname in $(cat hosts)
do
sudo cat $1|ssh $sname
done
