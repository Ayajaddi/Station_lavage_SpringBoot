package com.gestion.models;



import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;









@Entity
@Table(name = "agence")
public class Agence implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long codeAgence;
	 private String nomAgence;
	
	 
	
	 @OneToMany(mappedBy="agence",fetch = FetchType.LAZY)
		private Collection<Bus> bus;
		
	 @OneToMany(mappedBy="agence",fetch = FetchType.LAZY)
		private Collection<Operation> operation;

	public Long getCodeAgence() {
		return codeAgence;
	}

	public void setCodeAgence(Long codeAgence) {
		this.codeAgence = codeAgence;
	}

	public String getNomAgence() {
		return nomAgence;
	}

	public void setNomAgence(String nomAgence) {
		this.nomAgence = nomAgence;
	}

	public Collection<Bus> getBus() {
		return bus;
	}

	public void setBus(Collection<Bus> bus) {
		this.bus = bus;
	}

	public Collection<Operation> getOperation() {
		return operation;
	}

	public void setOperation(Collection<Operation> operation) {
		this.operation = operation;
	}

	public Agence(Long codeAgence, String nomAgence, Collection<Bus> bus, Collection<Operation> operation) {
		super();
		this.codeAgence = codeAgence;
		this.nomAgence = nomAgence;
		this.bus = bus;
		this.operation = operation;
	}

	public Agence() {
		super();
		// TODO Auto-generated constructor stub
	}

	 
	 
	/* @JoinTable(name="AGENCE_BUS",joinColumns=
		@JoinColumn(name="MATRICULE"),
		inverseJoinColumns=@JoinColumn(name="CODE_AGENCE"))
		private Collection<Bus> bus;*/
		
		

	
		
	 /*private Collection<Bus> lesBus;
	 private String matricule;
	 private String typeVehicule;
	 private String nomOperation;
	 private double prixOperation;
	 */
	 
	// @OneToMany(mappedBy="client",fetch = FetchType.LAZY)
	//	private Collection<Compte> comptes;
	
	 
	 
	
}
