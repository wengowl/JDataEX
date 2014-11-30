@echo off
echo 现在时间是%time:~0,2%点%time:~3,2%分%time:~6,2%秒
set time1=%time:~0,2%%time:~3,2%%time:~6,2%
java -jar "JDataEx Core.jar" 0 F:\公司\四川高院\testxml\非审判测试数据
echo 现在时间是%time:~0,2%点%time:~3,2%分%time:~6,2%秒
set time2=%time:~0,2%%time:~3,2%%time:~6,2%

set /a time3=%time2%-%time1%
echo 间隔%time3%秒
pause