package org.nasoft.rene.sanabria.controllers;

import org.nasoft.rene.sanabria.dataservice.InvitadoDataService;
import org.nasoft.rene.sanabria.model.Invitado;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class MainController {
	
	@Autowired InvitadoDataService invitadoService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getHomePage(ModelMap model, @RequestParam(required=false) String id) {
		
		model.addAttribute("id", id);
		return "index";
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String getHomePage1(@RequestParam("nombre") String nombre, @RequestParam("email") String email,
			@RequestParam("idSha") String idSha) {
		Invitado inv = new Invitado();
		String id1 = idSha.equals(null) || idSha.equals("null") ? "idSHA no asignado" : idSha;
		inv.setNombre(nombre);
		inv.setEmail(email);
		inv.setIdSha1(id1);
		invitadoService.addInvitado(inv);
		return "registroOk";
	}
}
