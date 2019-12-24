package com.yyj.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @Author yyj
 * @Version 1.0
 * @Company 东方标准
 * @Date 2019/12/19 17:25
 * @Description
 */

/***
 * spring整合服务处、事务的配置
 * 1.配置事务管理器
 * 2.开启事务注解支持
 * 3.在服务层方法或类上添加事务注解
 * 由spring的注解配置通过aop切入事务的方式叫声明式事务，自己管理事务的api叫编程式事务
 */

@Configuration
@ComponentScan(basePackages = "com.yyj.service")    //开启包扫描，扫描服务层
//2.开启事务注解支持
@EnableTransactionManagement
public class SpringTransactionConfig {

//    1.配置事务管理器 DataSourceTransactionManager该事务管理器是提供给jdbc和mybatis使用的对象
    @Bean
    public DataSourceTransactionManager getTransactionManager(DruidDataSource druidDataSource) {
       return new DataSourceTransactionManager(druidDataSource);
    }
}
