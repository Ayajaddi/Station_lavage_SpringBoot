package com.gestion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gestion.models.Agent;
@Repository
public interface AgentRepository extends JpaRepository<Agent, Long> {

	public Agent findByLoginAndPassword(String login, String password);

}
