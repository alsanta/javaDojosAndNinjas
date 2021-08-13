package com.Santana.dodosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Santana.dodosandninjas.models.Dojo;
import com.Santana.dodosandninjas.models.Ninja;
import com.Santana.dodosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
//	----------------MemberVariable-------------------//
	
	private final DojoRepository dojoRepository;
	
//	----------------MemberVariable End--------------//
	
//	Constructor
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;	
	}
	
	
//	---------------Methods--------------------------//
	public List<Dojo> getAllDojos(){
		return (List<Dojo>)this.dojoRepository.findAll();
	}
	
	public Dojo createDojo(Dojo d) {
		return this.dojoRepository.save(d);
	}
	
	public Dojo dojoById(Long id){
		return this.dojoRepository.findById(id).orElse(null);
	}
	
//	---------------Method End----------------------//
}
