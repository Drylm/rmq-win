FROM microsoft/windowsservercore
MAINTAINER Jonathan Muller <jmuller@gsx.com>

ENV erlang_download_url="http://erlang.org/download/otp_win64_18.0.exe" \
    ERLANG_HOME=c:\\erlang

ENV RMQ_VERSION="3.5.4" \
    rabbit_download_url="https://www.rabbitmq.com/releases/rabbitmq-server/v3.5.4/rabbitmq-server-windows-3.5.4.zip"

# setup powershell options for RUN commands
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

# download and install erlang using silent install option, and remove installer when done
RUN Invoke-WebRequest -Uri $env:erlang_download_url -OutFile erlang_install.exe ; \
        Start-Process -Wait -FilePath .\erlang_install.exe -ArgumentList /S, /D=$env:ERLANG_HOME ; \
        Remove-Item -Force erlang_install.exe

# download and extract rabbitmq, and remove zip file when done
RUN Invoke-WebRequest -Uri $env:rabbit_download_url -OutFile rabbitmq.zip ; \
        Expand-Archive -Path .\rabbitmq.zip -DestinationPath "c:\\" ; \
        Remove-Item -Force rabbitmq.zip; \
        Rename-Item c:\rabbitmq_server-$env:RMQ_VERSION c:\rabbitmq

# tell rabbitmq where to find our custom config file
ENV RABBITMQ_CONFIG_FILE "c:\rabbitmq"
RUN ["cmd", "/c", "echo [{rabbit, [{loopback_users, []}]}].> c:\\rabbitmq.config"]

RUN mkdir C:\\Users\\ContainerAdministrator\\AppData\\Roaming\\RabbitMQ

# enable managment plugin
RUN c:\rabbitmq\sbin\rabbitmq-plugins.bat enable rabbitmq_management --offline

# run server when container starts - container will shutdown when this process ends
#CMD "c:\rabbitmq\sbin\rabbitmq-server.bat"