#SingleInstance force

v := StrSplit("Ƥʵ�����̡����ܡ��ӳ֡����������ơ���ء�������Эͬ�����������ݡ���װ�����顢��Լ����Ӧ�����������������֡�������ϸ�֡���������������١�������������֧�š��ںϡ�����ۺϡ����ɡ��Աꡢ���롢�۽���ץ�֡���⡢��ͨ��������������������ͨ����͸��Ǩ�ơ��ַ����ֲ㡢��װ�����䡢Χ�ơ����á���͸����չ�����ء����������ġ���Ȧ","��")
n2 := StrSplit("©������̨���ջ����򷨡�Ŧ�������󡢴̼�����ģ��������ά�ȡ���֡���̬����̬����������ϵ����֪���淨����С���֪�����ԡ����ǡ�ս�ۡ��������������������ӡ�ģ�͡����塢����ͨ������λ����·���Ե�", "��")
n3 := StrSplit("����̬����֪�ȡ������ȡ������ۡ����ȭ�������㡢�����桢��ϸ�������컯��ƽ̨�����ṹ����Ӱ����������ԡ������ԡ�����ԡ�һ���ԡ��˵��ˡ���ƽ�졢���Ǻ�", "��")
n4 := StrSplit("�ײ��߼���������ơ�������ֵ���������ڡ���ֵת����ǿ����֪����Դ��б�������߼�������͸�������ô򷨡���ҵģʽ��������Ӧ�����Զ������ؼ�·����ȥ���Ļ���������򡢴�ֱ���򡢹�������������������Ϣ����", "��")

shuffleArray(v)
shuffleArray(n2)
shuffleArray(n3)
shuffleArray(n4)

result := Format("{}��{}{}��{}��ҵ{}��{}��{}{}{}��ͨ��{}��{}�ﵽ{}��{}����{}����{}�򷨴��{}��{}{}��Ϊ{}Ϊ��Ʒ���ܣ�{}��Ϊ{}�����б�׼��������{}��������{}��{}����{}��{}{}{}{}��{}��{}�ﵽ{}��׼��", n4[0+1], v[0+1], n4[1+1], v[1+1], n3[0+1], n4[2+1], v[2+1], n2[0+1], n4[3+1], n3[1+1], n3[2+1], n3[3+1], n4[4+1], n4[5+1], n2[1+1], n4[6+1], n4[7+1], n4[8+1], n2[2+1], n4[9+1], n2[3+1], n2[4+1], n2[5+1], v[3+1], n4[10+1], v[4+1], n2[6+1], v[5+1], n4[11+1], n3[4+1], n3[5+1], n3[6+1])

MsgBox % result

shuffleArray(array){
    count:=array.Count()
    if(count<=1){
        return
    }
    i=1
    for k in array{
        Random, exchangeIndex, i, count
        temp := array[i]
        array[i] := array[exchangeIndex]
        array[exchangeIndex] := temp
        i++
    }
}