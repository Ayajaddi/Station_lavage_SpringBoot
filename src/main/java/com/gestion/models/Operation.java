package com.gestion.models;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "operation")
public class Operation  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codeOperation;
	private String nomOperation;
	private Date dateOperation;
	private double prixOperation;
	
	
	@ManyToOne
	@JoinColumn(name="CODE_agence")
	private Agence agence;
	
	
	@ManyToMany
	@JoinTable(name="OPERATION_BUS",joinColumns=
	@JoinColumn(name="MATRICULE"),
	inverseJoinColumns=@JoinColumn(name="CODE_OPERATION"))
	private Collection<Bus> bus;


	public Long getCodeOperation() {
		return codeOperation;
	}


	public void setCodeOperation(Long codeOperation) {
		this.codeOperation = codeOperation;
	}


	public String getNomOperation() {
		return nomOperation;
	}


	public void setNomOperation(String nomOperation) {
		this.nomOperation = nomOperation;
	}


	public Date getDateOperation() {
		return dateOperation;
	}


	public void setDateOperation(Date dateOperation) {
		this.dateOperation = dateOperation;
	}


	public double getPrixOperation() {
		return prixOperation;
	}


	public void setPrixOperation(double prixOperation) {
		this.prixOperation = prixOperation;
	}


	public Agence getAgence() {
		return agence;
	}


	public void setAgence(Agence agence) {
		this.agence = agence;
	}


	public Collection<Bus> getBus() {
		return bus;
	}


	public void setBus(Collection<Bus> bus) {
		this.bus = bus;
	}


	public Operation(Long codeOperation, String nomOperation, Date dateOperation, double prixOperation, Agence agence,
			Collection<Bus> bus) {
		super();
		this.codeOperation = codeOperation;
		this.nomOperation = nomOperation;
		this.dateOperation = dateOperation;
		this.prixOperation = prixOperation;
		this.agence = agence;
		this.bus = bus;
	}


	public Operation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	/*private Collection<Bus> lesBus;
	private String nomAgence;
	private String matricule;
	private String type;*/
	
}
