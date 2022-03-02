package com.jonathandimawea.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jonathandimawea.dojosandninjas.models.Dojo;
import com.jonathandimawea.dojosandninjas.models.Ninja;
import com.jonathandimawea.dojosandninjas.repositories.DojoRepository;
import com.jonathandimawea.dojosandninjas.repositories.NinjaRepository;

@Service
public class MainService {

	@Autowired
	private DojoRepository dojoRepo;
	
	@Autowired
	private NinjaRepository ninjaRepo;
	
	// create dojos
	public Dojo saveDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	// create ninjas
	public Ninja saveNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	// find all dojos
	public List<Dojo> allDojos() {
		return dojoRepo.findAll();
	}
	
	// find all ninjas
	public List<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}
	
	// find one dojo
	public Dojo oneDojo(Long dojoId) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(dojoId);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}else {
			return null;
		}
	}
	
}
