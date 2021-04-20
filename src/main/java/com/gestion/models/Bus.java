package com.gestion.models;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;







@Entity
@Table(name = "bus")
public class Bus implements Serializable  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	  private Long matricule;
	  private String typeVehicule;
	  
	  @ManyToOne
		@JoinColumn(name="CODE_agence")
		private Agence agence;
	  
	  @ManyToMany(mappedBy="bus")
	  private Collection<Operation> operations;
	 /* @ManyToMany(mappedBy="bus")
	  private Collection<Agence> agences;
	  */
	  /*@ManyToOne
		@JoinColumn(name="CODE_agence")
		private Agence agence;
	  private Collection<Operation>lesOperations;
	  private Agence agence;
	  private String nomAgence;
	  private String nomOperation;
	  private double prixOperation;*/

	public Long getMatricule() {
		return matricule;
	}

	public void setMatricule(Long matricule) {
		this.matricule = matricule;
	}

	public String getTypeVehicule() {
		return typeVehicule;
	}

	public void setTypeVehicule(String typeVehicule) {
		this.typeVehicule = typeVehicule;
	}

	public Agence getAgence() {
		return agence;
	}

	public void setAgence(Agence agence) {
		this.agence = agence;
	}

	public Collection<Operation> getOperations() {
		return operations;
	}

	public void setOperations(Collection<Operation> operations) {
		this.operations = operations;
	}

	public Bus(Long matricule, String typeVehicule, Agence agence, Collection<Operation> operations) {
		super();
		this.matricule = matricule;
		this.typeVehicule = typeVehicule;
		this.agence = agence;
		this.operations = operations;
	}

	public Bus() {
		super();
		// TODO Auto-generated constructor stub
	}
	


}
