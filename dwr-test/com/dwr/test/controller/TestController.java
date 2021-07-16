package com.dwr.test.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/api/v0")
public class TestController {
   
	private String message = "Hello World";

	@RequestMapping("/")
    public String welcome(Map<String, Object> model) {
        model.put("message", this.message);
        return "test";
    }
}
