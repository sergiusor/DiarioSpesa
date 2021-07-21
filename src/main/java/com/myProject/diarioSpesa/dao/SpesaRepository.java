package com.myProject.diarioSpesa.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.myProject.diarioSpesa.model.Spesa;

public interface SpesaRepository extends JpaRepository<Spesa, String>{

	@Query("select s from Spesa s")
	public List<Spesa> getSpesaTest();

	@Query("select s from Spesa s where s.prezzo >= 0")
	public List<Spesa> getCercaPrezzo();

}