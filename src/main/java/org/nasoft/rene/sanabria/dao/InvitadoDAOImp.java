package org.nasoft.rene.sanabria.dao;

import org.hibernate.SessionFactory;
import org.nasoft.rene.sanabria.model.Invitado;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InvitadoDAOImp implements InvitadoDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addInvitado(Invitado inv) {
		this.sessionFactory.getCurrentSession().save(inv);
	}

}
