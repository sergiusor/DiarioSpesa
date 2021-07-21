package com.myProject.diarioSpesa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myProject.diarioSpesa.dao.SpesaRepository;
import com.myProject.diarioSpesa.model.Spesa;

@Service
public class SpesaService {

	@Autowired
	Spesa spesa;
	@Autowired
	SpesaRepository spesaRepo;

	public List<Spesa> spesaTest () {
		return spesaRepo.getSpesaTest();
	}

	public List<Spesa> cercaPrezzo() {
		return spesaRepo.getCercaPrezzo();
	}
	
public void salvaSpesaService(String nome, String categoria, String note, double prezzo) {
	spesa.setNome(nome);
	spesa.setCategoria(categoria);
	spesa.setNote(note);
	spesa.setPrezzo(prezzo);

	spesaRepo.save(spesa);
}

}