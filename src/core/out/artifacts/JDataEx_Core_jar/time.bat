@echo off
echo ����ʱ����%time:~0,2%��%time:~3,2%��%time:~6,2%��
set time1=%time:~0,2%%time:~3,2%%time:~6,2%
java -jar "JDataEx Core.jar" 0 F:\��˾\�Ĵ���Ժ\testxml\�����в�������
echo ����ʱ����%time:~0,2%��%time:~3,2%��%time:~6,2%��
set time2=%time:~0,2%%time:~3,2%%time:~6,2%

set /a time3=%time2%-%time1%
echo ���%time3%��
pause