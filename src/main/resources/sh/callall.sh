

echo "===========begin============"


echo "===========����΢����jar���嵥��������ͬһ��Ŀ¼begin============"
# ����ÿ��΢�����µ�jar�������ֺ�jar
source ./handlejar.sh $1 shared
echo "===========����΢����jar���嵥��������ͬһ��Ŀ¼over============"

echo "                                                                "

echo "===========�����Щjar���ڰ汾��ͻbegin============"
# �����Щjar���ڰ汾��ͻ
sh ./chkdup.sh shared/lib
echo "===========�����Щjar���ڰ汾��ͻover============"

echo "                                                                "

echo "===========��Щ�����õ���汾jar begin============"
# ��Щ�����õ���汾jar
. ./finddupuse.sh shared/filename/ chkDupResult/dup.txt
echo "===========��Щ�����õ���汾jar over============"

echo "                                                                "

echo "===========end============"

