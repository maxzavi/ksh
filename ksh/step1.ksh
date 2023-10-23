process_name=step1
process_name_log=${process_name}_`date +%Y%m%d`_`date +%H%M%S`.log
sleep_time_seconds=5
ksh logger.ksh ${process_name_log} "Start process ${process_name} with sleeping time ${sleep_time_seconds} seconds" 1
sleep $sleep_time_seconds
ksh logger.ksh ${process_name_log} "End"
