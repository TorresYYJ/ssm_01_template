package com.yyj.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * @Author yyj
 * @Version 1.0
 * @Company 东方标准
 * @Date 2019/12/19 18:37
 * @Description
 */

/***
 * 1.配置静态资源放行
 * 2.配置自定义视图
 * 3.开启包扫描Controller层
 * 4.开启springmvc注解支持@EnableWebMvc
 * WebMvcConfigurer该接口声明了springmvc的默认配置方法，当springmvc启动时会自动调用这些接口的方法来实现对springmvc的配置
 */
@Configuration
@ComponentScan(basePackages = "com.yyj.controller")
@EnableWebMvc
public class SpringMvcConfig implements WebMvcConfigurer {

    //配置静态资源放行
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();    //开启默认mvc-default-servlet-default
    }

    @Bean
    public InternalResourceViewResolver getViewResolver() {
        return new InternalResourceViewResolver("/",".jsp");
    }


}
