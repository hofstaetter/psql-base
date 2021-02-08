
# psql-base

Docker Image um mit Pervasive SQL zu arbeiten. Benötigt noch den Actian Zen PSQL Linux-Client als `Zen-Client-linux-x86_64-*.tar.gz`. Download via [esd.actian.com](https://esd.actian.com/):

 - Product: Actian Zen (PSQL)
 - Release: Latest (tested with V14 SP2 Production)
 - Platform: Linux x86 64-bit
 
 Anschlißend die `.tar.gz` Datei in das Verzeichniss des Dockerfiles kopieren und das Image builden.
 
## Building
 
```
cd psql-base
docker build . --tag psql-base

```
