FROM python:3.8

ENV TZ=Europe/Vienna

RUN apt-get -y update && apt-get -y upgrade && \
	apt-get install -y cron \
	                   unixodbc-dev \
	                   odbcinst1debian2 \
	                   odbcinst \
	                   libodbc1 \
	                   unixodbc \
	                   gcc-multilib && \
	apt-get autoremove -y

RUN mkdir /app

WORKDIR /app

RUN pip3 install --no-cache-dir pyodbc
    
COPY Zen-Client-linux-x86_64-*.tar.gz /zen.tgz
COPY etc/* /etc/

RUN tar -C /usr/local -xf /zen.tgz && \
    bash /usr/local/actianzen/etc/clientpreinstall.sh && \
    bash /usr/local/actianzen/etc/clientpostinstall.sh && \
    rm -f /zen.tgz

ENV LD_LIBRARY_PATH=/usr/local/actianzen/lib64/

CMD ["nologin"]
