package com.myProject.diarioSpesa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myProject.diarioSpesa.model.Spesa;
import com.myProject.diarioSpesa.service.SpesaService;

@Controller
public class SpesaController {

	@Autowired
	SpesaService spesaServ;

@RequestMapping("/home_spesa")
public ModelAndView goSpesa() {
	List<Spesa> datiSpesa;
	datiSpesa = spesaServ.spesaTest();

	ModelAndView mv = new ModelAndView();
	mv.addObject("datiSpesa", datiSpesa);
	mv.setViewName("home_spesa");
	return mv;
}

@RequestMapping("/salvaSpesa")
public ModelAndView salvaSpesa(String nome, String categoria, String note, double prezzo) {
spesaServ.salvaSpesaService(nome, categoria, note, prezzo);
 return goSpesa();	
}

@RequestMapping("/stampaPrezzo")
public List<Spesa> stampaPrezzo() {
	List<Spesa> listaPrezzi;
	listaPrezzi = spesaServ.cercaPrezzo();
	
	double totale = 0.00;

	for( Spesa s : listaPrezzi ) {
		totale = totale + s.getPrezzo();
	}

	System.out.println(" il totale complessivo è: "+ totale);

	return listaPrezzi;
}

}