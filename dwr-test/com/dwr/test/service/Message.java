package com.dwr.test.service;

import java.util.LinkedList;
import java.util.List;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.stereotype.Service;

@Service
@RemoteProxy // remote proxy annotation is equivalent to exposing the service
public class Message {
	@RemoteMethod
	public String getMessage() {
		return "Hello message from::->>" + getRandomGene();
	}

	private double getRandomGene() {
		return Math.random();

	}

	@RemoteMethod
	public List<String> getOptionList() {
		List<String> option = new LinkedList<>();
		for (int i = 0; i < 5; i++)
			option.add("field_" + i);
		return option;
	}
}
