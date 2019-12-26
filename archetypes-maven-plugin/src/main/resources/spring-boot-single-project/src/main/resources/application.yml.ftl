server:
  port: 8080

spring:
  main:
    banner-mode: log
  profiles:
    active: ${r"${DEPLOY_ENV}"}
  http:
    encoding:
      force: true
      enabled: true

<#if configuration.useMybatis>
mybatis:
  mapper-locations: classpath*:mybatis/**/*Mapper.xml
  mapper-scanner:
    base-package: ${package}.component.mybatis

</#if>
myoss-cloud:
  ok-http3:
    connection-pool:
      enabled: true
      connect-timeout: 5000
      read-timeout: 5000
