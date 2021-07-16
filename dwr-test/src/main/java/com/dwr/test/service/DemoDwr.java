package com.dwr.test.service;

import java.util.LinkedList;
import java.util.List;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.stereotype.Service;

@Service
@RemoteProxy // The annotation of spring is equivalent to exposing the service
public class DemoDwr {
    
   @RemoteMethod
   public String hello(){
       return "hello  dada " ;
   }
   @RemoteMethod
   public String echo(String  string){
       return "hello   " + string ;
   }
   
   @RemoteMethod
   public List<String> getOptionList(){
       List<String> option = new LinkedList<>();
       for(int i=0;i<5;i++)
    	   option.add("field_"+i);
	   return option;
   }
}
