package com.restapi.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/soft")
public class MyController {

	@GetMapping("/working")
	public String  getObject()
	{
		return "MyController";
	}
	
}
