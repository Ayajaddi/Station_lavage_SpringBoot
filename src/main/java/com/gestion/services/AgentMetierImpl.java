package com.gestion.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gestion.Repository.AgentRepository;
import com.gestion.models.Agent;

@Service
public class AgentMetierImpl {
	@Autowired
	private AgentRepository agentRepository;
	
	public Agent fetchAgentdByLoginAndPassword(String login,String password){
		return agentRepository.findByLoginAndPassword(login,password);
		 
		
	}

}
