package com.gestion.services;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.gestion.Repository.AgenceRepository;
import com.gestion.models.Agence;




@Service

public class AgenceMetierImpl implements AgenceMetier {
@Autowired
	private AgenceRepository agenceRepository;

@Override
public Agence saveAgence(Agence a) {
	return agenceRepository.save(a) ;

}

/*@Override
public List<Agence> consulterListAgence() {
	
	return agenceRepository.findAll();

}

@Override
public List<Agence> getAllAgence() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Agence getAgenceByMatricule(Long matricule) {
	// TODO Auto-generated method stub
	return null;
}*/
	

	

	
}
