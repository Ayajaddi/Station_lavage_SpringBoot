package com.gestion.services;


import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.gestion.Repository.OperationRepository;
import com.gestion.models.Operation;





@Service

public class OperationMetierImpl implements OperationMetier {
@Autowired
	private OperationRepository  operationRepository;

@Override
public Operation saveOperation(Operation o) {
	return operationRepository.save(o) ;

	
}

@Override
public List<Operation> getOperationByBus(Long matricule) {
	return operationRepository.getOperationByBus(matricule);


}



@Override
public List<Operation> getOperationByDate(Date dateOperation) {
	// TODO Auto-generated method stub
	return operationRepository.getOperationByDate(dateOperation);
}




}
