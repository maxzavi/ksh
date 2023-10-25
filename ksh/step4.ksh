process_name=step4
log_dir=../log/
process_log=${log_dir}${process_name}_`date +%Y%m%d`_`date +%H%M%S`.log
process_log_tmp=${log_dir}$tmp_{process_name}_`date +%Y%m%d`_`date +%H%M%S`.log

##DB parameters
DB_USERNAME=
DB_PASSWORD=
DB_INSTANCE=
##

echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Start" | tee ${process_log}

##SQL sentence
cat <<EOF | sqlplus -s ${DB_USERNAME}/${DB_PASSWORD}@${DB_INSTANCE}  > $process_log_tmp
    set feedback off;
    set serveroutput on size 1000000;
	set timing on;
	WHENEVER SQLERROR EXIT FAILURE		
    execute epmm.cstavgsch('JUser');
    exit;
EOF

status_process=$?
cat ${process_log_tmp} | tee -a  $process_log
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` Estatus: ${status_process}" | tee -a  $process_log

if [[ ! $status_process = "0" ]]
then
	rm -f ${process_log_tmp}
	echo "`date +%Y/%m/%d`_`date +%H:%M:%S` End with error!!!!!" | tee -a ${process_log}
	echo >&2 "Finalizado con error, revisar log"
	exit 2   
fi
echo "`date +%Y/%m/%d`_`date +%H:%M:%S` End" | tee -a ${process_log}