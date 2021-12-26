# SpringBoot MariaDB Sample

## 실행 환경
| 항목 | 버전 |
|:---|:---|
| springboot | 2.2.3 |  
| maven | 2.2.3 | 
| myBatis | 1.3.0 |

## DB 정보
| 항목 | 내용 |
|:---|:---|
| DB | MariaDB |  
| version | 10.8.0 |  
| port | 13306 |  
| database | tutorial | 
| table | tutorial |

### 테이블(tutorial)
| Field | Type | Null | Key | Default | Extra  |
|:---|:---|:---|:---|:---|:---|
| SeqNo          | int(11)     | NO   | PRI | NULL | auto_increment |
| Title          | varchar(20) | NO   |     | NULL |                |
| Author         | varchar(20) | NO   |     | NULL |                |
| Price          | double      | NO   |     | 0    |                |
| published_date | date        | NO   |     | NULL |                |

## 실행
```
./mnw spring-boot:run  
```

## 접속
http://localhost:8080/books

### 정상 동작 화면
![localhost-8080-books.png](./img/localhost-8080-books.png)  
#### 실행 로그
```powershell
PS C:\workspace\SpringBootMariaDB> ./mvnw spring-boot:run

[INFO] Scanning for projects...
[INFO] 
[INFO] --------------------< com.example:SpringBootSample >--------------------
[INFO] Building SpringBootSample 0.0.1-SNAPSHOT
[INFO] --------------------------------[ war ]---------------------------------
[INFO] 
[INFO] >>> spring-boot-maven-plugin:2.2.3.RELEASE:run (default-cli) > test-compile @ SpringBootSample >>>
[INFO] 
[INFO] --- maven-resources-plugin:3.1.0:resources (default-resources) @ SpringBootSample ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] Copying 1 resource
[INFO] Copying 1 resource
[INFO]
[INFO] --- maven-compiler-plugin:3.8.1:compile (default-compile) @ SpringBootSample ---
[INFO] Nothing to compile - all classes are up to date
[INFO]
[INFO] --- maven-resources-plugin:3.1.0:testResources (default-testResources) @ SpringBootSample ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] skip non existing resourceDirectory C:\workspace\SpringBootMariaDB\src\test\resources
[INFO]
[INFO] --- maven-compiler-plugin:3.8.1:testCompile (default-testCompile) @ SpringBootSample ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] <<< spring-boot-maven-plugin:2.2.3.RELEASE:run (default-cli) < test-compile @ SpringBootSample <<<
[INFO]
[INFO]
[INFO] --- spring-boot-maven-plugin:2.2.3.RELEASE:run (default-cli) @ SpringBootSample ---
[INFO] Attaching agents: []

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.2.3.RELEASE)

2021-12-26 11:38:31.236  INFO 2640 --- [           main] c.e.demo.SpringBootSampleApplication     : Starting SpringBootSampleApplication on DESKTOP-QR555PR with PID 2640 (C:\workspace\SpringBootMariaDB\target\classes started by taeey in C:\workspace\SpringBootMariaDB)
2021-12-26 11:38:31.239  INFO 2640 --- [           main] c.e.demo.SpringBootSampleApplication     : No active profile set, falling back to default profiles: default
2021-12-26 11:38:32.499  INFO 2640 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2021-12-26 11:38:32.506  INFO 2640 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2021-12-26 11:38:32.506  INFO 2640 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.30]
2021-12-26 11:38:32.664  INFO 2640 --- [           main] org.apache.jasper.servlet.TldScanner     : At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
2021-12-26 11:38:32.672  INFO 2640 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2021-12-26 11:38:32.672  INFO 2640 --- [           main] o.s.web.context.ContextLoader            : Root WebApplicationContext: initialization completed in 1409 ms
2021-12-26 11:38:32.863  INFO 2640 --- [           main] o.s.s.concurrent.ThreadPoolTaskExecutor  : Initializing ExecutorService 'applicationTaskExecutor'
2021-12-26 11:38:32.967  INFO 2640 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2021-12-26 11:38:32.970  INFO 2640 --- [           main] c.e.demo.SpringBootSampleApplication     : Started SpringBootSampleApplication in 1.976 seconds (JVM running for 2.249)
2021-12-26 11:38:34.559  INFO 2640 --- [nio-8080-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
2021-12-26 11:38:34.560  INFO 2640 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
2021-12-26 11:38:34.564  INFO 2640 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 4 ms
2021-12-26 11:38:34.587  INFO 2640 --- [nio-8080-exec-1] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Starting...
2021-12-26 11:38:34.619  INFO 2640 --- [nio-8080-exec-1] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Start completed.
WARNING: An illegal reflective access operation has occurred
WARNING: Illegal reflective access by org.apache.ibatis.reflection.Reflector (file:/C:/Users/taeey/.m2/repository/org/mybatis/mybatis/3.4.1/mybatis-3.4.1.jar) to method java.lang.Object.finalize()
WARNING: Please consider reporting this to the maintainers of org.apache.ibatis.reflection.Reflector
WARNING: Use --illegal-access=warn to enable warnings of further illegal reflective access operations
WARNING: All illegal access operations will be denied in a future release
2021-12-26 11:38:35.642  WARN 2640 --- [nio-8080-exec-1] o.a.c.util.SessionIdGeneratorBase        : Creation of SecureRandom instance for session ID generation using [SHA1PRNG] took [690] milliseconds.
```

### 오류 화면(MariaDB 가 Running 되지 않을 경우)
![error-connection-refused-mariadb.png](./img/error-connection-refused-mariadb.png)  