package com.yyj.service.impl;

import com.yyj.entity.User;
import com.yyj.mapper.UserMapper;
import com.yyj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author yyj
 * @Version 1.0
 * @Company 东方标准
 * @Date 2019/12/19 17:24
 * @Description
 */

@Service
//3.在服务层方法或类上添加事务注解
@Transactional          //spring管理当前类下所有方法 以方法为单位开启事务
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> selectAll() {
        return userMapper.selectAll();
    }

    @Override
    /***
     * 模拟插入两条数据，发生异常后事务回滚
     */
    public int insertBatch(User user) {
        int i = 0;
        i += userMapper.insert(user);
        //模拟异常
        String str = null;
        str.length();
        i += userMapper.insert(user);
        return i;
    }
}
