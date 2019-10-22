echo "copy jar begin >>>>>>>>>>"
starttime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);

#�Ƿ����jar���ļ�����Ҫ�������������΢��������jar�Ŵ�һ��Ŀ¼��
if [ ! -d "$1" ];
then 
    echo "$1 not existed"
    exit
fi

#�Ƿ���������嵥�ļ�,��Ҫ��ܳ�������
if [ ! -f "$3" ];then
    echo "$3 not existed"
    exit
fi

#ɾ��ԭ��jarĿ¼
if [ -d "$2" ];then
    rm -rf $2/*
    echo "$2 dir's jar rm suc"
else 
    mkdir $2
    echo "create $2 suc"
fi

#fnlist.txt�ļ�����
fnlistRow=`wc -l fnlist.txt | awk '{print $1}'`
echo "����$fnlistRow��jar"
if [ $fnlistRow -ge 1 ];then
    while read name
    do
	#�����ְ�'/'��ʽ�з������һ��
	rname=`echo $name | awk -F "/" '{print $NF}'`
	#echo $rname
	cp -rf $1/$rname $2/
    done < fnlist.txt
fi

endtime=`date +'%Y-%m-%d %H:%M:%S'`
end_seconds=$(date --date="$endtime" +%s);
sumTime=$((end_seconds-start_seconds));
echo ">>>>>> copy jar end " "$starttime ---> $endtime" "Total��ʱ:$sumTime s"

