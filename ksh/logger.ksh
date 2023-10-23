log_dir=../log/
log_file=${log_dir}$1
dttime="`date +%Y/%m/%d` `date +%T`"
if [ $# == 3 ]
then
    echo $dttime $2 | tee $log_file
else
    echo $dttime $2 | tee -a $log_file
fi