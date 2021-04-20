package com.gestion.services;



import java.util.Collection;
import java.util.Date;
import java.util.List;


import com.gestion.models.Operation;



public interface OperationMetier {
	
	  public Operation saveOperation(Operation o);
	  public Collection<Operation> getOperationByBus(Long matricule );
	  //public Optional<Operation> getOperation(Date dateOperation);
	 
	  public List<Operation> getOperationByDate(Date dateOperation);
	  //public String getBusByOperation(Long codeOperation);
}
