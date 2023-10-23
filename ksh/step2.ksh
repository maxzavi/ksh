process_name=step2
process_name_log=${process_name}_`date +%Y%m%d`_`date +%H%M%S`.log
sleep_time_seconds=1
ksh logger.ksh ${process_name_log} "Start process ${process_name} with sleeping time ${sleep_time_seconds} seconds" 1
sleep $sleep_time_seconds

if [ -e mark.txt ]
then
    ksh logger.ksh ${process_name_log} "File found!!!"
else
    ksh logger.ksh ${process_name_log} "Error!!!!File not found!!!"
    echo >&2 "Error!!!!File not found!!!"
    exit 1 
fi

ksh logger.ksh ${process_name_log} "End"
