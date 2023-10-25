process_name=step3
log_dir=../log/
process_log=${log_dir}${process_name}_`date +%Y%m%d`_`date +%H%M%S`.log

execute(){
    substep=$1
    sleep_time_seconds=$2
    echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Start substep ${substep}" | tee ${process_log}
    sleep ${sleep_time_seconds}
    echo "`date +%Y/%m/%d`_`date +%H:%M:%S` End substep ${substep}" | tee ${process_log}
}
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Start " | tee ${process_log}
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Process ..." | tee ${process_log}
execute "substep1" 10 &
execute "substep2" 5 &
execute "substep3" 8 &
wait
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` End" | tee -a ${process_log}