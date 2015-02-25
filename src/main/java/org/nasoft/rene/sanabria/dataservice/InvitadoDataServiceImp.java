package org.nasoft.rene.sanabria.dataservice;

import org.nasoft.rene.sanabria.dao.InvitadoDAO;
import org.nasoft.rene.sanabria.model.Invitado;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class InvitadoDataServiceImp implements InvitadoDataService{
	
	@Autowired
    private InvitadoDAO invitadoDAO;
	
	@Transactional
	public void addInvitado(Invitado inv) {
		invitadoDAO.addInvitado(inv);
	}

}
