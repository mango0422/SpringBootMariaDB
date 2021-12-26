# [Spring Boot](https://spring.io/)
- 스프링 프레임워크 기반 프로젝트를 복잡한 설정없이 쉽고 빠르게 만들어주는 라이브러리
- Microservices, Reactive, Cloud, Web apps, Serverless, Event Driven, Batch

## 특징
### 기본설정이 되어있는 starter 컴포너트를 제공(Library 관리의 자동화)
- spring boot 의 Starter 라이브러리를 등록해서 라이브러리 의존성을 간단하게 관리할 수 있음

### Library 버전 자동 관리
- pom.xml에 스프링 부트 버전을 입력하면 스프링 라이브러리 뿐만 아니라 서드 파티 라이브러리들도 호환되는 버전으로 알아서 다운함

### 설정의 자동화
- spring boot 는 @EnableAutoConfiguration 어노테이션을 선언해서 spring 에서 자주 사용 했던 설정들을 알아서 등록해줌

### 내장 Tomcat
- 내장 Tomcat 를 사용하려면 특별한 설정없이 Web Starter 의존성을 추가하면 됨
  ```
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-web</artifactId>
		</dependency>
  ```

### 독립적으로 실행 가능한 Spring Application 을 생성함(JAR)
- 웹 프로젝트라면 WAR 파일로 패키징해야하지만 spring boot 는 내장 톰캣을 지원하기 때문에 JAR 파일로 패키징해서 웹 애플리케이션을 실행시킬 수 있음

### 사용화에 필요한 통계, 상태 체크, 외부 설정 등을 제공
### 설정을 위한 XML 코드를 생성하거나 요구하지 않음

## SpringController Annotation
### @Controller
- 적용된 클래스는 "Controller"임을 나타나고, bean으로 등록되며 해당 클래스가 Controller로 사용됨을 Spring Framework에 알림

### @RequestMapping
- 선언된 클래스의 모든 메소드가 하나의 요청에 대한 처리를 할경우 사용함

### @RestController
- @Controller + @ResponseBody 
- 메소드의 return(반환 결과값)을 문자열(JSON) 형태로 반환
- 리턴을 view 페이지 대신 saveInfo 라는 객체를 JSON 형태로 변환한 데이터를 반환

### @ResponseBody
- 메소드에서 리턴되는 값은 View 를 통해서 출력되지 않고 HTTP Response Body 에 직접 쓰여지게 됨
- 쓰여지기 전에 리턴되는 데이터 타입에 따라 MessageConverter 에서 변환이 이뤄진 후 쓰여지게 됨

### @Autowired
- org.springframework.beans.factory.annotation.Autowired
- 필요한 의존 객체의 "Type"에 해당하는 Bean 을 찾아 주입

