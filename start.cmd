@echo off

call c:\rabbitmq\sbin\rabbitmq-plugins.bat enable rabbitmq_management --offline
call c:\rabbitmq\sbin\rabbitmq-server.bat
