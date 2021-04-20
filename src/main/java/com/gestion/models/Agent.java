package com.gestion.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "agent")
public class Agent implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	  private Long idAgent;
	  private String nomAgent;
	  private String login;
	  private String password;
	public Long getIdAgent() {
		return idAgent;
	}
	public void setIdAgent(Long idAgent) {
		this.idAgent = idAgent;
	}
	public String getNomAgent() {
		return nomAgent;
	}
	public void setNomAgent(String nomAgent) {
		this.nomAgent = nomAgent;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Agent(Long idAgent, String nomAgent, String login, String password) {
		super();
		this.idAgent = idAgent;
		this.nomAgent = nomAgent;
		this.login = login;
		this.password = password;
	}
	public Agent() {
		super();
		// TODO Auto-generated constructor stub
	}
	  
	  
}
