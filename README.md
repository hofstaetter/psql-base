
# Pervasive SQL Base Image for python 3

Docker Image um via python 3 auf Pervasive SQL (Actian Zen SQL) zugreifen zu können. Benötigt noch den Actian Zen PSQL Linux-Client als `Zen-Client-linux-x86_64-*.tar.gz`. Download via [esd.actian.com](https://esd.actian.com/):

 - Product: Actian Zen (PSQL)
 - Release: Latest (tested with V14 SP2 Production)
 - Platform: Linux x86 64-bit
 
 Anschlißend die `.tar.gz` Datei in das Verzeichniss des Dockerfiles kopieren und das Image builden.
 
## Building
 
```
docker build psql-base/ --tag psql-base
```

## Connecting via pyodbc

```
pyodbc.connect("WINDOC_DSN=Driver={Pervasive ODBC Interface};DBQ=DOC;ServerName=10.0.0.1:1583")
```

Wobei `10.0.0.1` die IP des PSQL Servers ist und `1583` der Standardport.
