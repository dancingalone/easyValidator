@echo off
title p2227���Ƶ�JSѹ�����ߣ�����YUI
cd %~dp0

REM p2227���Ƶ�JSѹ�����ߣ�����YUI
REM ���û���:j java bin��Ŀ¼��ֻ��װmyeclipse�Ļ���Ĭ���ǲ���������PATH�е�
REM ���û���:y YUIcompressor��Ŀ¼
REM ���û���:p ѹ����Դ��Ŀ¼
REM ���û���:f �����ļ���
REM ���û���:t ��ʱ�ļ�����һ�㲻��Ҫ���ã�


set j=E:\Genuitec\Common\binary\com.sun.java.jdk.win32.x86_1.6.0.013\bin\
set y=F:\Program\Solutions\YUI\yuicompressor-2.4.8.jar
set p=F:\Program\MyTest\easyValidator\src
set n=easyValidator.min.js
set t=p2227temp.js

for /f %%i in ('dir %p%\*.js /od /b') do type %p%\%%i>>%t%

%j%java -jar %y% --type js --charset utf-8 -v %t% > %n%

del %t%