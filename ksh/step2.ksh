process_name=step2
log_dir=../log/
sleep_time_seconds=5
process_log=${log_dir}${process_name}_`date +%Y%m%d`_`date +%H%M%S`.log

echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Start sleeping time ${sleep_time_seconds} seconds" | tee ${process_log}
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Process ..." | tee ${process_log}
sleep $sleep_time_seconds

if [ -e mark.txt ]
then
    echo "`date +%Y/%m/%d`_`date +%H:%M:%S` File processed" | tee ${process_log}
else
    echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Error!!!!File not found!!!" | tee ${process_log}
    echo >&2 "Error!!!!File not found!!!"
    exit 1 
fi

echo "`date +%Y/%m/%d`_`date +%H:%M:%S` End" | tee -a ${process_log}