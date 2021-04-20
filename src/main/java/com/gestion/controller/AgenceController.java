package com.gestion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gestion.models.Agence;

import com.gestion.services.AgenceMetierImpl;


@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api")
public class AgenceController {
	 
	 @Autowired
		private AgenceMetierImpl agenceMetierImpl;

		@RequestMapping(value="/agences",method=RequestMethod.POST)
		public Agence saveAgence(@RequestBody Agence a) {
			return agenceMetierImpl.saveAgence(a);
			
		}
}
