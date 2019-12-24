package com.yyj.service;

import com.yyj.entity.User;

import java.util.List;

public interface UserService {

    List<User> selectAll();

    /***
     * 模拟插入两条数据，发生异常后事务回滚
     */
    int insertBatch(User user);
}
