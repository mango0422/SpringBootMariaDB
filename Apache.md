# [Apache](https://httpd.apache.org/) [2.4.52](https://www.apachelounge.com/download/) 
- 정적인 데이터를 처리하는 웹서버

## Document Root 지정
- C:\Apache24
- conf/httpd.conf
  ```
  Define SRVROOT "C:\Apache24"
  
  ServerRoot "${SRVROOT}"
  .
  .
  .
  Listen 8080
  ```

## Tomcat 연동 설정(AJP 1.3)
### module/mod_jk.so 설치
- "mod_jk-1.2.48-win64-VS16.zip"를 풀어 mod_jk.so 를 module 디렉토리 밑에 위치한다.

### conf/workers.properties
```
worker.list=worker1
worker.worker1.type=ajp13
worker.worker1.host=localhost
worker.worker1.port=8009
```

### conf/httpd.conf
```
.
.
.
#mod_jk 모듈 설정
LoadModule jk_module modules/mod_jk.so
JkworkersFile conf/workers.properties
JkMount /* worker1
JkLogFile logs/mod_jk.log
JkLogLevel info
JkLogStampFormat "[%a %b %d %H:%M:%S %Y] "
JkRequestLogFormat "%w %V %T"
.
.
.
```

### conf/extra/httpd-vhosts.conf 
```
<VirtualHost *:8009>
    ServerAdmin admin
    DocumentRoot "C:/project/tools/apache-tomcat-8.5.51/webapps/프로젝트명"
    ErrorLog "logs/example-project-error.log"
    CustomLog "logs/example-project-access.log"
</VirtualHost>
```

### mod_jk.conf
```
Jk
```


## 서버 설치
```PowerShell
PS C:\Apache24\bin> ./httpd -k install
Installing the 'Apache2.4' service
The 'Apache2.4' service is successfully installed.
Testing httpd.conf....
Errors reported here must be corrected before the service can be started.
PS C:\Apache24\bin>                                                       
```

## 서버 제거
```PowerShell
PS C:\Apache24\bin>  ./httpd -k uninstall
Removing the 'Apache2.4' service
The 'Apache2.4' service has been removed successfully.
```

## 실행하기
- bin\ApacheMonitor.exe 를 관리자 권한으로 실행  

![ApacheMonitor.png](./img/ApacheMonitor.png)
![apache-초기화면.png](./img/apache-초기화면.png)
![services-apache-tomcat.png](./img/services-apache-tomcat.png)

