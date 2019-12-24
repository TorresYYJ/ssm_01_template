package com.yyj.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.apache.ibatis.logging.log4j2.Log4j2Impl;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @Author yyj
 * @Version 1.0
 * @Company 东方标准
 * @Date 2019/12/19 16:40
 * @Description
 */

/**
 * spring与mybatis整合配置
 * 1.数据源配置
 * 2.SqlSessionFactoryBean配置，配置mybatis总配置，该组件可以提供sqlSession对象
 * 3.开启扫描mapper接口，自动创建代理子类
 */
/**
 * spring整合日志
 * 1.导入log4j2和slf4j依赖
 * 2.在resource配置log4j2.xml
 * 3.在mybatis的configuration设置使用log4j2的日志
 */
@Configuration
@MapperScan(basePackages = "com.yyj.mapper")
@Import(SpringTransactionConfig.class)  //引入别的spring注解配置类
public class SpringMybatisConfig {

    @Bean
    public DruidDataSource getDataSource() {
        DruidDataSource druidDataSource = new DruidDataSource();
        InputStream is = SpringMybatisConfig.class.getClassLoader().getResourceAsStream("db.properties");
        Properties properties = new Properties();
        try {
            properties.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
        druidDataSource.configFromPropety(properties);  //自动参数配置 进入DruidDataSource可知默认参数都是druid.xxx 所以db.properties文件要修改
        return druidDataSource;
    }

    /***
     * 替代原mybatis总配置文件，用于读取数据源获取一个连接会话对象的工厂bean
     */
    @Bean
    public SqlSessionFactoryBean getFactoryBean(DruidDataSource druidDataSource) {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(druidDataSource);   //设置数据源
        org.apache.ibatis.session.Configuration configuration = new org.apache.ibatis.session.Configuration();
        configuration.setMapUnderscoreToCamelCase(true);    //设置支持驼峰命名
        configuration.setLogImpl(Log4j2Impl.class);     //设置使用log4j2日志输出
        sqlSessionFactoryBean.setConfiguration(configuration);
        return sqlSessionFactoryBean;
    }

}
