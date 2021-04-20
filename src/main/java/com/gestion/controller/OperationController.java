package com.gestion.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gestion.models.Operation;

import com.gestion.services.OperationMetierImpl;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api")
public class OperationController {

	@Autowired
	private OperationMetierImpl  operationMetierImpl ;

	@RequestMapping(value="/operations",method=RequestMethod.POST)
	public Operation saveOperation(@RequestBody Operation o) {
		return operationMetierImpl .saveOperation(o);
		
	}
	
	
	@RequestMapping(value="/operations/{matricule}", method=RequestMethod.GET)
	public List<Operation> getOperationByBus(@PathVariable Long matricule) 
	{
		return operationMetierImpl .getOperationByBus(matricule);
		
	}
	@RequestMapping(value="/operations/{dateOperation}", method=RequestMethod.GET)
	public List<Operation> getOperationByDate(@PathVariable Date dateOperation) 
	{
		return operationMetierImpl .getOperationByDate( dateOperation);
		
		
	}
}
