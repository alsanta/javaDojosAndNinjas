package com.Santana.dodosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Santana.dodosandninjas.models.Ninja;
import com.Santana.dodosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
//	----------------MemberVariable-------------------//
	
	private final NinjaRepository ninjaRepository;

//	----------------MemberVariable End--------------//

//Constructor
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
//	---------------Methods--------------------------//
	public Ninja createNinja(Ninja j) {
		return this.ninjaRepository.save(j);
	}
	
//	---------------Method End----------------------//
}
