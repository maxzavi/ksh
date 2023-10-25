process_name=step1
log_dir=../log/
sleep_time_seconds=13

process_log=${log_dir}${process_name}_`date +%Y%m%d`_`date +%H%M%S`.log

echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Start sleeping time ${sleep_time_seconds} seconds" | tee ${process_log}
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Process ..." | tee ${process_log}
sleep $sleep_time_seconds
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` End" | tee -a ${process_log}
