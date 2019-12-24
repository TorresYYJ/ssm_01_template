package com.yyj.controller;

import com.yyj.entity.User;
import com.yyj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author yyj
 * @Version 1.0
 * @Company 东方标准
 * @Date 2019/12/19 19:07
 * @Description
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    UserService userService;


    @RequestMapping("toList")
    @ResponseBody
    public List<User> toList() {
        return userService.selectAll();
    }

}
