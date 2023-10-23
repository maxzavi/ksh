process_name=step4
process_name_log=${process_name}_`date +%Y%m%d`_`date +%H%M%S`.log
execute(){
    substep=$1
    sleep_time_seconds=$2
    ksh logger.ksh ${process_name_log} "Start substep ${substep}"
    sleep ${sleep_time_seconds}
    ksh logger.ksh ${process_name_log} "End substep ${substep}"
}

ksh logger.ksh ${process_name_log} "Start process ${process_name}" 1
execute "substep1" 10 &
execute "substep2" 5 &
execute "substep3" 8 &
wait

ksh logger.ksh ${process_name_log} "End"
