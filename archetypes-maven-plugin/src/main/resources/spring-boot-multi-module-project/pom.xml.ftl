<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <parent>
        <groupId>app.myoss.cloud</groupId>
        <artifactId>myoss-spring-boot-parent</artifactId>
        <version>${myossSpringBootParentReleaseVersion}</version>
    </parent>

<#if groupId != 'app.myoss.cloud'>
    <groupId>${groupId}</groupId>
</#if>
    <artifactId>${artifactId}</artifactId>
    <name>${artifactId}</name>
    <version>${version}</version>
    <packaging>pom</packaging>

    <properties>
        <${artifactId}.version>${version}</${artifactId}.version>
    </properties>

    <modules>
    <#list modules as module>
        <module>${module.name}</module>
    </#list>
    </modules>

    <dependencies>
        <!-- myoss cloud dependencies start -->
        <dependency>
            <groupId>app.myoss.cloud.boot</groupId>
            <artifactId>myoss-starter-core</artifactId>
        </dependency>
        <#if (configuration.useMybatis!false) != true><!--</#if><dependency>
            <groupId>app.myoss.cloud.mybatis</groupId>
            <artifactId>myoss-mybatis</artifactId>
        </dependency><#if (configuration.useMybatis!false) != true>--></#if>
        <!-- myoss cloud dependencies end -->
    </dependencies>

    <dependencyManagement>
        <dependencies>
<#list modules as module>
    <#if module.moduleType != "spring-boot">
            <dependency>
                <groupId>${groupId}</groupId>
                <artifactId>${module.name}</artifactId>
                <version>${r"${"}${artifactId}.version${r"}"}</version>
            </dependency>
    </#if>
</#list>
        </dependencies>
    </dependencyManagement>
</project>