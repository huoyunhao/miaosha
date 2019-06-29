package com.loop.miaosha.controller;

import com.loop.miaosha.redis.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.loop.miaosha.service.MiaoshaUserService;

/**
 * 测试
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	MiaoshaUserService userService;
	
	@Autowired
    RedisService redisService;

}
