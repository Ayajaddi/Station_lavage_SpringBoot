package com.gestion.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gestion.models.Agent;
import com.gestion.services.AgentMetierImpl;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api")
public class AgentController {
	 @Autowired
		private AgentMetierImpl agentMetierImpl;
	
	 
	 @PostMapping("/login")
	 public Agent loginAgent(@RequestBody Agent agent) throws Exception{
			 
			 

			 String login =agent.getLogin();
			 String password =agent.getPassword();
			 Agent agentObj=null;
			
			 
			 if(login!=null  && password!=null){
				
				agentObj=agentMetierImpl.fetchAgentdByLoginAndPassword(login, password);
			 }
			 if(agentObj==null){
				 throw new Exception("incorrecte");
			 
			 }
			 return agentObj;
			 
			 }
			 
			
	 
	 
}

	 /* public String login(@ModelAtrtibute("agent")Agent agent){
		Agent oauthAgent=agentMetierImpl.login(agent.getLogin(),agent.getPassword());
		 System.out.print(oauthAgent);
		 if(Objects.nonNull(oauthAgent)){
			 return "redirect:/";
		 }
		 
		 else{
			 return "redirect:/login";
		 }
	 }
	 */