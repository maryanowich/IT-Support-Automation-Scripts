@echo off
echo Checking network connectivity...
set timestamp=%date:~-4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
set timestamp=%timestamp: =0%
set log_file=ping_log_%timestamp%.txt

:: Ping Gateway
echo Pinging Gateway... >> %log_file%
ping 192.168.1.1 >> %log_file%

:: Ping DNS Server
echo Pinging DNS Server... >> %log_file%
ping 8.8.8.8 >> %log_file%

:: Ping Google
echo Pinging Google... >> %log_file%
ping www.google.com >> %log_file%

echo Network check completed. Log saved to %log_file%.
pause
