echo "copy jar begin >>>>>>>>>>"
starttime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);

#�Ƿ����jar���ļ�����Ҫ�������������΢��������jar�Ŵ�һ��Ŀ¼��
if [ ! -d "$1" ];
then 
    echo "$1 not existed"
    exit
fi

#�Ƿ���������嵥�ļ�,��Ҫ�ڷ��񹹽���֮������
if [ ! -f "$2" ];then
    echo "$2 not existed"
    exit
fi

#ɾ��ԭ��jarĿ¼
if [ -d "sharedlib" ];then
    rm -rf sharedlib/*
    echo "sharedlib dir's jar rm suc"
else 
    mkdir sharedlib
    echo "create sharedlib suc"
fi

#����jar�嵥�ļ�����
fnlistRow=`wc -l $2 | awk '{print $1}'`
echo "����$fnlistRow��jar"
if [ $fnlistRow -ge 1 ];then
    while read name
    do
	rname=`echo $name | awk -F "/" '{print $NF}'`
	cp -rf $1/$rname sharedlib/
    done < $2
fi

endtime=`date +'%Y-%m-%d %H:%M:%S'`
end_seconds=$(date --date="$endtime" +%s);
sumTime=$((end_seconds-start_seconds));
echo ">>>>>> copy jar end " "$starttime ---> $endtime" "Total��ʱ:$sumTime s"

